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
    withFirstName firstName: String?,
    andLastName lastName: String?,
    withInterestID interestID: String?,
    andTimestamp useTimestamp: Bool
  ) throws -> Bool? {
    let client = Client(api: Self.api, session: URLSession.shared)
    let getMember = Lists.GetListsIdMembersId.Request(
      listId: Self.listID,
      subscriberHash: emailAddress
    )
    let mergeFields = { firstName, lastName -> [String: AnyCodable]? in
      let value = [
        "FNAME": firstName,
        "LNAME": lastName
      ].compactMapValues {
        $0
      }.mapValues { AnyCodable(stringLiteral: $0) }
      return value.isEmpty ? nil : value
    }(firstName, lastName)

    let member: Lists.GetListsIdMembersId.Response.Status200?
    let interested: Bool

    do {
      member = try client.requestSync(getMember, timeout: .distantFuture)
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
      let patch = Lists.PatchListsIdMembersId.Request(body: .init(emailAddress: emailAddress, emailType: nil, interests: interests, mergeFields: mergeFields), options: Lists.PatchListsIdMembersId.Request.Options(listId: Self.listID, subscriberHash: subscriberHash))
      _ = try client.requestSync(patch)
      return false
    } else {
      let post = Lists.PostListsIdMembers.Request(listId: Self.listID, body: .init(emailAddress: emailAddress, status: Lists.PostListsIdMembers.Request.Body.Status.subscribed, interests: interests, mergeFields: mergeFields, timestampOpt: useTimestamp ? .init() : nil, timestampSignup: useTimestamp ? .init() : nil))
      _ = try client.requestSync(post)
      return true
    }
  }

  func testUpsertExistingWithInterestIDWithoutTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDWithoutTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDWithoutTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDWithoutTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: false)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDandNameWithoutTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDandNameWithoutTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDandNameWithoutTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDandNameWithoutTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: false)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDWithTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDWithTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDWithTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDWithTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: true)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDandNameWithTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDandNameWithTimestamp() throws {
    let actual = try upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDandNameWithTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDandNameWithTimestamp() throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: true)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actualUpdate, false)
  }
}
