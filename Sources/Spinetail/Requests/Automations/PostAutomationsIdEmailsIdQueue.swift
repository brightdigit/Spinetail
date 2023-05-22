import Foundation
import PrchModel

public extension Automations {
  /**
   Add subscriber to workflow email

   Manually add a subscriber to a workflow, bypassing the default trigger settings. You can also use this endpoint to trigger a series of automated emails in an API 3.0 workflow type.
   */
  struct PostAutomationsIdEmailsIdQueue: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails/{workflow_email_id}/queue"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(workflowEmailId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the Automation workflow. */
    public var workflowId: String

    /** The unique id for the Automation workflow email. */
    public var workflowEmailId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postAutomationsIdEmailsIdQueue", tag: "automations", method: "POST", path: "/automations/{workflow_id}/emails/{workflow_email_id}/queue", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = SubscriberInAutomationQueue2Model
    public typealias BodyType = SubscriberInAutomationQueue1Model

    public let body: SubscriberInAutomationQueue1Model
  }
}
