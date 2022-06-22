import Foundation
import Prch

public extension Lists {
  /**
   View recent activity 50

   Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
   */
  enum GetListsIdMembersIdActivity {
    public static let service = Service<Response>(id: "getListsIdMembersIdActivity", tag: "lists", method: "GET", path: "/lists/{list_id}/members/{subscriber_hash}/activity", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

        /** A comma seperated list of actions to return. */
        public var action: [String]?

        public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil) {
          self.listId = listId
          self.subscriberHash = subscriberHash
          self.fields = fields
          self.excludeFields = excludeFields
          self.action = action
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdMembersIdActivity.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, subscriberHash: String, fields: [String]? = nil, excludeFields: [String]? = nil, action: [String]? = nil) {
        let options = Options(listId: listId, subscriberHash: subscriberHash, fields: fields, excludeFields: excludeFields, action: action)
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
        if let action = options.action?.joined(separator: ",") {
          params["action"] = action
        }
        return params
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
      /** The last 50 member events for a list. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** An array of objects, each representing a member event. */
        public var activity: [Activity]?

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var emailId: String?

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

        /** Member activity events. */
        public struct Activity: Model {
          /** The type of action recorded for the subscriber. */
          public var action: String?

          /** The web-based ID for the campaign. */
          public var campaignId: String?

          /** The ID of the parent campaign. */
          public var parentCampaign: String?

          /** The date and time recorded for the action. */
          public var timestamp: Date?

          /** If set, the campaign's title. */
          public var title: String?

          /** The type of campaign that was sent. */
          public var type: String?

          /** For clicks, the URL the subscriber clicked on. */
          public var url: String?

          public init(action: String? = nil, campaignId: String? = nil, parentCampaign: String? = nil, timestamp: Date? = nil, title: String? = nil, type: String? = nil, url: String? = nil) {
            self.action = action
            self.campaignId = campaignId
            self.parentCampaign = parentCampaign
            self.timestamp = timestamp
            self.title = title
            self.type = type
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            action = try container.decodeIfPresent("action")
            campaignId = try container.decodeIfPresent("campaign_id")
            parentCampaign = try container.decodeIfPresent("parent_campaign")
            timestamp = try container.decodeIfPresent("timestamp")
            title = try container.decodeIfPresent("title")
            type = try container.decodeIfPresent("type")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(action, forKey: "action")
            try container.encodeIfPresent(campaignId, forKey: "campaign_id")
            try container.encodeIfPresent(parentCampaign, forKey: "parent_campaign")
            try container.encodeIfPresent(timestamp, forKey: "timestamp")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(type, forKey: "type")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(links: [Links]? = nil, activity: [Activity]? = nil, emailId: String? = nil, listId: String? = nil, totalItems: Int? = nil) {
          self.links = links
          self.activity = activity
          self.emailId = emailId
          self.listId = listId
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          activity = try container.decodeArrayIfPresent("activity")
          emailId = try container.decodeIfPresent("email_id")
          listId = try container.decodeIfPresent("list_id")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(activity, forKey: "activity")
          try container.encodeIfPresent(emailId, forKey: "email_id")
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
