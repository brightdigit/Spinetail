import Foundation


#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public protocol Task {}

extension URLSessionDataTask: Task {}
