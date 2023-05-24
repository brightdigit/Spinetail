import Foundation
import PrchModel

public extension Campaigns {
  /**
   Set campaign content

   Set the content for a campaign.
   */
  struct PutCampaignsIdContent: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/content"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(campaignId)")
    }

    public var method: RequestMethod {
      .PUT
    }

    /** The unique id for the campaign. */
    public var campaignId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CampaignContent
    public typealias BodyType = CampaignContent1

    public let body: CampaignContent1
  }
}
