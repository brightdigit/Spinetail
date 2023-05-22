import Foundation
import PrchModel

public extension AutomationsAutomationsCampaignFolders {
  /**
   Delete campaign folder

   Delete a specific campaign folder, and mark all the campaigns in the folder as 'unfiled'.
   */
  struct DeleteCampaignFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaign-folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the campaign folder. */
    public var folderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteCampaignFoldersId", tag: "campaignFolders", method: "DELETE", path: "/campaign-folders/{folder_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
