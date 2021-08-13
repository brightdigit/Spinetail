import Foundation

/** A summary of the emails in an Automation workflow. */

public struct AutomationEmails: Codable {
  /** An array of objects, each representing an email in an Automation workflow. */
  public var emails: [AutomationWorkflowEmail1]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(emails: [AutomationWorkflowEmail1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.emails = emails
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case emails
    case totalItems = "total_items"
    case links = "_links"
  }
}
