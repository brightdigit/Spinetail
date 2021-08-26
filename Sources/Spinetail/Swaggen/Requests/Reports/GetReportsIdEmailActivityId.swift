import Foundation
import Prch

public extension Reports {
  /**
   Get subscriber email activity

   Get a specific list member's activity in a campaign including opens, clicks, and bounces.
   */
  enum GetReportsIdEmailActivityId {
    public static let service = APIService<Response>(id: "getReportsIdEmailActivityId", tag: "reports", method: "GET", path: "/reports/{campaign_id}/email-activity/{subscriber_hash}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the campaign. */
        public var campaignId: String

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var subscriberHash: String

        /** Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var since: String?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, subscriberHash: String, since: String? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.campaignId = campaignId
          self.subscriberHash = subscriberHash
          self.since = since
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetReportsIdEmailActivityId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, subscriberHash: String, since: String? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId, subscriberHash: subscriberHash, since: since)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.options.campaignId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(self.options.subscriberHash)")
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        if let since = options.since {
          params["since"] = since
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A list of a member's subscriber activity in a specific campaign, including opens, clicks, and bounces. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** An array of objects, each showing an interaction with the email. */
        public var activity: [Activity]?

        /** The unique id for the campaign. */
        public var campaignId: String?

        /** Email address for a subscriber. */
        public var emailAddress: String?

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var emailId: String?

        /** The unique id for the list. */
        public var listId: String?

        /** The status of the list used, namely if it's deleted or disabled. */
        public var listIsActive: Bool?

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

        /** A summary of the interaction with the campaign. */
        public struct Activity: Model {
          /** One of the following actions: 'open', 'click', or 'bounce' */
          public var action: String?

          /** The IP address recorded for the action. */
          public var ip: String?

          /** The date and time recorded for the action in ISO 8601 format. */
          public var timestamp: DateTime

          /** If the action is a 'bounce', the type of bounce received: 'hard', 'soft'. */
          public var type: String?

          /** If the action is a 'click', the URL on which the member clicked. */
          public var url: String?

          public init(action: String? = nil, ip: String? = nil, timestamp: Date? = nil, type: String? = nil, url: String? = nil) {
            self.action = action
            self.ip = ip
            self.timestamp = .init(date: timestamp)
            self.type = type
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            action = try container.decodeIfPresent("action")
            ip = try container.decodeIfPresent("ip")
            timestamp = try container.decodeIfPresent("timestamp")
            type = try container.decodeIfPresent("type")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(action, forKey: "action")
            try container.encodeIfPresent(ip, forKey: "ip")
            try container.encodeIfPresent(timestamp, forKey: "timestamp")
            try container.encodeIfPresent(type, forKey: "type")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(links: [Links]? = nil, activity: [Activity]? = nil, campaignId: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil) {
          self.links = links
          self.activity = activity
          self.campaignId = campaignId
          self.emailAddress = emailAddress
          self.emailId = emailId
          self.listId = listId
          self.listIsActive = listIsActive
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          activity = try container.decodeArrayIfPresent("activity")
          campaignId = try container.decodeIfPresent("campaign_id")
          emailAddress = try container.decodeIfPresent("email_address")
          emailId = try container.decodeIfPresent("email_id")
          listId = try container.decodeIfPresent("list_id")
          listIsActive = try container.decodeIfPresent("list_is_active")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(activity, forKey: "activity")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(emailAddress, forKey: "email_address")
          try container.encodeIfPresent(emailId, forKey: "email_id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
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
