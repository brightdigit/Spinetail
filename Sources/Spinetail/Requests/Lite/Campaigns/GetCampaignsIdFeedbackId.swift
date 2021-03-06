import Foundation
import Prch

public extension Campaigns {
  /**
   Get campaign feedback message

   Get a specific feedback message from a campaign.
   */
  enum GetCampaignsIdFeedbackId {
    public static let service = Service<Response>(id: "getCampaignsIdFeedbackId", tag: "campaigns", method: "GET", path: "/campaigns/{campaign_id}/feedback/{feedback_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the campaign. */
        public var campaignId: String

        /** The unique id for the feedback message. */
        public var feedbackId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, feedbackId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.campaignId = campaignId
          self.feedbackId = feedbackId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetCampaignsIdFeedbackId.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, feedbackId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId, feedbackId: feedbackId)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(options.feedbackId)")
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
      /** A specific feedback message from a specific campaign. */
      public struct Status200: Model {
        /** The source of the feedback. */
        public enum Source: String, Codable, Equatable, CaseIterable {
          case api
          case email
          case sms
          case web
          case ios
          case android
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The block id for the editable block that the feedback addresses. */
        public var blockId: Int?

        /** The unique id for the campaign. */
        public var campaignId: String?

        /** The date and time the feedback item was created in ISO 8601 format. */
        public var createdAt: Date?

        /** The login name of the user who created the feedback. */
        public var createdBy: String?

        /** The individual id for the feedback item. */
        public var feedbackId: Int?

        /** The status of feedback. */
        public var isComplete: Bool?

        /** The content of the feedback. */
        public var message: String?

        /** If a reply, the id of the parent feedback item. */
        public var parentId: Int?

        /** The source of the feedback. */
        public var source: Source?

        /** The date and time the feedback was last updated in ISO 8601 format. */
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

        public init(links: [Links]? = nil, blockId: Int? = nil, campaignId: String? = nil, createdAt: Date? = nil, createdBy: String? = nil, feedbackId: Int? = nil, isComplete: Bool? = nil, message: String? = nil, parentId: Int? = nil, source: Source? = nil, updatedAt: Date? = nil) {
          self.links = links
          self.blockId = blockId
          self.campaignId = campaignId
          self.createdAt = createdAt
          self.createdBy = createdBy
          self.feedbackId = feedbackId
          self.isComplete = isComplete
          self.message = message
          self.parentId = parentId
          self.source = source
          self.updatedAt = updatedAt
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          blockId = try container.decodeIfPresent("block_id")
          campaignId = try container.decodeIfPresent("campaign_id")
          createdAt = try container.decodeIfPresent("created_at")
          createdBy = try container.decodeIfPresent("created_by")
          feedbackId = try container.decodeIfPresent("feedback_id")
          isComplete = try container.decodeIfPresent("is_complete")
          message = try container.decodeIfPresent("message")
          parentId = try container.decodeIfPresent("parent_id")
          source = try container.decodeIfPresent("source")
          updatedAt = try container.decodeIfPresent("updated_at")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(blockId, forKey: "block_id")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(createdAt, forKey: "created_at")
          try container.encodeIfPresent(createdBy, forKey: "created_by")
          try container.encodeIfPresent(feedbackId, forKey: "feedback_id")
          try container.encodeIfPresent(isComplete, forKey: "is_complete")
          try container.encodeIfPresent(message, forKey: "message")
          try container.encodeIfPresent(parentId, forKey: "parent_id")
          try container.encodeIfPresent(source, forKey: "source")
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
