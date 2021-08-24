import Foundation

public class APIClient<SessionType: Session> {
  public init(api: API, session: SessionType) {
    self.api = api
    self.session = session
  }

  let api: API
  let session: SessionType

  @discardableResult
  public func request<ResponseType>(_ request: APIRequest<ResponseType>, _ completion: @escaping (APIResult<ResponseType>) -> Void) -> Task? {
    var sessionRequest: SessionType.RequestType
    do {
      sessionRequest = try session.createRequest(request, withBaseURL: api.baseURL, andHeaders: api.headers)
    } catch {
      completion(.failure(.requestEncodingError(error)))
      return nil
    }

    return session.beginRequest(sessionRequest) { result in
      let newResult: APIResult<ResponseType> = result.flatMap { response in
        guard let httpStatus = response.statusCode, let data = response.data else {
          return .failure(.invalidResponse)
        }
        return Result {
          try ResponseType(statusCode: httpStatus, data: data, decoder: self.api.decoder)
        }.mapError { error in
          if let decodingError = error as? DecodingError {
            return .decodingError(decodingError)
          } else {
            return .unexpectedStatusCode(statusCode: httpStatus, data: data)
          }
        }
      }
      completion(newResult)
    }
  }
}
