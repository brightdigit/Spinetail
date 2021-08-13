import Foundation

/** Campaign feedback details. */

public struct CampaignAdvice: Codable {
  public enum ModelType: String, Codable {
    case negative
    case positive
    case neutral
  }

  /** The sentiment type for a feedback message. */
  public var type: ModelType?
  /** The advice message. */
  public var message: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(type: ModelType? = nil, message: String? = nil, links: [ResourceLink]? = nil) {
    self.type = type
    self.message = message
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case message
    case links = "_links"
  }
}
