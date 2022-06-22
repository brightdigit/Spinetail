import Foundation
import Prch

public extension Lists {
  /**
   Add interest category

   Create a new interest category.
   */
  enum PostListsIdInterestCategories {
    public static let service = Service<Response>(id: "postListsIdInterestCategories", tag: "lists", method: "POST", path: "/lists/{list_id}/interest-categories", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** Determines how this category’s interests appear on signup forms. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
      case checkboxes
      case dropdown
      case radio
      case hidden
    }

    public struct Request: BodyRequest {
      /** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */
      public struct Body: Model {
        /** Determines how this category’s interests appear on signup forms. */
        public enum `Type`: String, Codable, Equatable, CaseIterable {
          case checkboxes
          case dropdown
          case radio
          case hidden
        }

        /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
        public var title: String

        /** Determines how this category’s interests appear on signup forms. */
        public var type: `Type`

        /** The order that the categories are displayed in the list. Lower numbers display first. */
        public var displayOrder: Int?

        public init(title: String, type: Type, displayOrder: Int? = nil) {
          self.title = title
          self.type = type
          self.displayOrder = displayOrder
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          title = try container.decode("title")
          type = try container.decode("type")
          displayOrder = try container.decodeIfPresent("display_order")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(title, forKey: "title")
          try container.encode(type, forKey: "type")
          try container.encodeIfPresent(displayOrder, forKey: "display_order")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        public init(listId: String) {
          self.listId = listId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder _: RequestEncoder? = nil) {
        self.body = body
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        PostListsIdInterestCategories.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, body: Body) {
        let options = Options(listId: listId)
        self.init(body: body, options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)")
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
      /** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */
      public struct Status200: Model {
        /** Determines how this category’s interests appear on signup forms. */
        public enum `Type`: String, Codable, Equatable, CaseIterable {
          case checkboxes
          case dropdown
          case radio
          case hidden
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The order that the categories are displayed in the list. Lower numbers display first. */
        public var displayOrder: Int?

        /** The id for the interest category. */
        public var id: String?

        /** The unique list id for the category. */
        public var listId: String?

        /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
        public var title: String?

        /** Determines how this category’s interests appear on signup forms. */
        public var type: `Type`?

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

        public init(links: [Links]? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, title: String? = nil, type: Type? = nil) {
          self.links = links
          self.displayOrder = displayOrder
          self.id = id
          self.listId = listId
          self.title = title
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          displayOrder = try container.decodeIfPresent("display_order")
          id = try container.decodeIfPresent("id")
          listId = try container.decodeIfPresent("list_id")
          title = try container.decodeIfPresent("title")
          type = try container.decodeIfPresent("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(displayOrder, forKey: "display_order")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(title, forKey: "title")
          try container.encodeIfPresent(type, forKey: "type")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
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

      public var anyResponse: Any {
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
        let responseString = "\(anyResponse)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
