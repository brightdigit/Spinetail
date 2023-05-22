import Foundation
import PrchModel

public extension CampaignFolders {
  /**
   Add campaign folder

   Create a new campaign folder.
   */
  struct PostCampaignFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaign-folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postCampaignFolders", tag: "campaignFolders", method: "POST", path: "/campaign-folders", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = CampaignFolderModel
    public typealias BodyType = CampaignFolder1Model

    public let body: CampaignFolder1Model
  }
}
