import Foundation

/** A summary of a subscriber removed from an Automation workflow. */

public struct SubscriberRemovedFromAutomationWorkflow: Codable {
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var _id: String?
  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?
  /** A string that uniquely identifies a list. */
  public var listId: String?
  /** The list member&#x27;s email address. */
  public var emailAddress: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, workflowId: String? = nil, listId: String? = nil, emailAddress: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.workflowId = workflowId
    self.listId = listId
    self.emailAddress = emailAddress
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case workflowId = "workflow_id"
    case listId = "list_id"
    case emailAddress = "email_address"
    case links = "_links"
  }
}
