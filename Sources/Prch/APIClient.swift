import Foundation

public class APIClient<SessionType: Session> {
  public init(api: API, session: SessionType) {
    self.api = api
    self.session = session
  }

  public let api: API
  public let session: SessionType

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
      completion(.init(ResponseType.self, result: result, decoder: self.api.decoder))
    }
  }
  
  
}

extension Result where Success: APIResponseValue, Failure == APIClientError {
  init(_: Success.Type, result: Result<Response, APIClientError>, decoder: ResponseDecoder) {
    self = result.flatMap { response -> APIResult<Success> in
      guard let httpStatus = response.statusCode, let data = response.data else {
        return .failure(APIClientError.invalidResponse)
      }
      let result = Result<Success, Error> {
        try Success(statusCode: httpStatus, data: data, decoder: decoder)
      }
      switch result {
      case let .success(value):
        return .success(value)

      case let .failure(errorType as APIClientError):
        return .failure(errorType)

      case let .failure(errorType as DecodingError):
        return .failure(APIClientError.decodingError(errorType))

      case let .failure(errorType):
        return .failure(APIClientError.unknownError(errorType))
      }
    }
  }
}
