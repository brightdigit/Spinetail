import Foundation

/** A list of template folders */

public struct TemplateFolders: Codable {
  /** An array of objects representing template folders. */
  public var folders: [TemplateFolder3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(folders: [TemplateFolder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.folders = folders
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case folders
    case totalItems = "total_items"
    case links = "_links"
  }
}
