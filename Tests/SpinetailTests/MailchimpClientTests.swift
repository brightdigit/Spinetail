import Foundation
import OpenAPIRuntime
import SpinetailOpenAPI
import Testing

@testable import Spinetail

@Suite internal struct MailchimpClientTests {
  private static let listID = "list123"
  private static let campaignsPath = "/campaigns"
  private static let contentPath = "/campaigns/camp1/content"
  private static let apiKey = "abc123-us21"

  /// Builds a `MailchimpClient` whose generated client uses the supplied mock,
  /// with the Basic-auth middleware attached (matching production wiring).
  private func makeClient(_ transport: MockTransport) throws -> MailchimpClient {
    let generated = try Client(
      serverURL: MailchimpClient.serverURL(forAPIKey: Self.apiKey),
      transport: transport,
      middlewares: [AuthenticationMiddleware(apiKey: Self.apiKey)]
    )
    return MailchimpClient(client: generated)
  }

  /// The base URL host is derived from the API key's datacenter suffix.
  @Test internal func serverURLDerivedFromAPIKey() throws {
    let url = try MailchimpClient.serverURL(forAPIKey: "key-us21")
    #expect(url.absoluteString == "https://us21.api.mailchimp.com/3.0")
  }

  /// An API key with no datacenter suffix is rejected.
  @Test internal func serverURLRejectsKeyWithoutDatacenter() {
    #expect(throws: MailchimpClient.ClientError.invalidAPIKey) {
      try MailchimpClient.serverURL(forAPIKey: "nodatacenter")
    }
  }

  /// `sentCampaigns(forListID:)` maps the OK response into flat models and
  /// attaches the Basic-auth header.
  @Test internal func listCampaignsMapsFieldsAndAuthenticates() async throws {
    let transport = MockTransport(
      responses: [Self.campaignsPath: [Fixtures.campaigns]]
    )
    let client = try makeClient(transport)

    let campaigns = try await client.sentCampaigns(forListID: Self.listID)

    #expect(campaigns.map(\.id) == ["camp1", "camp2"])
    let first = try #require(campaigns.first)
    #expect(first.subjectLine == "BrightDigit Newsletter #1")
    #expect(first.title == "Issue One")
    #expect(first.previewText == "first preview")
    #expect(first.segmentText == "brightdigit-business")
    #expect(first.socialCardImageURL == "https://img/1.jpg")
    #expect(first.longArchiveURL == "https://archive/1")

    let expectedAuth =
      "Basic " + Data("anystring:\(Self.apiKey)".utf8).base64EncodedString()
    #expect(transport.authorizationHeaders.first == expectedAuth)
  }

  /// `archiveHTML(forCampaignID:)` returns the campaign's `archive_html`.
  @Test internal func archiveHTMLReturnsArchiveHTML() async throws {
    let transport = MockTransport(
      responses: [Self.contentPath: [Fixtures.campaignContent]]
    )
    let client = try makeClient(transport)

    let html = try await client.archiveHTML(forCampaignID: "camp1")

    #expect(html == "<html><body>Hello</body></html>")
  }

  /// A content response missing `archive_html` surfaces `missingHTML`.
  @Test internal func archiveHTMLThrowsWhenMissing() async throws {
    let transport = MockTransport(
      responses: [Self.contentPath: [Fixtures.campaignContentNoHTML]]
    )
    let client = try makeClient(transport)

    await #expect(
      throws: MailchimpClient.ClientError.missingHTML(campaignID: "camp1")
    ) {
      _ = try await client.archiveHTML(forCampaignID: "camp1")
    }
  }

  /// A non-200 (problem+json) response surfaces as
  /// `ClientError.invalidResponse`.
  @Test internal func non200ResponseThrows() async throws {
    let transport = MockTransport(
      responses: [Self.campaignsPath: [Fixtures.problem]],
      status: 500,
      contentType: "application/problem+json"
    )
    let client = try makeClient(transport)

    await #expect(throws: MailchimpClient.ClientError.invalidResponse) {
      _ = try await client.sentCampaigns(forListID: Self.listID)
    }
  }
}
