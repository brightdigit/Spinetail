
import Foundation


public class APIClient<SessionType: Session> {
  public init(api: API, session: SessionType) {
    self.api = api
    self.session = session
  }

  let api: API
  let session: SessionType

  public func request<ResponseType>(_ request: APIRequest<ResponseType>, _ completion: @escaping (Result<ResponseType, Error>) -> Void) {
    // let session = URLSession.shared
//    var urlRequest = try! request.createURLRequest(baseURL: URL(string: "https://us5.api.mailchimp.com/3.0")!)
    var sessionRequest: SessionType.RequestType
    do {
      // urlRequest = try request.createURLRequest(baseURL: api.baseURL)
      sessionRequest = try session.createRequest(request, withBaseURL: api.baseURL, andHeaders: api.headers)
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
      let newResult: Result<ResponseType, Error> = result.flatMap { response in
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
