import Foundation

import PrchModel
/** A list of tags assigned to a list member. */
public struct CollectionOfTagsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A list of tags assigned to the list member. */
  public var tags: [TagsInner2Model]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, tags: [TagsInner2Model]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.tags = tags
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case tags
    case totalItems = "total_items"
  }
}
