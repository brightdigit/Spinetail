import Foundation
import PrchModel

public extension AutomationsAutomationsReporting {
  /**
   Get survey response

   Get a single survey response.
   */
  struct GetReportingSurveysIdResponsesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/reporting/surveys/{outreach_id}/responses/{response_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(outreachId)").replacingOccurrences(of: "{" + "response_id" + "}", with: "\(responseId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The outreach id. */
    public var outreachId: String

    /** The ID of the survey response. */
    public var responseId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getReportingSurveysIdResponsesId", tag: "reporting", method: "GET", path: "/reporting/surveys/{outreach_id}/responses/{response_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = SurveyResponseModel
    public typealias BodyType = Empty
  }
}
