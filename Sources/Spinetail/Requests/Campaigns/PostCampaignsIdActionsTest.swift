import Foundation
import PrchModel

public extension AutomationsAutomationsCampaigns {
  /**
   Send test email

   Send a test email.
   */
  struct PostCampaignsIdActionsTest: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns/{campaign_id}/actions/test"

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

    // public static let service = APIService<Response>(id: "postCampaignsIdActionsTest", tag: "campaigns", method: "POST", path: "/campaigns/{campaign_id}/actions/test", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = PostCampaignsIdActionsTestRequestModel

    public let body: PostCampaignsIdActionsTestRequestModel
  }
}
