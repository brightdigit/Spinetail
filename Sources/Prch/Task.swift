import Foundation
import Prch

#if canImport(FoundationNetworking)
  import Foundation
import PrchNetworking
#endif

public protocol Task {}

extension URLSessionDataTask: Task {}
