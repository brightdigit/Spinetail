import Foundation
import PrchModel

public extension Campaigns {
  /**
   Update campaign feedback message

   Update a specific feedback message for a campaign.
   */
  struct PatchCampaignsIdFeedbackId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/feedback/{feedback_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(feedbackId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the campaign. */
    public var campaignId: String

    /** The unique id for the feedback message. */
    public var feedbackId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignFeedback2
    public typealias BodyType = CampaignFeedback3

    public let body: CampaignFeedback3
  }
}
