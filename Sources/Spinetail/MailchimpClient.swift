import Foundation
import OpenAPIRuntime
import SpinetailOpenAPI

// URLSession transport is unavailable on WASI; the URLSession-defaulting
// initializer is gated behind #if !os(WASI) below.
#if !os(WASI)
  import OpenAPIURLSession
#endif

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

/// A lightweight async Mailchimp Marketing API client backed by the generated
/// OpenAPI client.
///
/// Exposes only the two operations the newsletter importer needs:
/// `getCampaigns` (list sent campaigns for a list) and `getCampaignsIdContent`
/// (fetch a campaign's archive HTML). Authentication is HTTP Basic with the
/// API key as the password (see ``AuthenticationMiddleware``).
public struct MailchimpClient: Sendable {
  /// Errors surfaced by ``MailchimpClient``.
  public enum ClientError: Error, Equatable, Sendable {
    /// The supplied API key is missing a `-<datacenter>` suffix, so the
    /// datacenter-specific host cannot be derived.
    case invalidAPIKey
    /// The server returned a non-200 / undocumented response.
    case invalidResponse
    /// The requested campaign returned no archive HTML.
    case missingHTML(campaignID: String)
  }

  /// The maximum number of campaigns to request per `getCampaigns` call. The
  /// API caps `count` at 1000.
  private static let maxCount = 1_000

  private let underlying: Client

  /// Creates a client from a Mailchimp API key.
  ///
  /// The key carries the account datacenter as a suffix (for example
  /// `...-us21`); the base URL is derived from it so requests reach the
  /// correct host (`https://<dc>.api.mailchimp.com/3.0`).
  ///
  /// - Parameters:
  ///   - apiKey: The Mailchimp API key, including its `-<datacenter>` suffix.
  ///   - transport: The transport to use.
  /// - Throws: ``ClientError/invalidAPIKey`` if the key has no datacenter
  ///   suffix.
  public init(
    apiKey: String,
    transport: any ClientTransport
  ) throws {
    let serverURL = try Self.serverURL(forAPIKey: apiKey)
    underlying = Client(
      serverURL: serverURL,
      transport: transport,
      middlewares: [AuthenticationMiddleware(apiKey: apiKey)]
    )
  }

  // URLSession transport is unavailable on WASI; this convenience (default
  // `URLSessionTransport`) is gated. WASI callers pass an explicit transport above.
  #if !os(WASI)
    /// Creates a client from a Mailchimp API key using the default
    /// `URLSessionTransport`.
    /// - Parameter apiKey: The Mailchimp API key, including its `-<datacenter>` suffix.
    /// - Throws: ``ClientError/invalidAPIKey`` if the key has no datacenter suffix.
    public init(apiKey: String) throws {
      try self.init(apiKey: apiKey, transport: URLSessionTransport())
    }
  #endif

  /// Creates a client wrapping an already-configured generated client.
  ///
  /// Primarily used by tests to inject a fixture-replaying transport (the
  /// supplied client is expected to carry its own auth/transport setup).
  public init(client: Client) {
    underlying = client
  }

  /// Derives the datacenter-specific base URL from a Mailchimp API key.
  ///
  /// Mailchimp keys end in `-<datacenter>` (e.g. `-us21`); the API host is
  /// `https://<datacenter>.api.mailchimp.com/3.0`.
  ///
  /// - Parameter apiKey: The Mailchimp API key, including its datacenter suffix.
  /// - Returns: The datacenter-specific base URL.
  /// - Throws: ``ClientError/invalidAPIKey`` if no datacenter can be derived.
  internal static func serverURL(forAPIKey apiKey: String) throws -> URL {
    guard let datacenter = apiKey.split(separator: "-").last,
      !datacenter.isEmpty,
      datacenter != apiKey[...]
    else {
      throw ClientError.invalidAPIKey
    }
    guard
      let url = URL(
        string: "https://\(datacenter).api.mailchimp.com/3.0"
      )
    else {
      throw ClientError.invalidAPIKey
    }
    return url
  }

  /// Lists the sent campaigns for a list, most recent first.
  ///
  /// - Parameter listID: The Mailchimp list (audience) id to filter by.
  /// - Returns: The sent campaigns mapped into the flat importer model.
  /// - Throws: ``ClientError/invalidResponse`` for a non-200 response.
  public func sentCampaigns(
    forListID listID: String
  ) async throws -> [MailchimpCampaign] {
    let response = try await underlying.getCampaigns(
      .init(
        query: .init(
          count: Self.maxCount,
          status: .sent,
          list_id: listID,
          sort_field: .send_time,
          sort_dir: .DESC
        )
      )
    )
    guard case .ok(let okResponse) = response,
      case .json(let body) = okResponse.body
    else {
      throw ClientError.invalidResponse
    }
    return (body.campaigns ?? []).map(MailchimpCampaign.init(from:))
  }

  /// Fetches the archive HTML for a campaign.
  ///
  /// - Parameter campaignID: The campaign id.
  /// - Returns: The campaign's `archive_html`.
  /// - Throws: ``ClientError/missingHTML(campaignID:)`` if the response carries
  ///   no archive HTML.
  public func archiveHTML(
    forCampaignID campaignID: String
  ) async throws -> String {
    let response = try await underlying.getCampaignsIdContent(
      .init(path: .init(campaign_id: campaignID))
    )
    guard case .ok(let okResponse) = response,
      case .json(let body) = okResponse.body
    else {
      throw ClientError.invalidResponse
    }
    guard let html = body.archive_html else {
      throw ClientError.missingHTML(campaignID: campaignID)
    }
    return html
  }
}
