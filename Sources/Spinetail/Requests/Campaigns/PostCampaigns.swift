import Foundation
import PrchModel

public extension Campaigns {
  /**
   Add campaign

   Create a new Mailchimp campaign.
   */
  struct PostCampaigns: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postCampaigns", tag: "campaigns", method: "POST", path: "/campaigns", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = CampaignModel
    public typealias BodyType = Campaign1Model

    public let body: Campaign1Model
  }
}
