import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   Add domain to account

   Add a domain to the account.
   */
  struct CreateVerifiedDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "createVerifiedDomain", tag: "verifiedDomains", method: "POST", path: "/verified-domains", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = VerifiedDomains2Model

    public let body: VerifiedDomains2Model
  }
}
