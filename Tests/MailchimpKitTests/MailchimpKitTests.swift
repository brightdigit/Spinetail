@testable import MailchimpKit
import XCTest

final class MailchimpKitTests: XCTestCase {
  func testCampaign() throws {
    let exp = expectation(description: "post campaign")
    let request = Campaigns.PostCampaigns.Request(body: .init(type: .plaintext, contentType: .template, recipients: .init(listId: "6f357ca335")))
    
    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
      
      return
    }
        guard let api = MailchimpAPI(apiKey: apiKey) else {
          return
        }
    let client = APIClient(api: api, session: URLSession.shared)
    
    client.request(request) { result in
      switch result {
      case .success(.status200(let response)):
        guard let campaignId = response.id else {
          debugPrint("response: \(response)")
          break
        }
        client.request( Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)) { result in
          switch result {
          case .success(.status204):
            debugPrint("campaign sent")
          case .success(.defaultResponse(statusCode: let code, let response)):
            debugPrint("status: \(response)")
          case .failure(let error):
            debugPrint("error: \(error)")
          }
          exp.fulfill()
        }
        return
      case .success(.defaultResponse(statusCode: let code, let response)):
        debugPrint("status: \(response)")
      case .failure(let error):
        debugPrint("error: \(error)")
      }
      exp.fulfill()
    }
    
    waitForExpectations(timeout: 20.0) { error in
      XCTAssertNil(error)
    }
  }
  func testExample() throws {
    let exp = expectation(description: "get members")
    var members : [Lists.GetListsIdMembers.Response.Status200.Members]?
    
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

      XCTAssertNotNil( members.first)
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
