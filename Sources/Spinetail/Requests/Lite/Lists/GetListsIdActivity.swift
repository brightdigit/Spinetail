import Foundation
import Prch

public extension Lists {
  /**
   List recent activity

   Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation activity.
   */
  enum GetListsIdActivity {
    public static let service = Service<Response>(id: "getListsIdActivity", tag: "lists", method: "GET", path: "/lists/{list_id}/activity", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique ID for the list. */
        public var listId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.listId = listId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdActivity.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, listId: listId)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)")
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
      /** Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include AutoResponder or Automation activity. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** Recent list activity. */
        public var activity: [Activity]?

        /** The unique id for the list. */
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

        /** One day's worth of list activity. Doesn't include Automation activity. */
        public struct Activity: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The date for the activity summary. */
          public var day: String?

          /** The total number of emails sent on the date for the activity summary. */
          public var emailsSent: Int?

          /** The number of hard bounces. */
          public var hardBounce: Int?

          /** The number of subscribers who may have been added outside of the [double opt-in process](https://mailchimp.com/help/about-double-opt-in/), such as imports or API activity. */
          public var otherAdds: Int?

          /** The number of subscribers who may have been removed outside of unsubscribing or reporting an email as spam (for example, deleted subscribers). */
          public var otherRemoves: Int?

          /** The number of clicks. */
          public var recipientClicks: Int?

          /** The number of soft bounces */
          public var softBounce: Int?

          /** The number of subscribes. */
          public var subs: Int?

          /** The number of unique opens. */
          public var uniqueOpens: Int?

          /** The number of unsubscribes. */
          public var unsubs: Int?

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

          public init(links: [Links]? = nil, day: String? = nil, emailsSent: Int? = nil, hardBounce: Int? = nil, otherAdds: Int? = nil, otherRemoves: Int? = nil, recipientClicks: Int? = nil, softBounce: Int? = nil, subs: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil) {
            self.links = links
            self.day = day
            self.emailsSent = emailsSent
            self.hardBounce = hardBounce
            self.otherAdds = otherAdds
            self.otherRemoves = otherRemoves
            self.recipientClicks = recipientClicks
            self.softBounce = softBounce
            self.subs = subs
            self.uniqueOpens = uniqueOpens
            self.unsubs = unsubs
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            day = try container.decodeIfPresent("day")
            emailsSent = try container.decodeIfPresent("emails_sent")
            hardBounce = try container.decodeIfPresent("hard_bounce")
            otherAdds = try container.decodeIfPresent("other_adds")
            otherRemoves = try container.decodeIfPresent("other_removes")
            recipientClicks = try container.decodeIfPresent("recipient_clicks")
            softBounce = try container.decodeIfPresent("soft_bounce")
            subs = try container.decodeIfPresent("subs")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
            unsubs = try container.decodeIfPresent("unsubs")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(day, forKey: "day")
            try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
            try container.encodeIfPresent(hardBounce, forKey: "hard_bounce")
            try container.encodeIfPresent(otherAdds, forKey: "other_adds")
            try container.encodeIfPresent(otherRemoves, forKey: "other_removes")
            try container.encodeIfPresent(recipientClicks, forKey: "recipient_clicks")
            try container.encodeIfPresent(softBounce, forKey: "soft_bounce")
            try container.encodeIfPresent(subs, forKey: "subs")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
            try container.encodeIfPresent(unsubs, forKey: "unsubs")
          }
        }

        public init(links: [Links]? = nil, activity: [Activity]? = nil, listId: String? = nil, totalItems: Int? = nil) {
          self.links = links
          self.activity = activity
          self.listId = listId
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          activity = try container.decodeArrayIfPresent("activity")
          listId = try container.decodeIfPresent("list_id")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(activity, forKey: "activity")
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
