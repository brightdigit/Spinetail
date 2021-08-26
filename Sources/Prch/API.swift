import Foundation
import Prch

#if canImport(FoundationNetworking)
  import Foundation
import PrchNetworking
#endif

public protocol API {
  var baseURL: URL { get }
  var headers: [String: String] { get }
  var decoder: ResponseDecoder { get }
}
