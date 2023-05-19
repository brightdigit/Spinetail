//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STCampaigns {

    /**
    Get campaign content

    Get the the HTML and plain-text content for a campaign.
    */
    public struct GetCampaignsIdContent : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/campaigns/{campaign_id}/content"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.campaignId)")
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


        //public static let service = APIService<Response>(id: "getCampaignsIdContent", tag: "campaigns", method: "GET", path: "/campaigns/{campaign_id}/content", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = CampaignContentModel
        public typealias BodyType =  Empty

    }
}
