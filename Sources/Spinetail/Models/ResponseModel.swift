import Foundation

import PrchModel
/** A single question and the response to that question. */
public struct ResponseModel: Codable, Equatable, Content {
  /** The type of question this is. */
  public enum AutomationsAutomationsQuestionType: String, Codable, Equatable, CaseIterable {
    case pickOne
    case pickMany
    case range
    case text
    case email
  }

  /** The answer to this survey question. */
  public var answer: String?

  /** The survey question. */
  public var query: String?

  /** The unique ID for this question. */
  public var questionId: String?

  /** The type of question this is. */
  public var questionType: QuestionType?

  public init(answer: String? = nil, query: String? = nil, questionId: String? = nil, questionType: QuestionType? = nil) {
    self.answer = answer
    self.query = query
    self.questionId = questionId
    self.questionType = questionType
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case answer
    case query
    case questionId = "question_id"
    case questionType = "question_type"
  }
}
