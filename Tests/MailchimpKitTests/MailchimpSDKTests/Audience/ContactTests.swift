@testable import MailchimpKit
import XCTest

class ContactTests: XCTestCase {
  var token = "PUT YOUR API TOKEN HERE"

  override func setUp() {
    try? Mailchimp.initialize(token: token)
  }

  func testContactStatus() {
    let emailAddress = "test@mailchimp.com"
    let status = Contact.Status.subscribed
    var contact = Contact(emailAddress: emailAddress)

    contact.status = status
    XCTAssertNotNil(contact.status)
  }

  func testSetContactStatus() {
    let mockApi = MockAnzeeAPI()
    Mailchimp.api = mockApi
    let testEmailAddress = "test@mailchimp.com"
    let testStatus = Contact.Status.subscribed

    mockApi.verifyRequest = { request in
      guard let contact = request?.contact else {
        XCTFail()
        return
      }

      XCTAssertEqual(contact.emailAddress, testEmailAddress)

      guard let status = contact.status else {
        XCTFail()
        return
      }

      XCTAssertEqual(Contact.Status.subscribed, status)
    }
    Mailchimp.setContactStatus(emailAddress: testEmailAddress, status: testStatus)
  }

  func testMarketingPermissions() {
    let emailAddress = "test@mailchimp.com"
    let permission1 = Contact.MarketingPermission(marketingPermissionId: "ateqw5rweafsdq345trewapfsd", enabled: true)
    let permission2 = Contact.MarketingPermission(marketingPermissionId: "at5eafsdt3wa4efs", enabled: false)
    let permissions = [permission1, permission2]
    var contact = Contact(emailAddress: emailAddress)

    contact.marketingPermissions = permissions
    XCTAssertNotNil(contact.marketingPermissions)
    XCTAssertEqual(permissions.count, 2)
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
