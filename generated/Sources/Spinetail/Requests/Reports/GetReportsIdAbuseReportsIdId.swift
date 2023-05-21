//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension Reports {

    /**
    Get abuse report

    Get information about a specific abuse report for a campaign.
    */
    public struct GetReportsIdAbuseReportsIdId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/reports/{campaign_id}/abuse-reports/{report_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.campaignId)").replacingOccurrences(of: "{" + "report_id" + "}", with: "\(self.reportId)")
        }

        public var method : RequestMethod {
            .GET
        }


        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the campaign. */
        public var campaignId: String

        /** The id for the abuse report. */
        public var reportId: String


        public var parameters: [String : String] {
            var params: [String: String] = [:]
            if let fields = self.fields?.joined(separator: ",") {
              params["fields"] = String(describing: fields)
            }
            if let excludeFields = self.excludeFields?.joined(separator: ",") {
              params["exclude_fields"] = String(describing: excludeFields)
            }
            return params
        }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "getReportsIdAbuseReportsIdId", tag: "reports", method: "GET", path: "/reports/{campaign_id}/abuse-reports/{report_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = AbuseComplaint1Model
        public typealias BodyType =  Empty

    }
}
