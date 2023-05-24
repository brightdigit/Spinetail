import Foundation
import PrchModel

public extension Reporting {
  /**
   List survey responses

   Get responses to a survey.
   */
  struct GetReportingSurveysIdResponses: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/responses"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The outreach id. */
    public var outreachId: String

    /** The ID of the question that was answered. */
    public var answeredQuestion: Int?

    /** The ID of the option chosen to filter responses on. */
    public var choseAnswer: String?

    /** Filter survey responses by familiarity of the respondents. */
    public var respondentFamiliarityIs: RespondentFamiliarityIs?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let answeredQuestion = self.answeredQuestion {
        params["answered_question"] = String(describing: answeredQuestion)
      }
      if let choseAnswer = self.choseAnswer {
        params["chose_answer"] = String(describing: choseAnswer)
      }
      if let respondentFamiliarityIs = self.respondentFamiliarityIs {
        params["respondent_familiarity_is"] = String(describing: respondentFamiliarityIs)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Filter survey responses by familiarity of the respondents. */
    public enum RespondentFamiliarityIs: String, Codable, Equatable, CaseIterable {
      case new
      case known
      case unknown
    }

    public typealias SuccessType = GetReportingSurveysIdResponses200Response
    public typealias BodyType = Empty
  }
}
