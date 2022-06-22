import Foundation
import Prch

public extension Lists {
  /**
   List member goal events

   Get the last 50 Goal events for a member on a specific list.
   */
  enum GetListsIdMembersIdGoals {
    public static let service = Service<Response>(id: "getListsIdMembersIdGoals", tag: "lists", method: "GET", path: "/lists/{list_id}/members/{subscriber_hash}/goals", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var subscriberHash: String

        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
          self.listId = listId
          self.subscriberHash = subscriberHash
          self.fields = fields
          self.excludeFields = excludeFields
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdMembersIdGoals.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
        let options = Options(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(options.subscriberHash)")
      }

      public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        return params
      }
    }

    public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case .defaultResponse(statusCode: let statusCode, let response):
          return .defaultResponse(statusCode, response)
        case .status200(let response):
          return .success(response)
        }
      }
      public typealias APIType = Mailchimp.API
      /** The last 50 Goal events for a member on a specific list. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var emailId: String?

        /** The last 50 Goal events triggered by a member. */
        public var goals: [Goals]?

        /** The list id. */
        public var listId: String?

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

        /** A single instance of a goal activity. */
        public struct Goals: Model {
          /** Any extra data passed with the Goal event. */
          public var data: String?

          /** The name/type of Goal event triggered. */
          public var event: String?

          /** The id for a Goal event. */
          public var goalId: Int?

          /** The date and time the user last triggered the Goal event in ISO 8601 format. */
          public var lastVisitedAt: Date?

          public init(data: String? = nil, event: String? = nil, goalId: Int? = nil, lastVisitedAt: Date? = nil) {
            self.data = data
            self.event = event
            self.goalId = goalId
            self.lastVisitedAt = lastVisitedAt
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            data = try container.decodeIfPresent("data")
            event = try container.decodeIfPresent("event")
            goalId = try container.decodeIfPresent("goal_id")
            lastVisitedAt = try container.decodeIfPresent("last_visited_at")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(data, forKey: "data")
            try container.encodeIfPresent(event, forKey: "event")
            try container.encodeIfPresent(goalId, forKey: "goal_id")
            try container.encodeIfPresent(lastVisitedAt, forKey: "last_visited_at")
          }
        }

        public init(links: [Links]? = nil, emailId: String? = nil, goals: [Goals]? = nil, listId: String? = nil, totalItems: Int? = nil) {
          self.links = links
          self.emailId = emailId
          self.goals = goals
          self.listId = listId
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          emailId = try container.decodeIfPresent("email_id")
          goals = try container.decodeArrayIfPresent("goals")
          listId = try container.decodeIfPresent("list_id")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(emailId, forKey: "email_id")
          try container.encodeIfPresent(goals, forKey: "goals")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
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
