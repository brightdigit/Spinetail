import Foundation
import PrchModel

public extension Lists {
  /**
   List segments

   Get information about all available segments for a specific list.
   */
  struct PreviewASegment: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments"

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

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public var count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public var offset: Int?

    /** The unique ID for the list. */
    public var listId: String

    /** Limit results based on segment type. */
    public var type: String?

    /** Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceCreatedAt: String?

    /** Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeCreatedAt: String?

    /** Include cleaned members in response */
    public var includeCleaned: Bool?

    /** Include transactional members in response */
    public var includeTransactional: Bool?

    /** Include unsubscribed members in response */
    public var includeUnsubscribed: Bool?

    /** Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceUpdatedAt: String?

    /** Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeUpdatedAt: String?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let type = self.type {
        params["type"] = String(describing: type)
      }
      if let sinceCreatedAt = self.sinceCreatedAt {
        params["since_created_at"] = String(describing: sinceCreatedAt)
      }
      if let beforeCreatedAt = self.beforeCreatedAt {
        params["before_created_at"] = String(describing: beforeCreatedAt)
      }
      if let includeCleaned = self.includeCleaned {
        params["include_cleaned"] = String(describing: includeCleaned)
      }
      if let includeTransactional = self.includeTransactional {
        params["include_transactional"] = String(describing: includeTransactional)
      }
      if let includeUnsubscribed = self.includeUnsubscribed {
        params["include_unsubscribed"] = String(describing: includeUnsubscribed)
      }
      if let sinceUpdatedAt = self.sinceUpdatedAt {
        params["since_updated_at"] = String(describing: sinceUpdatedAt)
      }
      if let beforeUpdatedAt = self.beforeUpdatedAt {
        params["before_updated_at"] = String(describing: beforeUpdatedAt)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = CollectionOfSegments
    public typealias BodyType = Empty
  }
}