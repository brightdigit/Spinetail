import Foundation
import PrchModel

public extension Lists {
  /**
   Add list

   Create a new list in your Mailchimp account.
   */
  struct PostLists: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postLists", tag: "lists", method: "POST", path: "/lists", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = SubscriberListModel
    public typealias BodyType = SubscriberList1Model

    public let body: SubscriberList1Model
  }
}
