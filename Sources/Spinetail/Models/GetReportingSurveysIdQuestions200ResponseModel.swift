import Foundation

import PrchModel
public struct GetReportingSurveysIdQuestions200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of reports for each question on the survey. */
  public var questions: [SurveyQuestionReportModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, questions: [SurveyQuestionReportModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.questions = questions
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case questions
    case totalItems = "total_items"
  }
}
