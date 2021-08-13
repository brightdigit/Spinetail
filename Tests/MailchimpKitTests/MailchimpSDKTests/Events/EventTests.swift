@testable import MailchimpKit
import XCTest

class EventTests: XCTestCase {
  func testValidEvent() {
    let emailAddress = "test@mailchimp.com"
    let name = "TestEventName"
    let properties = ["Attribute_One": "value"]

    XCTAssertNoThrow(try MCEvent(emailAddress: emailAddress, name: name, properties: properties))
  }

  func testInvalidEventName() {
    let emailAddress = "test@mailchimp.com"
    let name = "TestEventNamesLongerThan30Chars"
    let properties = ["Attribute_One": "value"]

    XCTAssertThrowsError(try MCEvent(emailAddress: emailAddress, name: name, properties: properties))
  }

  func testInvalidPropertyName() {
    let emailAddress = "test@mailchimp.com"
    let name = "TestEventName"
    let properties = ["Attribute-One": "value"]

    XCTAssertThrowsError(try MCEvent(emailAddress: emailAddress, name: name, properties: properties))
  }
}
