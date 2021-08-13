import Foundation

/** The top email clients based on user-agent strings. */

public struct EmailClients: Codable {
  /** An array of top email clients. */
  public var clients: [EmailClient]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(clients: [EmailClient]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.clients = clients
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case clients
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
