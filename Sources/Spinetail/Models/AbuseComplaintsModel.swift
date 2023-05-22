import Foundation

import PrchModel
/** A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program. */
public struct AbuseComplaintsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an abuse report resource. */
  public var abuseReports: [AbuseComplaintModel]?

  /** The list id for the abuse report. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, abuseReports: [AbuseComplaintModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.abuseReports = abuseReports
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case abuseReports = "abuse_reports"
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
