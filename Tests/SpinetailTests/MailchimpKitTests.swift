import Prch
@testable import Spinetail
import XCTest

extension String {
  static func randomEmailAddress(withDomain domain: String) -> String {
    [UUID().uuidString.replacingOccurrences(of: "-", with: ""), domain].joined(separator: "@")
  }
}

struct Settings: Codable {
  internal init(apiKey: String?, listID: String?, interestID: String?) {
    self.apiKey = apiKey
    self.listID = listID
    self.interestID = interestID
  }

  let apiKey: String?
  let listID: String?
  let interestID: String?
}

extension Settings {
  init(environment: [String: String]) {
    self.init(
      apiKey: environment["MAILCHIMP_API_KEY"],
      listID: environment["MAILCHIMP_LIST_ID"],
      interestID: environment["MAILCHIMP_INTEREST_ID"]
    )
  }

  init(processInfo: ProcessInfo = .processInfo) {
    self.init(environment: processInfo.environment)
  }

  func mergeWith(other: Settings) -> Settings {
    Settings(
      apiKey: apiKey ?? other.apiKey,
      listID: listID ?? other.listID,
      interestID: interestID ?? other.interestID
    )
  }

  static func parse() -> Settings {
    let decoder = JSONDecoder()
    let directory = URL(fileURLWithPath: #file).deletingLastPathComponent()
    let envURL = directory.appendingPathComponent("env.json")
    let data = try? Data(contentsOf: envURL)
    let envSettings = Settings()
    if let jsonSettings = data.flatMap({ try? decoder.decode(Settings.self, from: $0) }) {
      return jsonSettings.mergeWith(other: envSettings)
    } else {
      return envSettings
    }
  }
}

final class SpinetailTests: XCTestCase {
  let existingEmailAddress = "669408F7A804430BAF74878BFCEBD128@brightdigit.com"
  static var listID: String!
  static var interestID: String!
  static var api: MailchimpAPI!

  override class func setUp() {
    let settings = Settings.parse()

    listID = settings.listID
    interestID = settings.interestID
    api = settings.apiKey.flatMap(MailchimpAPI.init(apiKey:))
  }

  func upsertEmailAddress(_ emailAddress: String, withInterestID interestID: String?) throws -> Bool? {
    let client = Client(api: Self.api, session: URLSession.shared)
    let getMember = Lists.GetListsIdMembersId.Request(listId: Self.listID, subscriberHash: emailAddress)

    let member: Lists.GetListsIdMembersId.Response.Status200?
    let interested: Bool

    do {
      member = try client.requestSync(getMember)
      if let interestID = interestID {
        interested = member?.interests?[interestID] ?? false
      } else {
        interested = true
      }
    } catch let error as RequestResponse<Lists.GetListsIdMembersId.Response>.FailedResponseError {
      guard error.statusCode == 404 else {
        throw error
      }
      interested = false
      member = nil
    }

    let interests: [String: Bool] = interestID.map { [$0: true] } ?? [:]
    guard !interested else {
      return nil
    }
    if let subscriberHash = member?.id {
      let patch = Lists.PatchListsIdMembersId.Request(body: .init(emailAddress: emailAddress, emailType: nil, interests: interests), options: Lists.PatchListsIdMembersId.Request.Options(listId: Self.listID, subscriberHash: subscriberHash))
      _ = try client.requestSync(patch)
      return false
    } else {
      let post = Lists.PostListsIdMembers.Request(listId: Self.listID, body: .init(emailAddress: emailAddress, status: Lists.PostListsIdMembers.Request.Body.Status.subscribed, interests: interests, timestampOpt: .init(), timestampSignup: .init()))
      _ = try client.requestSync(post)
      return true
    }
  }

  func testUpsertExistingWithInterestID() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withInterestID: Self.interestID)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestID() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withInterestID: nil)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestID() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try upsertEmailAddress(emailAddress, withInterestID: Self.interestID)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestID() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try upsertEmailAddress(emailAddress, withInterestID: nil)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try upsertEmailAddress(emailAddress, withInterestID: Self.interestID)
    XCTAssertEqual(actualUpdate, false)
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
