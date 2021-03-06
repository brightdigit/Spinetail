import Foundation
import Prch

public extension FileManager {
  /**
   List stored files

   Get a list of available images and files stored in the File Manager for the account.
   */
  enum GetFileManagerFiles {
    public static let service = Service<Response>(id: "getFileManagerFiles", tag: "fileManager", method: "GET", path: "/file-manager/files", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case addedDate = "added_date"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

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

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.type = type
          self.createdBy = createdBy
          self.beforeCreatedAt = beforeCreatedAt
          self.sinceCreatedAt = sinceCreatedAt
          self.sortField = sortField
          self.sortDir = sortDir
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetFileManagerFiles.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, createdBy: String? = nil, beforeCreatedAt: String? = nil, sinceCreatedAt: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, createdBy: createdBy, beforeCreatedAt: beforeCreatedAt, sinceCreatedAt: sinceCreatedAt, sortField: sortField, sortDir: sortDir)
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
        if let type = options.type {
          params["type"] = type
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
        if let sortField = options.sortField?.encode() {
          params["sort_field"] = sortField
        }
        if let sortDir = options.sortDir?.encode() {
          params["sort_dir"] = sortDir
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
      /** A list of available images and files stored in the File Manager for the account. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /**  A list of files and images in an account. */
        public var files: [Files]?

        /** The total size of all File Manager files in bytes. */
        public var totalFileSize: Double?

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

        /** An individual file listed in the File Manager. */
        public struct Files: Model {
          /** The type of file in the File Manager. */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case image
            case file
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The date and time a file was added to the File Manager in ISO 8601 format. */
          public var createdAt: Date?

          /** The username of the profile that uploaded the file. */
          public var createdBy: String?

          /** The id of the folder. */
          public var folderId: Int?

          /** The url of the full-size file. */
          public var fullSizeURL: URL?

          /** The height of an image. */
          public var height: Int?

          /** The unique id of the file. */
          public var id: Int?

          /** The name of the file. */
          public var name: String?

          /** The size of the file in bytes. */
          public var size: Int?

          /** The url of the thumbnail preview. */
          public var thumbnailURL: URL?

          /** The type of file in the File Manager. */
          public var type: `Type`?

          /** The width of the image. */
          public var width: Int?

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

          public init(links: [Links]? = nil, createdAt: Date? = nil, createdBy: String? = nil, folderId: Int? = nil, fullSizeURL: URL? = nil, height: Int? = nil, id: Int? = nil, name: String? = nil, size: Int? = nil, thumbnailURL: URL? = nil, type: Type? = nil, width: Int? = nil) {
            self.links = links
            self.createdAt = createdAt
            self.createdBy = createdBy
            self.folderId = folderId
            self.fullSizeURL = fullSizeURL
            self.height = height
            self.id = id
            self.name = name
            self.size = size
            self.thumbnailURL = thumbnailURL
            self.type = type
            self.width = width
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            createdAt = try container.decodeIfPresent("created_at")
            createdBy = try container.decodeIfPresent("created_by")
            folderId = try container.decodeIfPresent("folder_id")
            fullSizeURL = try container.decodeIfPresent("full_size_url")
            height = try container.decodeIfPresent("height")
            id = try container.decodeIfPresent("id")
            name = try container.decodeIfPresent("name")
            size = try container.decodeIfPresent("size")
            thumbnailURL = try container.decodeIfPresent("thumbnail_url")
            type = try container.decodeIfPresent("type")
            width = try container.decodeIfPresent("width")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(createdBy, forKey: "created_by")
            try container.encodeIfPresent(folderId, forKey: "folder_id")
            try container.encodeIfPresent(fullSizeURL, forKey: "full_size_url")
            try container.encodeIfPresent(height, forKey: "height")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(size, forKey: "size")
            try container.encodeIfPresent(thumbnailURL, forKey: "thumbnail_url")
            try container.encodeIfPresent(type, forKey: "type")
            try container.encodeIfPresent(width, forKey: "width")
          }
        }

        public init(links: [Links]? = nil, files: [Files]? = nil, totalFileSize: Double? = nil, totalItems: Int? = nil) {
          self.links = links
          self.files = files
          self.totalFileSize = totalFileSize
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          files = try container.decodeArrayIfPresent("files")
          totalFileSize = try container.decodeIfPresent("total_file_size")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(files, forKey: "files")
          try container.encodeIfPresent(totalFileSize, forKey: "total_file_size")
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
