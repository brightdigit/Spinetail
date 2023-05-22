import Foundation
import PrchModel

public extension BatchWebhooks {
  /**
   Update batch webhook

   Update a webhook that will fire whenever any batch request completes processing.
   */
  struct PatchBatchWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batch-webhooks/{batch_webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_webhook_id" + "}", with: "\(batchWebhookId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the batch webhook. */
    public var batchWebhookId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchBatchWebhooks", tag: "batchWebhooks", method: "PATCH", path: "/batch-webhooks/{batch_webhook_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchWebhookModel
    public typealias BodyType = BatchWebhook2Model

    public let body: BatchWebhook2Model
  }
}
