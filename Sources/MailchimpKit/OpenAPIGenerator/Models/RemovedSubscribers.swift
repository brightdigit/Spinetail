import Foundation

/** A summary of the subscribers who were removed from an Automation workflow. */

public struct RemovedSubscribers: Codable {
  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?
  /** An array of objects, each representing a subscriber who was removed from an Automation workflow. */
  public var subscribers: [SubscriberRemovedFromAutomationWorkflow1]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(workflowId: String? = nil, subscribers: [SubscriberRemovedFromAutomationWorkflow1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.workflowId = workflowId
    self.subscribers = subscribers
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case workflowId = "workflow_id"
    case subscribers
    case totalItems = "total_items"
    case links = "_links"
  }
}
