import Foundation
import Prch

public extension Campaigns {
  /**
   Get campaign send checklist

   Review the send checklist for a campaign, and resolve any issues before sending.
   */
  enum GetCampaignsIdSendChecklist {
    public static let service = Service<Response>(id: "getCampaignsIdSendChecklist", tag: "campaigns", method: "GET", path: "/campaigns/{campaign_id}/send-checklist", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the campaign. */
        public var campaignId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.campaignId = campaignId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetCampaignsIdSendChecklist.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)")
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
      /** The send checklist for the campaign. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** Whether the campaign is ready to send. */
        public var isReady: Bool?

        /** A list of feedback items to review before sending your campaign. */
        public var items: [Items]?

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

        /** The send checklist for the campaign. */
        public struct Items: Model {
          /** The item type. */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case success
            case warning
            case error
          }

          /** Details about the specific feedback item. */
          public var details: String?

          /** The heading for the specific item. */
          public var heading: String?

          /** The ID for the specific item. */
          public var id: Int?

          /** The item type. */
          public var type: `Type`?

          public init(details: String? = nil, heading: String? = nil, id: Int? = nil, type: Type? = nil) {
            self.details = details
            self.heading = heading
            self.id = id
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            details = try container.decodeIfPresent("details")
            heading = try container.decodeIfPresent("heading")
            id = try container.decodeIfPresent("id")
            type = try container.decodeIfPresent("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(details, forKey: "details")
            try container.encodeIfPresent(heading, forKey: "heading")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(type, forKey: "type")
          }
        }

        public init(links: [Links]? = nil, isReady: Bool? = nil, items: [Items]? = nil) {
          self.links = links
          self.isReady = isReady
          self.items = items
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          isReady = try container.decodeIfPresent("is_ready")
          items = try container.decodeArrayIfPresent("items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(isReady, forKey: "is_ready")
          try container.encodeIfPresent(items, forKey: "items")
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
