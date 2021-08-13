import Foundation

/** An automation workflow */

public struct InlineResponse2004: Codable {
  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?
  /** A string that uniquely identifies an email in an Automation workflow. */
  public var emailId: String?
  /** An array of objects, each representing a subscriber queue for an email in an Automation workflow. */
  public var queue: [SubscriberInAutomationQueue3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(workflowId: String? = nil, emailId: String? = nil, queue: [SubscriberInAutomationQueue3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.workflowId = workflowId
    self.emailId = emailId
    self.queue = queue
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case workflowId = "workflow_id"
    case emailId = "email_id"
    case queue
    case totalItems = "total_items"
    case links = "_links"
  }
}
