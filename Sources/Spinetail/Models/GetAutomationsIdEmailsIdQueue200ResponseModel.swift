import Foundation

import PrchModel
/** An automation workflow */
public struct GetAutomationsIdEmailsIdQueue200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A string that uniquely identifies an email in an Automation workflow. */
  public var emailId: String?

  /** An array of objects, each representing a subscriber queue for an email in an Automation workflow. */
  public var queue: [SubscriberInAutomationQueueModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?

  public init(links: [ResourceLinkModel]? = nil, emailId: String? = nil, queue: [SubscriberInAutomationQueueModel]? = nil, totalItems: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.emailId = emailId
    self.queue = queue
    self.totalItems = totalItems
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailId = "email_id"
    case queue
    case totalItems = "total_items"
    case workflowId = "workflow_id"
  }
}
