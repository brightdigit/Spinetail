import Foundation
import PrchModel

public extension AutomationsAutomationsLandingPages {
  /**
   Add landing page

   Create a new Mailchimp landing page.
   */
  struct PostAllLandingPages: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    /** Will create the Landing Page using the account's Default List instead of requiring a list_id. */
    public var useDefaultList: Bool?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let useDefaultList = self.useDefaultList {
        params["use_default_list"] = String(describing: useDefaultList)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postAllLandingPages", tag: "landingPages", method: "POST", path: "/landing-pages", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = LandingPageModel
    public typealias BodyType = LandingPage1Model

    public let body: LandingPage1Model
  }
}
