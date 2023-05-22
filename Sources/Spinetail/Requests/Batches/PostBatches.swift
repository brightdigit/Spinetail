import Foundation
import PrchModel

public extension AutomationsAutomationsBatches {
  /**
   Start batch operation

   Begin processing a batch operations request.
   */
  struct PostBatches: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batches"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postBatches", tag: "batches", method: "POST", path: "/batches", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchModel
    public typealias BodyType = PostBatchesRequestModel

    public let body: PostBatchesRequestModel
  }
}
