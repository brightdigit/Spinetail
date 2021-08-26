import Foundation
import Prch

#if canImport(FoundationNetworking)
  import Foundation
import PrchNetworking
#endif

public protocol Session {
  associatedtype RequestType
  func createRequest<ResponseType: APIResponseValue>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders header: [String: String]) throws -> RequestType
  @discardableResult func beginRequest(_ request: RequestType, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task
}
