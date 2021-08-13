import Foundation

/** A collection of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to &#x27;report spam&#x27; in their email program. */

public struct AbuseComplaints: Codable {
  /** An array of objects, each representing an abuse report resource. */
  public var abuseReports: [AbuseComplaint3]?
  /** The list id for the abuse report. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(abuseReports: [AbuseComplaint3]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.abuseReports = abuseReports
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case abuseReports = "abuse_reports"
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
