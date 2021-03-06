import Foundation
import Prch

public extension Lists {
  /**
   Update segment

   Update a specific segment in a list.
   */
  enum PatchListsIdSegmentsId {
    public static let service = Service<Response>(id: "patchListsIdSegmentsId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/segments/{segment_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: BodyRequest {
      /** Information about a specific list segment. */
      public struct Body: Model {
        /** The name of the segment. */
        public var name: String

        /** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions. */
        public var options: Options?

        /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array for an existing static segment will reset that segment and remove all members. This field cannot be provided with the `options` field. */
        public var staticSegment: [String]?

        /** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions. */
        public struct Options: Model {
          /** Match type. */
          public enum Match: String, Codable, Equatable, CaseIterable {
            case any
            case all
          }

          /** An array of segment conditions. */
          public var conditions: [[[String: AnyCodable]]]?

          /** Match type. */
          public var match: Match?

          public init(conditions: [[[String: AnyCodable]]]? = nil, match: Match? = nil) {
            self.conditions = conditions
            self.match = match
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            conditions = try container.decodeAnyIfPresent("conditions")
            match = try container.decodeIfPresent("match")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeAnyIfPresent(conditions, forKey: "conditions")
            try container.encodeIfPresent(match, forKey: "match")
          }
        }

        public init(name: String, options: Options? = nil, staticSegment: [String]? = nil) {
          self.name = name
          self.options = options
          self.staticSegment = staticSegment
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          name = try container.decode("name")
          options = try container.decodeIfPresent("options")
          staticSegment = try container.decodeArrayIfPresent("static_segment")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(options, forKey: "options")
          try container.encodeIfPresent(staticSegment, forKey: "static_segment")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The unique id for the segment. */
        public var segmentId: String

        public init(listId: String, segmentId: String) {
          self.listId = listId
          self.segmentId = segmentId
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
        PatchListsIdSegmentsId.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, segmentId: String, body: Body) {
        let options = Options(listId: listId, segmentId: segmentId)
        self.init(body: body, options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(options.segmentId)")
      }
    }

    public enum Response: Prch.Response {
      public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case let .defaultResponse(statusCode: statusCode, response):
          return .defaultResponse(statusCode, response)

        case let .status200(response):
          return .success(response)
        }
      }

      public typealias APIType = Mailchimp.API
      /** Information about a specific segment. */
      public struct Status200: Model {
        /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
        public enum `Type`: String, Codable, Equatable, CaseIterable {
          case saved
          case `static`
          case fuzzy
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The date and time the segment was created in ISO 8601 format. */
        public var createdAt: Date?

        /** The unique id for the segment. */
        public var id: Int?

        /** The list id. */
        public var listId: String?

        /** The number of active subscribers currently included in the segment. */
        public var memberCount: Int?

        /** The name of the segment. */
        public var name: String?

        /** The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions. */
        public var options: Options?

        /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
        public var type: `Type`?

        /** The date and time the segment was last updated in ISO 8601 format. */
        public var updatedAt: Date?

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

        /** The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions. */
        public struct Options: Model {
          /** Match type. */
          public enum Match: String, Codable, Equatable, CaseIterable {
            case any
            case all
          }

          /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
          public var conditions: [[String: AnyCodable]]?

          /** Match type. */
          public var match: Match?

          public init(conditions: [[String: AnyCodable]]? = nil, match: Match? = nil) {
            self.conditions = conditions
            self.match = match
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            conditions = try container.decodeAnyIfPresent("conditions")
            match = try container.decodeIfPresent("match")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeAnyIfPresent(conditions, forKey: "conditions")
            try container.encodeIfPresent(match, forKey: "match")
          }
        }

        public init(links: [Links]? = nil, createdAt: Date? = nil, id: Int? = nil, listId: String? = nil, memberCount: Int? = nil, name: String? = nil, options: Options? = nil, type: Type? = nil, updatedAt: Date? = nil) {
          self.links = links
          self.createdAt = createdAt
          self.id = id
          self.listId = listId
          self.memberCount = memberCount
          self.name = name
          self.options = options
          self.type = type
          self.updatedAt = updatedAt
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          createdAt = try container.decodeIfPresent("created_at")
          id = try container.decodeIfPresent("id")
          listId = try container.decodeIfPresent("list_id")
          memberCount = try container.decodeIfPresent("member_count")
          name = try container.decodeIfPresent("name")
          options = try container.decodeIfPresent("options")
          type = try container.decodeIfPresent("type")
          updatedAt = try container.decodeIfPresent("updated_at")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(createdAt, forKey: "created_at")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(memberCount, forKey: "member_count")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(options, forKey: "options")
          try container.encodeIfPresent(type, forKey: "type")
          try container.encodeIfPresent(updatedAt, forKey: "updated_at")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

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
