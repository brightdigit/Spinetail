import Foundation

public enum MemberActivityType: String, Codable {
  case open
}

public struct MemberActivityEvent: Codable {
  public let activityType: MemberActivityType
}

/** The member activity events for a given member. */

public struct MemberActivityEvents1: Codable {
  /** An array of objects, each representing a contact event. There are multiple possible types, see the [activity schema documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#activity-schemas). */
  public var activity: [MemberActivityEvent]?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** The list id. */
  public var listId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(activity: [MemberActivityEvent]? = nil, emailId: String? = nil, listId: String? = nil, links: [ResourceLink]? = nil) {
    self.activity = activity
    self.emailId = emailId
    self.listId = listId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case activity
    case emailId = "email_id"
    case listId = "list_id"
    case links = "_links"
  }
}
