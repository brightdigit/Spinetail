import Foundation
import PrchModel

public extension ConnectedSites {
  /**
   Get connected site

   Get information about a specific connected site.
   */
  struct GetConnectedSitesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/connected-sites/{connected_site_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(connectedSiteId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique identifier for the site. */
    public var connectedSiteId: String

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

    // public static let service = APIService<Response>(id: "getConnectedSitesId", tag: "connectedSites", method: "GET", path: "/connected-sites/{connected_site_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ConnectedSiteModel
    public typealias BodyType = Empty
  }
}
