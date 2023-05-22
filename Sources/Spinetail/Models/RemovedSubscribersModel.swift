import Foundation

import PrchModel
/** A summary of the subscribers who were removed from an Automation workflow. */
public struct RemovedSubscribersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a subscriber who was removed from an Automation workflow. */
  public var subscribers: [SubscriberRemovedFromAutomationWorkflowModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?

  public init(links: [ResourceLinkModel]? = nil, subscribers: [SubscriberRemovedFromAutomationWorkflowModel]? = nil, totalItems: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.subscribers = subscribers
    self.totalItems = totalItems
    self.workflowId = workflowId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case subscribers
    case totalItems = "total_items"
    case workflowId = "workflow_id"
  }
}
