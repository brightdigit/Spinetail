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
      
//      let newResult : APIResult<ResponseType>
//      switch result {
//      case .failure(let error):
//        newResult = .failure(.networkError(error))
//      case .success(let response):
//        guard let httpStatus = response.statusCode, let data = response.data else {
//          newResult = .failure(.invalidResponse)
//          break
//        }
//        let result = Result{
//          try ResponseType(statusCode: httpStatus, data: data, decoder: self.api.decoder)
//        }
//        switch result {
//        case .success(let value):
//          newResult = .success(value)
//        case .failure(let errorType as APIClientError):
//          newResult = .failure(errorType)
//        case .failure(let errorType as DecodingError):
//          newResult = .failure(.decodingError(errorType))
//        case .failure(let errorType):
//          newResult = .failure(.unknownError(errorType))
//        }
//      }
      completion(.init(ResponseType.self, result: result, decoder: self.api.decoder))
    }
  }
}

extension Result  {
  init(_ responseType: Success.Type, result: Result<Response, Error>, decoder: ResponseDecoder) where Success : APIResponseValue,  Failure == APIClientError {
    switch result {
    case .failure(let error):
      self = .failure(.networkError(error))
    case .success(let response):
      guard let httpStatus = response.statusCode, let data = response.data else {
        self = .failure(APIClientError.invalidResponse)
        break
      }
      let result = Result<Success, Error>{
        try Success(statusCode: httpStatus, data: data, decoder: decoder)
      }
      switch result {
      case .success(let value):
        self = .success(value)
      case .failure(let errorType as APIClientError):
        self = .failure(errorType)
      case .failure(let errorType as DecodingError):
        self = .failure(APIClientError.decodingError(errorType))
      case .failure(let errorType):
        self = .failure(APIClientError.unknownError(errorType))
      }
    }
  }
}
