//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STAccountExports {

    /**
    Add export

    Create a new account export in your Mailchimp account.
    */
    public struct PostAccountExport : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/account-exports"

        public var path: String {
            return Self.pathTemplate
        }

        public var method : RequestMethod {
            .POST
        }



        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "postAccountExport", tag: "accountExports", method: "POST", path: "/account-exports", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = AccountExportsInnerModel
        public typealias BodyType =  CreateAnAccountExportModel


        public let body: CreateAnAccountExportModel
    }
}
