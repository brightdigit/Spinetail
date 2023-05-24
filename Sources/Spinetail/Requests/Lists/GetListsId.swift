import Foundation
import PrchModel

public extension Lists {
  /**
   Get list info

   Get information about a specific list in your Mailchimp account. Results include list members who have signed up but haven't confirmed their subscription yet and unsubscribed or cleaned.
   */
  struct GetListsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique ID for the list. */
    public var listId: String

    /** Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. */
    public var includeTotalContacts: Bool?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let includeTotalContacts = self.includeTotalContacts {
        params["include_total_contacts"] = String(describing: includeTotalContacts)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = SubscriberList
    public typealias BodyType = Empty
  }
}
