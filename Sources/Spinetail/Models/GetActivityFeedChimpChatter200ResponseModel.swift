import Foundation

import PrchModel
/** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
public struct GetActivityFeedChimpChatter200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
  public var chimpChatter: [ChimpChatterModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, chimpChatter: [ChimpChatterModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.chimpChatter = chimpChatter
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case chimpChatter = "chimp_chatter"
    case totalItems = "total_items"
  }
}
