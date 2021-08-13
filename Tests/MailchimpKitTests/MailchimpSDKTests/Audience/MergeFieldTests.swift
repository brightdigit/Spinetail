@testable import MailchimpKit
import XCTest

class MergeFieldTests: XCTestCase {
  var token = "PUT YOUR API TOKEN HERE"

  override func setUp() {
    try? Mailchimp.initialize(token: token)
  }

  func testMergeFields() {
    let address = MCAddress(addressLineOne: "123 Chimp St.",
                            addressLineTwo: "Suite 456",
                            city: "Atlanta",
                            state: "GA",
                            zipCode: "30308",
                            country: CountryCode.USA)
    let mergeFields = ["Title": MergeFieldValue.string("Mr."),
                       "Interest": MergeFieldValue.string("Bananas"),
                       "Home": MergeFieldValue.address(address)]

    var contact = Contact(emailAddress: "test@mailchimp.com")
    contact.mergeFields = mergeFields
    XCTAssertNotNil(contact.mergeFields)
    XCTAssertEqual(3, contact.mergeFields?.count)
  }

  func testCustomMergeFieldString() {
    let mockApi = MockAnzeeAPI()
    Mailchimp.api = mockApi

    mockApi.verifyRequest = { request in
      guard let contact = request?.contact else {
        XCTFail()
        return
      }

      XCTAssertEqual(contact.emailAddress, "test@mailchimp.com")

      guard let fields = contact.mergeFields, let genre = fields.first else {
        XCTFail()
        return
      }

      XCTAssertEqual(fields.count, 1)
      XCTAssertEqual("Genre", genre.key)

      if case let .string(value) = genre.value {
        XCTAssertEqual("Action", value)
      } else {
        XCTFail("")
      }
    }

    let fieldName = "Genre"
    let favoriteGenre = "Action"
    Mailchimp.setMergeField(emailAddress: "test@mailchimp.com", name: fieldName, value: favoriteGenre)
  }

  func testCustomMergeFieldAddress() {
    let mockApi = MockAnzeeAPI()
    Mailchimp.api = mockApi

    mockApi.verifyRequest = { request in
      guard let contact = request?.contact else {
        XCTFail()
        return
      }

      XCTAssertEqual(contact.emailAddress, "test@mailchimp.com")

      guard let fields = contact.mergeFields, let address = fields.first else {
        XCTFail()
        return
      }

      XCTAssertEqual(fields.count, 1)
      XCTAssertEqual("Second Home", address.key)

      if case let .address(value) = address.value {
        let a1 = MCAddress(addressLineOne: "123 Chimp St.",
                           addressLineTwo: "Suite 456",
                           city: "Atlanta",
                           state: "GA",
                           zipCode: "30308",
                           country: CountryCode.USA)
        XCTAssertEqual(a1, value)
      } else {
        XCTFail("")
      }
    }

    let fieldName = "Second Home"
    let address = MCAddress(addressLineOne: "123 Chimp St.",
                            addressLineTwo: "Suite 456",
                            city: "Atlanta",
                            state: "GA",
                            zipCode: "30308",
                            country: CountryCode.USA)
    Mailchimp.setMergeField(emailAddress: "test@mailchimp.com", name: fieldName, address: address)
  }

  // MockAnzeeAPI in a class since it's self-mutating
  class MockAnzeeAPI: API {
    var verifyRequest: ((ContactRequest?) -> Void)?

    func process<T>(request: T) -> URLSessionDataTask? where T: MCAPIRequest {
      verifyRequest?(request as? ContactRequest)

      return nil
    }
  }
}
