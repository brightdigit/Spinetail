import Foundation
import PrchModel

public extension AutomationsAutomationsBatchWebhooks {
  /**
   Delete batch webhook

   Remove a batch webhook. Webhooks will no longer be sent to the given URL.
   */
  struct DeleteBatchWebhookId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batch-webhooks/{batch_webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_webhook_id" + "}", with: "\(batchWebhookId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the batch webhook. */
    public var batchWebhookId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteBatchWebhookId", tag: "batchWebhooks", method: "DELETE", path: "/batch-webhooks/{batch_webhook_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
