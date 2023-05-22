import Foundation
import PrchModel

public extension Batches {
  /**
   Get batch operation status

   Get the status of a batch request.
   */
  struct GetBatchesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batches/{batch_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_id" + "}", with: "\(batchId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique id for the batch operation. */
    public var batchId: String

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getBatchesId", tag: "batches", method: "GET", path: "/batches/{batch_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchModel
    public typealias BodyType = Empty
  }
}
