import XCTest
@testable import MailchimpKit
import SwiftUI

final class MailchimpKitTests: XCTestCase {
    func testExample() throws {
      
      let exp = expectation(description: "added user")
      SwaggerClientAPI.setup(apiKey: ProcessInfo.processInfo.environment["APIKEY"]!)
      
//      // INVALID DATE
//      ListsAPI.postListsIdMembers(body: AddListMembers1(emailAddress: "leo.dion@gmail.com", status: .subscribed), listId: "6f357ca335", skipMergeValidation: true, completion: { listMember, error in
//        XCTAssertNil(error)
//        XCTAssertNotNil(listMember)
//        XCTAssertEqual(listMember?.emailAddress, "leo.dion@gmail.com")
//        exp.fulfill()
//      })
      
      let request = MailchimpKit.Lists.PostListsIdMembers.Request(listId: "6f357ca335", skipMergeValidation: true, body: .init(emailAddress: "leo.dion@gmail.com", status: .subscribed))
      
      let session = URLSession.shared
      let urlRequest = try! request.createURLRequest(baseURL: URL(string: "https://us5.api.mailchimp.com/3.0")!)
      session.dataTask(with: urlRequest) { data, urlResponse, error in
        let httpStatus = (urlResponse as? HTTPURLResponse)?.statusCode ?? 0
        let response = try? MailchimpKit.Lists.PostListsIdMembers.Response(statusCode: httpStatus, data: data ?? Data(), decoder: JSONDecoder())
      }
      
      waitForExpectations(timeout: 10.0) { error in
        XCTAssertNil(error)
      }
      
      //PostListsIdMembers.Request.init()
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(MailchimpKit().text, "Hello, World!")
    }
}
