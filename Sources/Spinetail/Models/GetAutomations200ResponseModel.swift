import Foundation

import PrchModel
/** An array of objects, each representing an Automation workflow. */
public struct GetAutomations200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an Automation workflow. */
  public var automations: [AutomationWorkflowModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, automations: [AutomationWorkflowModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.automations = automations
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case automations
    case totalItems = "total_items"
  }
}
