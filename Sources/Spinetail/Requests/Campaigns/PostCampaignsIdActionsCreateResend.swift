import Foundation
import PrchModel

public extension AutomationsAutomationsCampaigns {
  /**
   Resend campaign

   Creates a Resend to Non-Openers version of this campaign. We will also check if this campaign meets the criteria for Resend to Non-Openers campaigns.
   */
  struct PostCampaignsIdActionsCreateResend: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/create-resend"

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

    // public static let service = APIService<Response>(id: "postCampaignsIdActionsCreateResend", tag: "campaigns", method: "POST", path: "/campaigns/{campaign_id}/actions/create-resend", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Campaign3Model
    public typealias BodyType = Empty
  }
}
