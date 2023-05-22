import Foundation

import PrchModel
public struct GetReportingSurveysIdQuestionsIdAnswers200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of answers for a question on the survey. */
  public var answers: [SurveyQuestionAnswerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, answers: [SurveyQuestionAnswerModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.answers = answers
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case answers
    case totalItems = "total_items"
  }
}
