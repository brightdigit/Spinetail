import Prch
@testable import Spinetail
import XCTest

enum MailchimpError: Error {
  case apiError(Any)
}

extension APIResponseResult {
  func get() throws -> SuccessType {
    switch self {
    case let .success(value):
      return value

    case let .failure(failure):
      throw MailchimpError.apiError(failure)
    }
  }
}

struct TimeoutError: Error {}

public extension APIClient {
  func requestSync<ResponseType>(
    _ request: APIRequest<ResponseType>,
    timeout _: DispatchTime = .now().advanced(by: .seconds(5))
    // _ completion: @escaping (APIResult<ResponseType>) -> Void
  ) throws -> ResponseType {
    var result: APIResult<ResponseType>!
    let semaphore = DispatchSemaphore(value: 0)
    self.request(request) {
      result = $0
      semaphore.signal()
    }
    semaphore.wait()

    return try result.get()
//    var sessionRequest: SessionType.RequestType
//    do {
//      sessionRequest = try session.createRequest(
//        request,
//        withBaseURL: api.baseURL,
//        andHeaders: api.headers
//      )
//    } catch {
//      completion(.failure(.requestEncodingError(error)))
//      return nil
//    }
//
//    return session.beginRequest(sessionRequest) { result in
//      completion(.init(ResponseType.self, result: result, decoder: self.api.decoder))
//    }
  }
}

final class SpinetailTests: XCTestCase {
  let email = ""
  let listID = ""
  let interestID = ""
  func testUpsert() throws {
//    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
//      return
//    }
//    guard let api = MailchimpAPI(apiKey: apiKey) else {
//      return
//    }
//    let client = APIClient(api: api, session: URLSession.shared)
    ////    let getGroups = Lists.GetListsIdInterestCategories.Request(listId: listID)
    ////    let categoryID = try (client.requestSync(getGroups).responseResult.get().categories?.first?.id).unsafelyUnwrapped
    ////
    ////    let getInterests = Lists.GetListsIdInterestCategoriesIdInterests.Request(listId: listID, interestCategoryId: categoryID)
    ////    let interestID = try (client.requestSync(getInterests).responseResult.get().interests?.first?.id).unsafelyUnwrapped
    ////    print(interestID)
    ////    return
//
//    let getMember = Lists.GetListsIdMembersId.Request(listId: listID, subscriberHash: email)
//    let memberResult = try client.requestSync(getMember)
//
//    let member : Lists.GetListsIdMembersId.Response.Status200?
//    let interested : Bool
//    if memberResult.failure?.status == 404 {
//      interested = false
//      member = nil
//    } else {
//      member = try memberResult.responseResult.get()
//      interested = member?.interests?[interestID] ?? false
//    }
//
//
//
//
//    let successful : Bool
//    guard !interested else {
//      return
//    }
//    if let subscriberHash = member?.id {
//
//                  let patch = Lists.PatchListsIdMembersId.Request(body: .init(emailAddress: email, emailType: nil, interests: [interestID: true]), options: Lists.PatchListsIdMembersId.Request.Options(listId: listID, subscriberHash: subscriberHash))
//      successful = try client.requestSync(patch).responseResult.successful
//    } else {
//      let post = Lists.PostListsIdMembers.Request(listId: listID, body: .init(emailAddress: email, status: Lists.PostListsIdMembers.Request.Body.Status.subscribed, interests: [interestID: true]))
//      successful = try client.requestSync(post).responseResult.successful
//    }
//    XCTAssertTrue(successful)

//        return client.request(request).flatMapThrowing { response in
//          try response.responseResult.get()
//        }.map { members in
//          members.exactMatches?.members?.first?.id
//        }.flatMap { subscriberHash in
//          if let subscriberHash = subscriberHash {
//            let request = Lists.PatchListsIdMembersId.Request(body: .init(emailAddress: user.email, emailType: nil, interests: [self.interestID: true]), options: Lists.PatchListsIdMembersId.Request.Options(listId: self.listID, subscriberHash: subscriberHash))
//            return self.client.request(request).asVoidResult(fromKey: \.responseResult)
//          } else {
//            let request = Lists.PostListsIdMembers.Request(listId: listID, body: .init(emailAddress: user.email, status: Lists.PostListsIdMembers.Request.Body.Status.subscribed, interests: [self.interestID: true]))
//
//            return self.client.request(request).asVoidResult(fromKey: \.responseResult)
//          }
//        }
  }

  // swiftlint:disable:next cyclomatic_complexity
  func testCampaign() throws {
//    let exp = expectation(description: "post campaign")
//
//    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
//      return
//    }
//    guard let api = MailchimpAPI(apiKey: apiKey) else {
//      return
//    }
//    let client = APIClient(api: api, session: URLSession.shared)
//
//    client.request(Templates.PostTemplates.Request(body: .init(html: "Hello World", name: "hello-world"))) { result in
//      guard let templateId = try? result.get().success?.id else {
//        return
//      }
//      let request = Campaigns.PostCampaigns.Request(body:
//        .init(
//          type: .regular,
//          contentType: .template,
//          recipients: .init(
//            listId: "6f357ca335"
//          ),
//          settings: .init(fromName: "Leo", replyTo: "leogdion+mailchimpdev@brightdigit.com", subjectLine: "Hello World", templateId: templateId)
//        ))
//      client.request(request) { result in
//        switch result {
//        case let .success(.status200(response)):
//          guard let campaignId = response.id else {
//            debugPrint("response: \(response)")
//            break
//          }
//          client.request(Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignId)) { result in
//            switch result {
//            case .success(.status204):
//              debugPrint("campaign sent")
//
//            case let .success(.defaultResponse(statusCode: code, response)):
//              debugPrint("status: \(response)")
//
//            case let .failure(error):
//              debugPrint("error: \(error)")
//            }
//            exp.fulfill()
//          }
//          return
//
//        case let .success(.defaultResponse(statusCode: code, response)):
//          debugPrint("status: \(response)")
//
//        case let .failure(error):
//          debugPrint("error: \(error)")
//        }
//        exp.fulfill()
//      }
//    }
//
//    waitForExpectations(timeout: 20.0) { error in
//      XCTAssertNil(error)
//    }
//  }
//
//  func testExample() throws {
//    let exp = expectation(description: "get members")
//    var members: [Lists.GetListsIdMembers.Response.Status200.Members]?
//
//    guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
//      return
//    }
//    guard let api = MailchimpAPI(apiKey: apiKey) else {
//      return
//    }
//    let client = APIClient(api: api, session: URLSession.shared)
//
//    let request = Lists.GetListsIdMembers.Request(listId: "6f357ca335")
//
//    client.request(request) { result in
//      members = try? result.get().success?.members
//      exp.fulfill()
//    }
//
//    waitForExpectations(timeout: 10.0) { error in
//      XCTAssertNil(error)
//      XCTAssertNotNil(members)
//
//      guard let members = members else {
//        return
//      }
//
//      XCTAssertNotNil(members.first)
//      guard let member = members.first else {
//        return
//      }
//
//      debugPrint(member.emailAddress)
//    }
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
