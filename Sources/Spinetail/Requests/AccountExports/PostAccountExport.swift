import Foundation
import PrchModel

public extension AccountExports {
  /**
   Add export

   Create a new account export in your Mailchimp account.
   */
  struct PostAccountExport: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/account-exports"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postAccountExport", tag: "accountExports", method: "POST", path: "/account-exports", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = AccountExportsInnerModel
    public typealias BodyType = CreateAnAccountExportModel

    public let body: CreateAnAccountExportModel
  }
}
