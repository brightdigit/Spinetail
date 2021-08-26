import Foundation


#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public protocol Session {
  associatedtype RequestType
  func createRequest<ResponseType: APIResponseValue>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String: String]) throws -> RequestType
  @discardableResult func beginRequest(_ request: RequestType, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task
}
