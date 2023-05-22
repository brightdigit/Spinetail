import Foundation
import PrchModel

public extension Templates {
  /**
   Delete template

   Delete a specific template.
   */
  struct DeleteTemplatesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/templates/{template_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "template_id" + "}", with: "\(templateId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the template. */
    public var templateId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteTemplatesId", tag: "templates", method: "DELETE", path: "/templates/{template_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
