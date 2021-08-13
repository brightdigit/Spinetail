import Foundation

/** The last 50 Goal events for a member on a specific list. */

public struct CollectionOfMemberActivityEvents: Codable {
  /** The last 50 Goal events triggered by a member. */
  public var goals: [Goal]?
  /** The list id. */
  public var listId: String?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(goals: [Goal]? = nil, listId: String? = nil, emailId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.goals = goals
    self.listId = listId
    self.emailId = emailId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case goals
    case listId = "list_id"
    case emailId = "email_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
