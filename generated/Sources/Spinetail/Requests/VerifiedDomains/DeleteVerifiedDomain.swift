//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STVerifiedDomains {

    /**
    Delete domain

    Delete a verified domain from the account.
    */
    public struct DeleteVerifiedDomain : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/verified-domains/{domain_name}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(self.domainName)")
        }

        public var method : RequestMethod {
            .DELETE
        }


        /** The domain name. */
        public var domainName: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "deleteVerifiedDomain", tag: "verifiedDomains", method: "DELETE", path: "/verified-domains/{domain_name}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
