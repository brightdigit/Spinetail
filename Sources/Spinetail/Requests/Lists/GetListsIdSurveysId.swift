import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Get survey

   Get details about a specific survey.
   */
  struct GetListsIdSurveysId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/surveys/{survey_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "survey_id" + "}", with: "\(surveyId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The ID of the survey. */
    public var surveyId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getListsIdSurveysId", tag: "lists", method: "GET", path: "/lists/{list_id}/surveys/{survey_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
