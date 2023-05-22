import Foundation
import PrchModel

public extension TemplateFolders {
  /**
   Add template folder

   Create a new template folder.
   */
  struct PostTemplateFolders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/template-folders"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postTemplateFolders", tag: "templateFolders", method: "POST", path: "/template-folders", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = TemplateFolderModel
    public typealias BodyType = TemplateFolder1Model

    public let body: TemplateFolder1Model
  }
}
