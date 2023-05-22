import Foundation

import PrchModel
public struct GetReportingSurveysIdResponses200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of responses to a survey. */
  public var responses: [SurveyRespondentsModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, responses: [SurveyRespondentsModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.responses = responses
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case responses
    case totalItems = "total_items"
  }
}
