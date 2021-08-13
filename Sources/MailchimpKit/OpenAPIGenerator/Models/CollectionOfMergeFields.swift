import Foundation

/** The merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) for an audience. */

public struct CollectionOfMergeFields: Codable {
  /** An array of objects, each representing a merge field resource. */
  public var mergeFields: [MergeField3]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(mergeFields: [MergeField3]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.mergeFields = mergeFields
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case mergeFields = "merge_fields"
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
