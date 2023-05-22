import Foundation

import PrchModel
/** The [merge fields](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct CollectionOfMergeFieldsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The list id. */
  public var listId: String?

  /** An array of objects, each representing a merge field resource. */
  public var mergeFields: [MergeFieldModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, mergeFields: [MergeFieldModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.mergeFields = mergeFields
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case mergeFields = "merge_fields"
    case totalItems = "total_items"
  }
}
