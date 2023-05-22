import Foundation
import PrchModel

public extension Campaigns {
  /**
   Add campaign feedback

   Add feedback on a specific campaign.
   */
  struct PostCampaignsIdFeedback: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the campaign. */
    public var campaignId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postCampaignsIdFeedback", tag: "campaigns", method: "POST", path: "/campaigns/{campaign_id}/feedback", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = CampaignFeedback2Model
    public typealias BodyType = CampaignFeedback1Model

    public let body: CampaignFeedback1Model
  }
}
