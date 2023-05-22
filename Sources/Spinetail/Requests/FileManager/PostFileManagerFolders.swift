import Foundation
import PrchModel

public extension AutomationsAutomationsFileManager {
  /**
   Add folder

   Create a new folder in the File Manager.
   */
  struct PostFileManagerFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postFileManagerFolders", tag: "fileManager", method: "POST", path: "/file-manager/folders", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = GalleryFolderModel
    public typealias BodyType = GalleryFolder1Model

    public let body: GalleryFolder1Model
  }
}
