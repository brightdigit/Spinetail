import Foundation
import Prch

public extension FileManager {
  /**
   Add file

   Upload a new image or file to the File Manager.
   */
  enum PostFileManagerFiles {
    public static let service = Service<Response>(id: "postFileManagerFiles", tag: "fileManager", method: "POST", path: "/file-manager/files", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: BodyRequest {
      /** An individual file listed in the File Manager. */
      public struct Body: Model {
        /** The base64-encoded contents of the file. */
        public var fileData: String

        /** The name of the file. */
        public var name: String

        /** The id of the folder. */
        public var folderId: Int?

        public init(fileData: String, name: String, folderId: Int? = nil) {
          self.fileData = fileData
          self.name = name
          self.folderId = folderId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          fileData = try container.decode("file_data")
          name = try container.decode("name")
          folderId = try container.decodeIfPresent("folder_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(fileData, forKey: "file_data")
          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(folderId, forKey: "folder_id")
        }
      }

      public var body: Body

      public init(body: Body, encoder _: RequestEncoder? = nil) {
        self.body = body
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        PostFileManagerFiles.service
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
      /** An individual file listed in the File Manager. */
      public struct Status200: Model {
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
