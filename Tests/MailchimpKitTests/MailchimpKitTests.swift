@testable import MailchimpKit
import SwiftUI
import XCTest

enum APIError : Error {
  case invalidResponse
}

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
  var headers : [String: String] { get }
}

struct MailchimpAPI : API {
  let apiKey : String
  let dc: String
  let baseURL: URL
  let headers: [String : String]
  
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
    
    let authentication = BasicAuthentication(userName: "anystring", password: apiKey)
    self.headers = [
      BasicAuthentication.name : authentication.value,
      "Content-type": "application/json; charset=utf-8"
    ]
  }
}

protocol Task {
  
}

protocol Request {
  
}

protocol Response {
  var statusCode : Int? { get }
  var data: Data? { get }
}
protocol Session {
  associatedtype RequestType : Request
  associatedtype TaskType: Task
  func createRequest<ResponseType: APIResponseValue>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders header: [String: String]) throws -> RequestType
  @discardableResult func beginRequest(_ request: RequestType, _ completion: @escaping ((Result<Response, Error>) -> Void) ) -> Task
}
extension URLRequest : Request {
  
}

extension URLSessionDataTask : Task {
  
}
extension URLSession : Session {

  typealias RequestType = URLRequest
  
  typealias TaskType = URLSessionDataTask
  
  func beginRequest(_ request: RequestType, _ completion: @escaping ((Result<Response, Error>) -> Void)) -> Task {
    let task = self.dataTask(with: request) { data, response, error in
      
    }
    task.resume()
    return task
  }
func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders header: [String : String]) throws -> URLRequest where ResponseType : APIResponseValue {
    guard var componenets = URLComponents(url: baseURL.appendingPathComponent(request.path), resolvingAgainstBaseURL: false) else {
      throw NSError()
    }
    

    // filter out parameters with empty string value
    var queryItems = [URLQueryItem]()
    for (key, value) in request.queryParameters {
      if !String(describing: value).isEmpty {
        queryItems.append(URLQueryItem(name: key, value: String(describing: value)))
      }
    }
    componenets.queryItems = queryItems
    
    guard let url = componenets.url else {
      throw NSError()
      
    }
    
    
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.service.method
    urlRequest.allHTTPHeaderFields = request.headers
//    if !queryParams.isEmpty {
//      urlRequest = try URLEncoding.queryString.encode(urlRequest, with: queryParams)
//    }

//    var formParams: [String: Any] = [:]
//    for (key, value) in formParameters {
//      if !String(describing: value).isEmpty {
//        formParams[key] = value
//      }
//    }

//    if !formParams.isEmpty {
//      urlRequest = try URLEncoding.httpBody.encode(urlRequest, with: formParams)
//    }

    if let encodeBody = request.encodeBody {
      urlRequest.httpBody = try encodeBody(JSONEncoder())
      urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
    }
    return urlRequest
  }
}

class APIClient<SessionType: Session> {
  internal init(api: API, session: SessionType) {
    self.api = api
    self.session = session
  }
  
  let api : API
  let session: SessionType
  
  func request<ResponseType>(_ request: APIRequest<ResponseType>, _ completion: @escaping (Result<ResponseType, Error>) -> Void) {
    //let session = URLSession.shared
//    var urlRequest = try! request.createURLRequest(baseURL: URL(string: "https://us5.api.mailchimp.com/3.0")!)
    var sessionRequest : SessionType.RequestType
    do {
      //urlRequest = try request.createURLRequest(baseURL: api.baseURL)
      sessionRequest = try session.createRequest(request, withBaseURL:api.baseURL, andHeaders: api.headers)
    } catch {
      completion(.failure(error))
      return
    }
   // let apiKey = ProcessInfo.processInfo.environment["API_KEY"]!
//    if let authentication = api.authentication {
//      urlRequest.addValue("\(type(of: authentication).name) \(authentication.value)", forHTTPHeaderField: "Authorization")
//    }
//    urlRequest.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-type")

    session.beginRequest(sessionRequest) { result in
      let newResult : Result<ResponseType, Error> = result.flatMap { response in
        guard let httpStatus = response.statusCode, let data = response.data else {
          return .failure(APIError.invalidResponse)
        }
          return Result {
            try ResponseType(statusCode: httpStatus, data: data, decoder: JSONDecoder())
          }
          
      }
      completion(newResult)
    }
//    session.dataTask(with: urlRequest) { data, urlResponse, _ in
//      var _result: Result<ResponseType, Error>
//      if let httpStatus = (urlResponse as? HTTPURLResponse)?.statusCode, let data = data {
//        _result = Result {
//          try ResponseType(statusCode: httpStatus, data: data, decoder: JSONDecoder())
//        }
//      } else {
//        _result = .failure(NSError())
//      }
//      completion(_result)
//
//      //exp.fulfill()
//    }.resume()
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
    let client = APIClient(api: api, session: URLSession.shared)
    
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
