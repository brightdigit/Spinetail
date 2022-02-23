import Prch
@testable import Spinetail
import XCTest

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

final class CampaignTests: XCTestCase {
  static var listID: String!
  static var interestID: String!
  static var api: Mailchimp.API!

  override class func setUp() {
    let settings = Settings.parseAll()

    listID = settings.listID
    interestID = settings.interestID
    api = settings.apiKey.flatMap(Mailchimp.API.init(apiKey:))
  }

  func testCampaign() throws {
    let client = Client(api: CampaignTests.api, session: URLSession.shared)
    let date = Date()
    let template = try client.createTemplate(
      withName: "test email - \(date)",
      andHTML: "test email - \(date)"
    )

    guard let templateID = template.id else {
      XCTAssertNil(template.id)
      return
    }

    let campaign = try client.createCampaign(
      withTemplateID: templateID,
      fromName: "Leo",
      replyTo: "leogdion+mailchimpdev@brightdigit.com",
      subjectLine: "Hello World",
      toListID: Self.listID
    )

    guard let campaignID = campaign.id else {
      XCTAssertNil(campaign.id)
      return
    }

    try client.requestSync(
      Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignID)
    )
  }
}
