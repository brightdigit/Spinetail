@testable import MailchimpKit
import XCTest

final class MailchimpKitTests: XCTestCase {
  func testCampaign() throws {
    let exp = expectation(description: "post campaign")

    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
      return
    }
    guard let api = MailchimpAPI(apiKey: apiKey) else {
      return
    }
    let client = APIClient(api: api, session: URLSession.shared)

    client.request(Templates.PostTemplates.Request(body: .init(html: "Hello World", name: "hello-world"))) { result in
      guard let templateId = try? result.get().success?.id else {
        return
      }
//      curl -X POST \
//        https://${dc}.api.mailchimp.com/3.0/campaigns \
//        --user "anystring:${apikey}"' \
//        -d '{"type":"regular","recipients":{"list_id":"","segment_opts":{"saved_segment_id":0,"match":"any","conditions":[]}},"settings":{"subject_line":"","preview_text":"","title":"","from_name":"","reply_to":"","use_conversation":false,"to_name":"","folder_id":"","authenticate":false,"auto_footer":false,"inline_css":false,"auto_tweet":false,"auto_fb_post":[],"fb_comments":false,"template_id":0},"variate_settings":{"winner_criteria":"opens","wait_time":0,"test_size":0,"subject_lines":[],"send_times":[],"from_names":[],"reply_to_addresses":[]},"tracking":{"opens":false,"html_clicks":false,"text_clicks":false,"goal_tracking":false,"ecomm360":false,"google_analytics":"","clicktale":"","salesforce":{"campaign":false,"notes":false},"capsule":{"notes":false}},"rss_opts":{"feed_url":"","frequency":"daily","schedule":{"hour":0,"daily_send":{"sunday":false,"monday":false,"tuesday":false,"wednesday":false,"thursday":false,"friday":false,"saturday":false},"weekly_send_day":"sunday","monthly_send_date":0},"constrain_rss_img":false},"social_card":{"image_url":"","description":"","title":""},"content_type":"template"}'
      let request = Campaigns.PostCampaigns.Request(body:
        .init(
          type: .regular,
          contentType: .template,
          recipients: .init(
            listId: "6f357ca335"
          ),
          settings: .init(fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: "Hello World", templateId: templateId)
        ))
      client.request(request) { result in
        switch result {
        case let .success(.status200(response)):
          guard let campaignId = response.id else {
            debugPrint("response: \(response)")
            break
          }
          client.request(Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)) { result in
            switch result {
            case .success(.status204):
              debugPrint("campaign sent")

            case let .success(.defaultResponse(statusCode: code, response)):
              debugPrint("status: \(response)")

            case let .failure(error):
              debugPrint("error: \(error)")
            }
            exp.fulfill()
          }
          return

        case let .success(.defaultResponse(statusCode: code, response)):
          debugPrint("status: \(response)")

        case let .failure(error):
          debugPrint("error: \(error)")
        }
        exp.fulfill()
      }
    }

    waitForExpectations(timeout: 20.0) { error in
      XCTAssertNil(error)
    }
  }

  func testExample() throws {
    let exp = expectation(description: "get members")
    var members: [Lists.GetListsIdMembers.Response.Status200.Members]?

    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
      return
    }
    guard let api = MailchimpAPI(apiKey: apiKey) else {
      return
    }
    let client = APIClient(api: api, session: URLSession.shared)

    let request = Lists.GetListsIdMembers.Request(listId: "6f357ca335")

    client.request(request) { result in
      members = try? result.get().success?.members
      exp.fulfill()
    }

    waitForExpectations(timeout: 10.0) { error in
      XCTAssertNil(error)
      XCTAssertNotNil(members)

      guard let members = members else {
        return
      }

      XCTAssertNotNil(members.first)
      guard let member = members.first else {
        return
      }

      debugPrint(member.emailAddress)
    }
//    var result: Result<Mailchimp.Lists.PostListsIdMembers.Response, Error>!
//    let exp = expectation(description: "added user")
//
//    let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
//    guard let api = MailchimpAPI(apiKey: apiKey) else {
//      return
//    }
//    let client = APIClient(api: api, session: URLSession.shared)
//
//    let request = Mailchimp.Lists.PostListsIdMembers.Request(listId: "6f357ca335", skipMergeValidation: true, body: .init(emailAddress: "leo.dion@gmail.com", status: .subscribed))
//
//    client.request(request) { _result in
//      result = _result
//      exp.fulfill()
//    }
//    waitForExpectations(timeout: 10.0) { error in
//      XCTAssertNil(error)
//      let response: Mailchimp.Lists.PostListsIdMembers.Response
//      guard let result = result else {
//        XCTAssertNotNil(result)
//        return
//      }
//
//      switch result {
//      case let .failure(error):
//        XCTAssertNil(error)
//        return
//
//      case let .success(_response):
//        response = _response
//      }
//
//      switch response {
//      case let .defaultResponse(statusCode: code, response):
//        XCTAssert(response.detail.starts(with: "leo.dion@gmail.com"))
//        XCTAssertEqual(code, 400)
//
//      case let .status200(status200):
//        XCTAssertEqual(status200.emailAddress, "leo.dion@gmail.com")
//      }
//    }
  }
}
