import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   Get domain info

   Get the details for a single domain on the account.
   */
  struct GetVerifiedDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains/{domain_name}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(domainName)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The domain name. */
    public var domainName: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getVerifiedDomain", tag: "verifiedDomains", method: "GET", path: "/verified-domains/{domain_name}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = Empty
  }
}
