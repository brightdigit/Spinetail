import Foundation
import PrchModel

public extension Automations {
  /**
   List automations

   Get a summary of an account's classic automations.
   */
  struct GetAutomations: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/automations"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public var count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public var offset: Int?

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeCreateTime: MailchimpOptionalDate

    /** Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceCreateTime: MailchimpOptionalDate

    /** Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeStartTime: MailchimpOptionalDate

    /** Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceStartTime: MailchimpOptionalDate

    /** Restrict the results to automations with the specified status. */
    public var status: Status?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let beforeCreateTime = self.beforeCreateTime.value {
        params["before_create_time"] = String(describing: beforeCreateTime)
      }
      if let sinceCreateTime = self.sinceCreateTime.value {
        params["since_create_time"] = String(describing: sinceCreateTime)
      }
      if let beforeStartTime = self.beforeStartTime.value {
        params["before_start_time"] = String(describing: beforeStartTime)
      }
      if let sinceStartTime = self.sinceStartTime.value {
        params["since_start_time"] = String(describing: sinceStartTime)
      }
      if let status = self.status {
        params["status"] = String(describing: status)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** Restrict the results to automations with the specified status. */
    public enum Status: String, Codable, Equatable, CaseIterable {
      case save
      case paused
      case sending
    }

    public typealias SuccessType = GetAutomations200Response
    public typealias BodyType = Empty
  }
}
