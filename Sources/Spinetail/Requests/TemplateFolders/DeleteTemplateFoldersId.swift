import Foundation
import PrchModel

public extension AutomationsAutomationsTemplateFolders {
  /**
   Delete template folder

   Delete a specific template folder, and mark all the templates in the folder as 'unfiled'.
   */
  struct DeleteTemplateFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/template-folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the template folder. */
    public var folderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteTemplateFoldersId", tag: "templateFolders", method: "DELETE", path: "/template-folders/{folder_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
