@testable import MailchimpKit
import SwiftUI
import XCTest

struct BasicAuthentication : Authentication {
  static let name = "Basic"
  let userName : String
  let password : String
  var value : String {
    return "\(userName):\(password)".data(using: .utf8)?.base64EncodedString() ?? ""
  }
}
protocol Authentication {
  static var name : String { get }
  var value : String { get }
}
protocol Client {
  
}
protocol API {
  var baseURL : URL { get }
  var authentication : Authentication? { get }
}

struct MailchimpAPI : API {
  let apiKey : String
  let dc: String
  let baseURL: URL
  let authentication: Authentication?
  
  init?(apiKey : String) {
    self.apiKey = apiKey
    let apiKeyComponents  = apiKey.components(separatedBy: "-")
    
    guard let dc = apiKeyComponents.last, apiKeyComponents.count == 2 else {
      return nil
    }
    
    self.dc = dc
    
    guard let baseURL = URL(string: "https://\(dc).api.mailchimp.com/3.0") else {
      return nil
    }
    self.baseURL = baseURL
    
    self.authentication = BasicAuthentication(userName: "anystring", password: apiKey)
  }
}

class APIClient {
  internal init(api: API) {
    self.api = api
  }
  
  let api : API
  func request<ResponseType>(_ request: APIRequest<ResponseType>, _ completion: @escaping (Result<ResponseType, Error>) -> Void) {
    let session = URLSession.shared
//    var urlRequest = try! request.createURLRequest(baseURL: URL(string: "https://us5.api.mailchimp.com/3.0")!)
    var urlRequest : URLRequest
    do {
      urlRequest = try request.createURLRequest(baseURL: api.baseURL)
    } catch {
      completion(.failure(error))
      return
    }
   // let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
    if let authentication = api.authentication {
      urlRequest.addValue("\(type(of: authentication).name) \(authentication.value)", forHTTPHeaderField: "Authorization")
    }
    urlRequest.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-type")

    session.dataTask(with: urlRequest) { data, urlResponse, _ in
      var _result: Result<ResponseType, Error>
      if let httpStatus = (urlResponse as? HTTPURLResponse)?.statusCode, let data = data {
        _result = Result {
          try ResponseType(statusCode: httpStatus, data: data, decoder: JSONDecoder())
        }
      } else {
        _result = .failure(NSError())
      }
      completion(_result)
      
      //exp.fulfill()
    }.resume()
  }
}

final class MailchimpKitTests: XCTestCase {
  func testExample() throws {
    var result: Result<MailchimpKit.Lists.PostListsIdMembers.Response, Error>!
    let exp = expectation(description: "added user")
    // SwaggerClientAPI.setup(apiKey: ProcessInfo.processInfo.environment["APIKEY"]!)

//      // INVALID DATE
//      ListsAPI.postListsIdMembers(body: AddListMembers1(emailAddress: "leo.dion@gmail.com", status: .subscribed), listId: "6f357ca335", skipMergeValidation: true, completion: { listMember, error in
//        XCTAssertNil(error)
//        XCTAssertNotNil(listMember)
//        XCTAssertEqual(listMember?.emailAddress, "leo.dion@gmail.com")
//        exp.fulfill()
//      })

    let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
    guard let api = MailchimpAPI(apiKey: apiKey) else {
      return
    }
    let client = APIClient(api: api)
    
    let request = MailchimpKit.Lists.PostListsIdMembers.Request(listId: "6f357ca335", skipMergeValidation: true, body: .init(emailAddress: "leo.dion@gmail.com", status: .subscribed))
    
    client.request(request) { _result in
      result = _result
      exp.fulfill()
    }
//    let session = URLSession.shared
//    var urlRequest = try! request.createURLRequest(baseURL: URL(string: "https://us5.api.mailchimp.com/3.0")!)
//    let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
//    if let userAndPassword = "anystring:\(apiKey)".data(using: .utf8)?.base64EncodedString() {
//      urlRequest.addValue("Basic \(userAndPassword)", forHTTPHeaderField: "Authorization")
//    }
//    urlRequest.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-type")
//
//    session.dataTask(with: urlRequest) { data, urlResponse, _ in
//      var _result: Result<MailchimpKit.Lists.PostListsIdMembers.Response, Error>
//      if let httpStatus = (urlResponse as? HTTPURLResponse)?.statusCode, let data = data {
//        _result = Result {
//          try MailchimpKit.Lists.PostListsIdMembers.Response(statusCode: httpStatus, data: data, decoder: JSONDecoder())
//        }
//      } else {
//        _result = .failure(NSError())
//      }
//      result = _result
//      exp.fulfill()
//    }.resume()

    waitForExpectations(timeout: 10.0) { error in
      XCTAssertNil(error)
      let response: MailchimpKit.Lists.PostListsIdMembers.Response
      guard let result = result else {
        XCTAssertNotNil(result)
        return
      }

      switch result {
      case let .failure(error):
        XCTAssertNil(error)
        return

      case let .success(_response):
        response = _response
      }

      switch response {
      case let .defaultResponse(statusCode: code, response):
        XCTAssert(response.detail.starts(with: "leo.dion@gmail.com"))
        XCTAssertEqual(code, 400)

      case let .status200(status200):
        XCTAssertEqual(status200.emailAddress, "leo.dion@gmail.com")
      }
    }

    // PostListsIdMembers.Request.init()
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
    // XCTAssertEqual(MailchimpKit().text, "Hello, World!")
  }
}
