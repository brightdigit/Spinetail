import Prch
@testable import Spinetail
import XCTest

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

final class CampaignTests: XCTestCase {
  static var listID: String!
  static var interestID: String!
  static var api: MailchimpAPI!

  override class func setUp() {
    let settings = Settings.parse()

    listID = settings.listID
    interestID = settings.interestID
    api = settings.apiKey.flatMap(MailchimpAPI.init(apiKey:))
  }

  func createTemplate(withName name: String, andHTML html: String) throws -> Templates.PostTemplates.Response.SuccessType {
    let client = Client(api: CampaignTests.api, session: URLSession.shared)

    let templateRequest = Templates.PostTemplates.Request(body: .init(html: html, name: name))
    return try client.requestSync(templateRequest)
  }

  func createCampaign(withTemplateID templateID: Int, fromName name: String, replyTo: String, subjectLine: String, toListID listID: String) throws -> Campaigns.PostCampaigns.Response.SuccessType {
    let client = Client(api: CampaignTests.api, session: URLSession.shared)
    let settings: Campaigns.PostCampaigns.Request.Body.Settings = .init(fromName: name, replyTo: replyTo, subjectLine: subjectLine, templateId: templateID)
    let body: Campaigns.PostCampaigns.Request.Body = .init(type: .regular, contentType: .template, recipients: .init(listId: listID), settings: settings)
    let request = Campaigns.PostCampaigns.Request(body: body)
    return try client.requestSync(request)
  }

  func testCampaign() throws {
    let client = Client(api: CampaignTests.api, session: URLSession.shared)
    let date = Date()
    let template = try createTemplate(withName: "test email - \(date)", andHTML: "test email - \(date)")

    guard let templateID = template.id else {
      XCTAssertNil(template.id)
      return
    }

    let campaign = try createCampaign(withTemplateID: templateID, fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: "Hello World", toListID: Self.listID)

    guard let campaignID = campaign.id else {
      XCTAssertNil(campaign.id)
      return
    }

    try client.requestSync(Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignID))
  }
}
