import Foundation

import PrchModel
/** View members in a specific list segment. */
public struct SegmentMembersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a specific list member. */
  public var members: [ListMembers1Model]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, members: [ListMembers1Model]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.members = members
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case members
    case totalItems = "total_items"
  }
}
