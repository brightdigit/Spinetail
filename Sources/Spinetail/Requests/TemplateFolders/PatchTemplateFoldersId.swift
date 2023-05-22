import Foundation
import PrchModel

public extension TemplateFolders {
  /**
   Update template folder

   Update a specific folder used to organize templates.
   */
  struct PatchTemplateFoldersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/template-folders/{folder_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "folder_id" + "}", with: "\(folderId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the template folder. */
    public var folderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchTemplateFoldersId", tag: "templateFolders", method: "PATCH", path: "/template-folders/{folder_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = TemplateFolderModel
    public typealias BodyType = TemplateFolder1Model

    public let body: TemplateFolder1Model
  }
}
