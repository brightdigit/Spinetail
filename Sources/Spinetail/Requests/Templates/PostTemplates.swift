import Foundation
import PrchModel

public extension Templates {
  /**
   Add template

   Create a new template for the account. Only Classic templates are supported.
   */
  struct PostTemplates: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postTemplates", tag: "templates", method: "POST", path: "/templates", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = TemplateInstanceModel
    public typealias BodyType = TemplateInstance1Model

    public let body: TemplateInstance1Model
  }
}
