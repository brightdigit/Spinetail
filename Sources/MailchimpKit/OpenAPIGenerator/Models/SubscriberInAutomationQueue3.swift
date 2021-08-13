import Foundation

/** Information about subscribers in an Automation email queue. */

public struct SubscriberInAutomationQueue3: Codable {
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var _id: String?
  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?
  /** A string that uniquely identifies an email in an Automation workflow. */
  public var emailId: String?
  /** A string that uniquely identifies a list. */
  public var listId: String?
  /** The list member&#x27;s email address. */
  public var emailAddress: String
  /** The date and time of the next send for the workflow email in ISO 8601 format. */
  public var nextSend: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, workflowId: String? = nil, emailId: String? = nil, listId: String? = nil, emailAddress: String, nextSend: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.workflowId = workflowId
    self.emailId = emailId
    self.listId = listId
    self.emailAddress = emailAddress
    self.nextSend = nextSend
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case workflowId = "workflow_id"
    case emailId = "email_id"
    case listId = "list_id"
    case emailAddress = "email_address"
    case nextSend = "next_send"
    case links = "_links"
  }
}
