import Prch
@testable import Spinetail
import XCTest

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

typealias DefaultResponseError<ResponseType: Response> = ClientResponseResult<ResponseType>.FailedResponseError

final class ListsTests: XCTestCase {
  let existingEmailAddress = "669408F7A804430BAF74878BFCEBD128@brightdigit.com"
  static var listID: String!
  static var interestID: String!
  static var api: Mailchimp.API!

  override class func setUp() {
    let settings = Settings.parseAll()

    listID = settings.listID
    interestID = settings.interestID
    api = settings.apiKey.flatMap(Mailchimp.API.init(apiKey:))
  }

  func upsertEmailAddress(
    _ emailAddress: String,
    withInterestID interestID: String?
  ) throws -> Bool? {
    let client = Client(api: Self.api, session: URLSession.shared)
    let getMember = Lists.GetListsIdMembersId.Request(
      listId: Self.listID,
      subscriberHash: emailAddress
    )

    let member: Lists.GetListsIdMembersId.Response.Status200?
    let interested: Bool

    do {
      member = try client.requestSync(getMember)
      if let interestID = interestID {
        interested = member?.interests?[interestID] ?? false
      } else {
        interested = true
      }
    } catch let error as DefaultResponseError<Lists.GetListsIdMembersId.Response> {
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
}
