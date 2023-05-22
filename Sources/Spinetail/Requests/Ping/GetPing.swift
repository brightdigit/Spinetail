import Foundation
import PrchModel

public extension AutomationsAutomationsPing {
  /**
   Ping

   A health check for the API that won't return any account-specific information.
   */
  struct GetPing: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ping"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getPing", tag: "ping", method: "GET", path: "/ping", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = APIHealthStatusModel
    public typealias BodyType = Empty
  }
}
