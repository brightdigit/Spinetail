import Foundation

import PrchModel
/** The member activity events for a given member. */
public struct MemberActivityEvents1Model: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a contact event. There are multiple possible types, see the [activity schema documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#activity-schemas). */
  public var activity: [String: String]?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var emailId: String?

  /** The list id. */
  public var listId: String?

  public init(links: [ResourceLinkModel]? = nil, activity: [String: String]? = nil, emailId: String? = nil, listId: String? = nil) {
    self.links = links
    self.activity = activity
    self.emailId = emailId
    self.listId = listId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case activity
    case emailId = "email_id"
    case listId = "list_id"
  }
}
