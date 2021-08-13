import Foundation

/** An array of Chimp Chatter messages. There&#x27;s a maximum of 200 messages present for an account. */

public struct InlineResponse200: Codable {
  /** An array of Chimp Chatter messages. There&#x27;s a maximum of 200 messages present for an account. */
  public var chimpChatter: [ChimpChatter]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(chimpChatter: [ChimpChatter]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.chimpChatter = chimpChatter
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case chimpChatter = "chimp_chatter"
    case totalItems = "total_items"
    case links = "_links"
  }
}
