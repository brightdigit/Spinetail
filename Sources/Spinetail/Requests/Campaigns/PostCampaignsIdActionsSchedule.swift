import Foundation
import PrchModel

public extension Campaigns {
  /**
   Schedule campaign

   Schedule a campaign for delivery. If you're using Multivariate CampaignsModel to test send times or sending RSS CampaignsModel, use the send action instead.
   */
  struct PostCampaignsIdActionsSchedule: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/schedule"

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

    public typealias SuccessType = Empty
    public typealias BodyType = PostCampaignsIdActionsScheduleRequest

    public let body: PostCampaignsIdActionsScheduleRequest
  }
}
