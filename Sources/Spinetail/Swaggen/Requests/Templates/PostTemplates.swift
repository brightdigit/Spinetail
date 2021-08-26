import Foundation
import Prch

public extension Templates {
  /**
   Add template

   Create a new template for the account. Only Classic templates are supported.
   */
  enum PostTemplates {
    public static let service = APIService<Response>(id: "postTemplates", tag: "templates", method: "POST", path: "/templates", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Information about a specific template. */
      public struct Body: Model {
        /** The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API. */
        public var html: String

        /** The name of the template. */
        public var name: String

        /** The id of the folder the template is currently in. */
        public var folderId: String?

        public init(html: String, name: String, folderId: String? = nil) {
          self.html = html
          self.name = name
          self.folderId = folderId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          html = try container.decode("html")
          name = try container.decode("name")
          folderId = try container.decodeIfPresent("folder_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(html, forKey: "html")
          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(folderId, forKey: "folder_id")
        }
      }

      public var body: Body

      public init(body: Body, encoder: RequestEncoder? = nil) {
        self.body = body
        super.init(service: PostTemplates.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific template. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** User templates are not 'deleted,' but rather marked as 'inactive.' Returns whether the template is still active. */
        public var active: Bool?

        /** If available, the category the template is listed in. */
        public var category: String?

        /** The login name for template's creator. */
        public var createdBy: String?

        /** The date and time the template was created in ISO 8601 format. */
        public var dateCreated: DateTime

        /** The date and time the template was edited in ISO 8601 format. */
        public var dateEdited: DateTime

        /** Whether the template uses the drag and drop editor. */
        public var dragAndDrop: Bool?

        /** The login name who last edited the template. */
        public var editedBy: String?

        /** The id of the folder the template is currently in. */
        public var folderId: String?

        /** The individual id for the template. */
        public var id: Int?

        /** The name of the template. */
        public var name: String?

        /** Whether the template contains media queries to make it responsive. */
        public var responsive: Bool?

        /** The URL used for [template sharing](https://mailchimp.com/help/share-a-template/). */
        public var shareURL: String?

        /** If available, the URL for a thumbnail of the template. */
        public var thumbnail: String?

        /** The type of template (user, base, or gallery). */
        public var type: String?

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

        public init(links: [Links]? = nil, active: Bool? = nil, category: String? = nil, createdBy: String? = nil, dateCreated: Date? = nil, dateEdited: Date? = nil, dragAndDrop: Bool? = nil, editedBy: String? = nil, folderId: String? = nil, id: Int? = nil, name: String? = nil, responsive: Bool? = nil, shareURL: String? = nil, thumbnail: String? = nil, type: String? = nil) {
          self.links = links
          self.active = active
          self.category = category
          self.createdBy = createdBy
          self.dateCreated = .init(date: dateCreated)
          self.dateEdited = .init(date: dateEdited)
          self.dragAndDrop = dragAndDrop
          self.editedBy = editedBy
          self.folderId = folderId
          self.id = id
          self.name = name
          self.responsive = responsive
          self.shareURL = shareURL
          self.thumbnail = thumbnail
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          active = try container.decodeIfPresent("active")
          category = try container.decodeIfPresent("category")
          createdBy = try container.decodeIfPresent("created_by")
          dateCreated = try container.decodeIfPresent("date_created")
          dateEdited = try container.decodeIfPresent("date_edited")
          dragAndDrop = try container.decodeIfPresent("drag_and_drop")
          editedBy = try container.decodeIfPresent("edited_by")
          folderId = try container.decodeIfPresent("folder_id")
          id = try container.decodeIfPresent("id")
          name = try container.decodeIfPresent("name")
          responsive = try container.decodeIfPresent("responsive")
          shareURL = try container.decodeIfPresent("share_url")
          thumbnail = try container.decodeIfPresent("thumbnail")
          type = try container.decodeIfPresent("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(active, forKey: "active")
          try container.encodeIfPresent(category, forKey: "category")
          try container.encodeIfPresent(createdBy, forKey: "created_by")
          try container.encodeIfPresent(dateCreated, forKey: "date_created")
          try container.encodeIfPresent(dateEdited, forKey: "date_edited")
          try container.encodeIfPresent(dragAndDrop, forKey: "drag_and_drop")
          try container.encodeIfPresent(editedBy, forKey: "edited_by")
          try container.encodeIfPresent(folderId, forKey: "folder_id")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(responsive, forKey: "responsive")
          try container.encodeIfPresent(shareURL, forKey: "share_url")
          try container.encodeIfPresent(thumbnail, forKey: "thumbnail")
          try container.encodeIfPresent(type, forKey: "type")
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
