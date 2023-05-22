import Foundation
import PrchModel

public extension Reporting {
  /**
   List answers for question

   Get answers for a survey question.
   */
  struct GetReportingSurveysIdQuestionsIdAnswers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/questions/{question_id}/answers"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)").replacingOccurrences(of: "{" + "question_id" + "}", with: "\(questionId)")
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

    /** The ID of the survey question. */
    public var questionId: String

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
      if let respondentFamiliarityIs = self.respondentFamiliarityIs {
        params["respondent_familiarity_is"] = String(describing: respondentFamiliarityIs)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getReportingSurveysIdQuestionsIdAnswers", tag: "reporting", method: "GET", path: "/reporting/surveys/{outreach_id}/questions/{question_id}/answers", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** Filter survey responses by familiarity of the respondents. */
    public enum RespondentFamiliarityIs: String, Codable, Equatable, CaseIterable {
      case new
      case known
      case unknown
    }

    public typealias SuccessType = GetReportingSurveysIdQuestionsIdAnswers200ResponseModel
    public typealias BodyType = Empty
  }
}
