import Foundation
import PrchModel

public extension BatchWebhooks {
  /**
   Add batch webhook

   Configure a webhook that will fire whenever any batch request completes processing.  You may only have a maximum of 20 batch webhooks.
   */
  struct PostBatchWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batch-webhooks"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postBatchWebhooks", tag: "batchWebhooks", method: "POST", path: "/batch-webhooks", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchWebhookModel
    public typealias BodyType = BatchWebhook1Model

    public let body: BatchWebhook1Model
  }
}
