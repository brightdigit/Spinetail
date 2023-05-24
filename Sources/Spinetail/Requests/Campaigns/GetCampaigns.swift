import Foundation
import PrchModel

public extension Campaigns {
  /**
   List campaigns

   Get all campaigns in an account.
   */
  struct GetCampaigns: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/campaigns"

    public var path: String {
      Self.pathTemplate
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

    /** The campaign type. */
    public var type: `Type`?

    /** The status of the campaign. */
    public var status: Status?

    /** Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeSendTime: MailchimpOptionalDate = nil

    /** Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceSendTime: MailchimpOptionalDate = nil

    /** Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeCreateTime: MailchimpOptionalDate = nil

    /** Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceCreateTime: MailchimpOptionalDate = nil

    /** The unique id for the list. */
    public var listId: String?

    /** The unique folder id. */
    public var folderId: String?

    /** Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address. */
    public var memberId: String?

    /** Returns files sorted by the specified field. */
    public var sortField: SortField?

    /** Determines the order direction for sorted results. */
    public var sortDir: SortDir?

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
      if let status = self.status {
        params["status"] = String(describing: status)
      }
      if let beforeSendTime = self.beforeSendTime.value {
        params["before_send_time"] = String(describing: beforeSendTime)
      }
      if let sinceSendTime = self.sinceSendTime.value {
        params["since_send_time"] = String(describing: sinceSendTime)
      }
      if let beforeCreateTime = self.beforeCreateTime.value {
        params["before_create_time"] = String(describing: beforeCreateTime)
      }
      if let sinceCreateTime = self.sinceCreateTime.value {
        params["since_create_time"] = String(describing: sinceCreateTime)
      }
      if let listId = self.listId {
        params["list_id"] = String(describing: listId)
      }
      if let folderId = self.folderId {
        params["folder_id"] = String(describing: folderId)
      }
      if let memberId = self.memberId {
        params["member_id"] = String(describing: memberId)
      }
      if let sortField = self.sortField {
        params["sort_field"] = String(describing: sortField)
      }
      if let sortDir = self.sortDir {
        params["sort_dir"] = String(describing: sortDir)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    /** The campaign type. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
      case regular
      case plaintext
      case absplit
      case rss
      case variate
    }

    /** The status of the campaign. */
    public enum Status: String, Codable, Equatable, CaseIterable {
      case save
      case paused
      case schedule
      case sending
      case sent
    }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case createTime = "create_time"
      case sendTime = "send_time"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = GetCampaigns200Response
    public typealias BodyType = Empty
  }
}