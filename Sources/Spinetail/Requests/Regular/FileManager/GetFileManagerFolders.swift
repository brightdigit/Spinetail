import Foundation
import Prch

public extension FileManager {
  /**
   List folders

   Get a list of all folders in the File Manager.
   */
  enum GetFileManagerFolders {
    public static let service = Service<Response>(id: "getFileManagerFolders", tag: "fileManager", method: "GET", path: "/file-manager/folders", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?

        /** The Mailchimp account user who created the File Manager file. */
        public var createdBy: String?

        /** Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var beforeCreatedAt: String?

        /** Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var sinceCreatedAt: String?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.createdBy = createdBy
          self.beforeCreatedAt = beforeCreatedAt
          self.sinceCreatedAt = sinceCreatedAt
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetFileManagerFolders.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, createdBy: createdBy, beforeCreatedAt: beforeCreatedAt, sinceCreatedAt: sinceCreatedAt)
        self.init(options: options)
      }

      public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        if let count = options.count {
          params["count"] = count
        }
        if let offset = options.offset {
          params["offset"] = offset
        }
        if let createdBy = options.createdBy {
          params["created_by"] = createdBy
        }
        if let beforeCreatedAt = options.beforeCreatedAt {
          params["before_created_at"] = beforeCreatedAt
        }
        if let sinceCreatedAt = options.sinceCreatedAt {
          params["since_created_at"] = sinceCreatedAt
        }
        return params
      }
    }

    public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
      public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case let .defaultResponse(statusCode: statusCode, response):
          return .defaultResponse(statusCode, response)

        case let .status200(response):
          return .success(response)
        }
      }

      public typealias APIType = Mailchimp.API
      /** A list of all folders in the File Manager. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** A list of all folders in the File Manager. */
        public var folders: [Folders]?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
        public struct Links: Model {
          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public enum Method: String, Codable, Equatable, CaseIterable {
            case get = "GET"
            case post = "POST"
            case put = "PUT"
            case patch = "PATCH"
            case delete = "DELETE"
            case options = "OPTIONS"
            case head = "HEAD"
          }

          /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
          public var href: String?

          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public var method: Method?

          /** As with an HTML 'rel' attribute, this describes the type of link. */
          public var rel: String?

          /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
          public var schema: String?

          /** For GETs, this is a URL representing the schema that the response should conform to. */
          public var targetSchema: String?

          public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
            self.href = href
            self.method = method
            self.rel = rel
            self.schema = schema
            self.targetSchema = targetSchema
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            href = try container.decodeIfPresent("href")
            method = try container.decodeIfPresent("method")
            rel = try container.decodeIfPresent("rel")
            schema = try container.decodeIfPresent("schema")
            targetSchema = try container.decodeIfPresent("targetSchema")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(href, forKey: "href")
            try container.encodeIfPresent(method, forKey: "method")
            try container.encodeIfPresent(rel, forKey: "rel")
            try container.encodeIfPresent(schema, forKey: "schema")
            try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
          }
        }

        /** An individual folder listed in the File Manager. */
        public struct Folders: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The date and time a file was added to the File Manager in ISO 8601 format. */
          public var createdAt: Date?

          /** The username of the profile that created the folder. */
          public var createdBy: String?

          /** The number of files in the folder. */
          public var fileCount: Int?

          /** The unique id for the folder. */
          public var id: Int?

          /** The name of the folder. */
          public var name: String?

          /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
          public struct Links: Model {
            /** The HTTP method that should be used when accessing the URL defined in 'href'. */
            public enum Method: String, Codable, Equatable, CaseIterable {
              case get = "GET"
              case post = "POST"
              case put = "PUT"
              case patch = "PATCH"
              case delete = "DELETE"
              case options = "OPTIONS"
              case head = "HEAD"
            }

            /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
            public var href: String?

            /** The HTTP method that should be used when accessing the URL defined in 'href'. */
            public var method: Method?

            /** As with an HTML 'rel' attribute, this describes the type of link. */
            public var rel: String?

            /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
            public var schema: String?

            /** For GETs, this is a URL representing the schema that the response should conform to. */
            public var targetSchema: String?

            public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
              self.href = href
              self.method = method
              self.rel = rel
              self.schema = schema
              self.targetSchema = targetSchema
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              href = try container.decodeIfPresent("href")
              method = try container.decodeIfPresent("method")
              rel = try container.decodeIfPresent("rel")
              schema = try container.decodeIfPresent("schema")
              targetSchema = try container.decodeIfPresent("targetSchema")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(href, forKey: "href")
              try container.encodeIfPresent(method, forKey: "method")
              try container.encodeIfPresent(rel, forKey: "rel")
              try container.encodeIfPresent(schema, forKey: "schema")
              try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
            }
          }

          public init(links: [Links]? = nil, createdAt: Date? = nil, createdBy: String? = nil, fileCount: Int? = nil, id: Int? = nil, name: String? = nil) {
            self.links = links
            self.createdAt = createdAt
            self.createdBy = createdBy
            self.fileCount = fileCount
            self.id = id
            self.name = name
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            createdAt = try container.decodeIfPresent("created_at")
            createdBy = try container.decodeIfPresent("created_by")
            fileCount = try container.decodeIfPresent("file_count")
            id = try container.decodeIfPresent("id")
            name = try container.decodeIfPresent("name")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(createdBy, forKey: "created_by")
            try container.encodeIfPresent(fileCount, forKey: "file_count")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(name, forKey: "name")
          }
        }

        public init(links: [Links]? = nil, folders: [Folders]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.folders = folders
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          folders = try container.decodeArrayIfPresent("folders")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(folders, forKey: "folders")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
        }
      }

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var failure: DefaultResponse? {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return nil
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }
    }
  }
}
