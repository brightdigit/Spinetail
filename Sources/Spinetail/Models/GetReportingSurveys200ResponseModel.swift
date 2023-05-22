import Foundation

import PrchModel
public struct GetReportingSurveys200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The surveys that have reports available. */
  public var surveys: [SurveyReportModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, surveys: [SurveyReportModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.surveys = surveys
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case surveys
    case totalItems = "total_items"
  }
}
