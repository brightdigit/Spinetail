import Foundation
import PrchModel

public extension Automations {
  /**
   Delete workflow email

   Removes an individual classic automation workflow email. Emails from certain workflow types, including the Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be deleted.
   */
  struct DeleteAutomationsIdEmailsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations/{workflow_id}/emails/{workflow_email_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(workflowEmailId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the Automation workflow. */
    public var workflowId: String

    /** The unique id for the Automation workflow email. */
    public var workflowEmailId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteAutomationsIdEmailsId", tag: "automations", method: "DELETE", path: "/automations/{workflow_id}/emails/{workflow_email_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
