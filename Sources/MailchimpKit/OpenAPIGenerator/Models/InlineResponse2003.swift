import Foundation

/** An array of objects, each representing an Automation workflow. */

public struct InlineResponse2003: Codable {
  /** An array of objects, each representing an Automation workflow. */
  public var automations: [AutomationWorkflow2]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(automations: [AutomationWorkflow2]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.automations = automations
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case automations
    case totalItems = "total_items"
    case links = "_links"
  }
}
