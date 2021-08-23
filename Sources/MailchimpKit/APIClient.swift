
import Foundation


public class APIClient<SessionType: Session> {
  public init(api: API, session: SessionType) {
    self.api = api
    self.session = session
  }

  let api: API
  let session: SessionType

  @discardableResult
  public func request<ResponseType>(_ request: APIRequest<ResponseType>, _ completion: @escaping (Result<ResponseType, Error>) -> Void) -> Task? {
    var sessionRequest: SessionType.RequestType
    do {
      sessionRequest = try session.createRequest(request, withBaseURL: api.baseURL, andHeaders: api.headers)
    } catch {
      completion(.failure(error))
      return nil
    }

    return session.beginRequest(sessionRequest) { result in
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
  }
}
