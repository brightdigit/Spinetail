import Foundation
import PrchModel

public extension AutomationsAutomationsCampaigns {
  /**
   Delete campaign feedback message

   Remove a specific feedback message for a campaign.
   */
  struct DeleteCampaignsIdFeedbackId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback/{feedback_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(feedbackId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the campaign. */
    public var campaignId: String

    /** The unique id for the feedback message. */
    public var feedbackId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteCampaignsIdFeedbackId", tag: "campaigns", method: "DELETE", path: "/campaigns/{campaign_id}/feedback/{feedback_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
