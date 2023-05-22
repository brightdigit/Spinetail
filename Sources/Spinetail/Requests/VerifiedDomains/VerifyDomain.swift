import Foundation
import PrchModel

public extension AutomationsAutomationsVerifiedDomains {
  /**
   Verify domain

   Verify a domain for sending.
   */
  struct VerifyDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains/{domain_name}/actions/verify"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(domainName)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The domain name. */
    public var domainName: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "verifyDomain", tag: "verifiedDomains", method: "POST", path: "/verified-domains/{domain_name}/actions/verify", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = VerifyaDomainForSendingModel

    public let body: VerifyaDomainForSendingModel
  }
}
