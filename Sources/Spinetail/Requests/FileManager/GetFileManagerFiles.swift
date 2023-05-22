import Foundation
import PrchModel

public extension AutomationsAutomationsFileManager {
  /**
   List stored files

   Get a list of available images and files stored in the File Manager for the account.
   */
  struct GetFileManagerFiles: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/file-manager/files"

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

    /** The file type for the File Manager file. */
    public var type: String?

    /** The Mailchimp account user who created the File Manager file. */
    public var createdBy: String?

    /** Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var beforeCreatedAt: String?

    /** Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
    public var sinceCreatedAt: String?

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
      if let createdBy = self.createdBy {
        params["created_by"] = String(describing: createdBy)
      }
      if let beforeCreatedAt = self.beforeCreatedAt {
        params["before_created_at"] = String(describing: beforeCreatedAt)
      }
      if let sinceCreatedAt = self.sinceCreatedAt {
        params["since_created_at"] = String(describing: sinceCreatedAt)
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

    // public static let service = APIService<Response>(id: "getFileManagerFiles", tag: "fileManager", method: "GET", path: "/file-manager/files", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** Returns files sorted by the specified field. */
    public enum AutomationsAutomationsSortField: String, Codable, Equatable, CaseIterable {
      case addedDate = "added_date"
    }

    /** Determines the order direction for sorted results. */
    public enum AutomationsAutomationsSortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

    public typealias SuccessType = FileManagerModel
    public typealias BodyType = Empty
  }
}
