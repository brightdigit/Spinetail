import Foundation
import PrchModel

public extension AutomationsAutomationsAccountExport {
  /**
   Get account export info

   Get information about a specific account export.
   */
  struct GetAccountExportId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/account-exports/{export_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "export_id" + "}", with: "\(exportId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique id for the account export. */
    public var exportId: String

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

    // public static let service = APIService<Response>(id: "getAccountExportId", tag: "accountExport", method: "GET", path: "/account-exports/{export_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = AccountExportsInnerModel
    public typealias BodyType = Empty
  }
}
