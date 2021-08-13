import Foundation

/// Basic struct to parse any possible API error responses
public struct APIErrorResponse: Codable {
  public let title: String?
  public let status: Int
  public let type: String?
  public let detail: String?
}
