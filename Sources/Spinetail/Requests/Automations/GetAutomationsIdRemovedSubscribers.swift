import Foundation
import PrchModel

public extension AutomationsAutomationsAutomations {
  /**
   List subscribers removed from workflow

   Get information about subscribers who were removed from a classic automation workflow.
   */
  struct GetAutomationsIdRemovedSubscribers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/removed-subscribers"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique id for the Automation workflow. */
    public var workflowId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getAutomationsIdRemovedSubscribers", tag: "automations", method: "GET", path: "/automations/{workflow_id}/removed-subscribers", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = RemovedSubscribersModel
    public typealias BodyType = Empty
  }
}
