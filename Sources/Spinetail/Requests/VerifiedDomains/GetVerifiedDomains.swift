import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   List sending domains

   Get all of the sending domains on the account.
   */
  struct GetVerifiedDomains: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getVerifiedDomains", tag: "verifiedDomains", method: "GET", path: "/verified-domains", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = VerifiedDomains1Model
    public typealias BodyType = Empty
  }
}
