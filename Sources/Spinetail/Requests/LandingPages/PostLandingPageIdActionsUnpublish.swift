import Foundation
import PrchModel

public extension AutomationsAutomationsLandingPages {
  /**
   Unpublish landing page

   Unpublish a landing page that is in draft or has been published.
   */
  struct PostLandingPageIdActionsUnpublish: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages/{page_id}/actions/unpublish"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(pageId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the page. */
    public var pageId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postLandingPageIdActionsUnpublish", tag: "landingPages", method: "POST", path: "/landing-pages/{page_id}/actions/unpublish", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
