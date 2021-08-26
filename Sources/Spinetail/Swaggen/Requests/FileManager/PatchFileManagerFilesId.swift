import Foundation
import Prch

public extension FileManager {
  /**
   Update file

   Update a file in the File Manager.
   */
  enum PatchFileManagerFilesId {
    public static let service = APIService<Response>(id: "patchFileManagerFilesId", tag: "fileManager", method: "PATCH", path: "/file-manager/files/{file_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** An individual file listed in the File Manager. */
      public struct Body: Model {
        /** The id of the folder. Setting `folder_id` to `0` will remove a file from its current folder. */
        public var folderId: Int?

        /** The name of the file. */
        public var name: String?

        public init(folderId: Int? = nil, name: String? = nil) {
          self.folderId = folderId
          self.name = name
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          folderId = try container.decodeIfPresent("folder_id")
          name = try container.decodeIfPresent("name")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(folderId, forKey: "folder_id")
          try container.encodeIfPresent(name, forKey: "name")
        }
      }

      public struct Options {
        /** The unique id for the File Manager file. */
        public var fileId: String

        public init(fileId: String) {
          self.fileId = fileId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PatchFileManagerFilesId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fileId: String, body: Body) {
        let options = Options(fileId: fileId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "file_id" + "}", with: "\(options.fileId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
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
        public var createdAt: DateTime

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
          self.createdAt = .init(date: createdAt)
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

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
      public struct DefaultResponse: Model {
        /** A human-readable explanation specific to this occurrence of the problem. [Learn more about errors](/developer/guides/get-started-with-mailchimp-api-3/#Errors). */
        public var detail: String

        /** A string that identifies this specific occurrence of the problem. Please provide this ID when contacting support. */
        public var instance: String

        /** The HTTP status code (RFC2616, Section 6) generated by the origin server for this occurrence of the problem. */
        public var status: Int

        /** A short, human-readable summary of the problem type. It shouldn't change based on the occurrence of the problem, except for purposes of localization. */
        public var title: String

        /** An absolute URI that identifies the problem type. When dereferenced, it should provide human-readable documentation for the problem type. */
        public var type: String

        public init(detail: String, instance: String, status: Int, title: String, type: String) {
          self.detail = detail
          self.instance = instance
          self.status = status
          self.title = title
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          detail = try container.decode("detail")
          instance = try container.decode("instance")
          status = try container.decode("status")
          title = try container.decode("title")
          type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(detail, forKey: "detail")
          try container.encode(instance, forKey: "instance")
          try container.encode(status, forKey: "status")
          try container.encode(title, forKey: "title")
          try container.encode(type, forKey: "type")
        }
      }

      public typealias SuccessType = Status200
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var success: Status200? {
        switch self {
        case let .status200(response): return response
        default: return nil
        }
      }

      public var failure: DefaultResponse? {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<Status200, DefaultResponse> {
        if let successValue = success {
          return .success(successValue)
        } else if let failureValue = failure {
          return .failure(failureValue)
        } else {
          fatalError("Response does not have success or failure response")
        }
      }

      public var response: Any {
        switch self {
        case let .status200(response): return response
        case let .defaultResponse(_, response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        case .defaultResponse: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }

      public var description: String {
        "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(response)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
