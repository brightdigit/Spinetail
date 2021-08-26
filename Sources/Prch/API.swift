import Foundation


#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public protocol API {
  var baseURL: URL { get }
  var headers: [String: String] { get }
  var decoder: ResponseDecoder { get }
}
