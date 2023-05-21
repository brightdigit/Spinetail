//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension Campaigns {

    /**
    Update campaign settings

    Update some or all of the settings for a specific campaign.
    */
    public struct PatchCampaignsId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/campaigns/{campaign_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.campaignId)")
        }

        public var method : RequestMethod {
            .PATCH
        }


        /** The unique id for the campaign. */
        public var campaignId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "patchCampaignsId", tag: "campaigns", method: "PATCH", path: "/campaigns/{campaign_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = CampaignModel
        public typealias BodyType =  Campaign2Model


        public let body: Campaign2Model
    }
}
