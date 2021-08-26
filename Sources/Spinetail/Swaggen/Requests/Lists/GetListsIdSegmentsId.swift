import Foundation
import Prch

public extension Lists {
  /**
   Get segment info

   Get information about a specific segment.
   */
  enum GetListsIdSegmentsId {
    public static let service = APIService<Response>(id: "getListsIdSegmentsId", tag: "lists", method: "GET", path: "/lists/{list_id}/segments/{segment_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique ID for the list. */
        public var listId: String

        /** The unique id for the segment. */
        public var segmentId: String

        /** Include cleaned members in response */
        public var includeCleaned: Bool?

        /** Include transactional members in response */
        public var includeTransactional: Bool?

        /** Include unsubscribed members in response */
        public var includeUnsubscribed: Bool?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.listId = listId
          self.segmentId = segmentId
          self.includeCleaned = includeCleaned
          self.includeTransactional = includeTransactional
          self.includeUnsubscribed = includeUnsubscribed
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetListsIdSegmentsId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, listId: listId, segmentId: segmentId, includeCleaned: includeCleaned, includeTransactional: includeTransactional, includeUnsubscribed: includeUnsubscribed)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.options.listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(self.options.segmentId)")
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        if let includeCleaned = options.includeCleaned {
          params["include_cleaned"] = includeCleaned
        }
        if let includeTransactional = options.includeTransactional {
          params["include_transactional"] = includeTransactional
        }
        if let includeUnsubscribed = options.includeUnsubscribed {
          params["include_unsubscribed"] = includeUnsubscribed
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
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
        public var createdAt: DateTime

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
        public var updatedAt: DateTime

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
          public var conditions: [[String: CodableAny]]?

          /** Match type. */
          public var match: Match?

          public init(conditions: [[String: CodableAny]]? = nil, match: Match? = nil) {
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
          self.createdAt = .init(date: createdAt)
          self.id = id
          self.listId = listId
          self.memberCount = memberCount
          self.name = name
          self.options = options
          self.type = type
          self.updatedAt = .init(date: updatedAt)
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
