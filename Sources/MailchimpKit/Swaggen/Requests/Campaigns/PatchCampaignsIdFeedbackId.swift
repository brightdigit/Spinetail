import Foundation

public extension Campaigns {
  /**
   Update campaign feedback message

   Update a specific feedback message for a campaign.
   */
  enum PatchCampaignsIdFeedbackId {
    public static let service = APIService<Response>(id: "patchCampaignsIdFeedbackId", tag: "campaigns", method: "PATCH", path: "/campaigns/{campaign_id}/feedback/{feedback_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** A specific feedback message from a specific campaign. */
      public struct Body: MailchimpModel {
        /** The block id for the editable block that the feedback addresses. */
        public var blockId: Int?

        /** The status of feedback. */
        public var isComplete: Bool?

        /** The content of the feedback. */
        public var message: String?

        public init(blockId: Int? = nil, isComplete: Bool? = nil, message: String? = nil) {
          self.blockId = blockId
          self.isComplete = isComplete
          self.message = message
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          blockId = try container.decodeIfPresent("block_id")
          isComplete = try container.decodeIfPresent("is_complete")
          message = try container.decodeIfPresent("message")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(blockId, forKey: "block_id")
          try container.encodeIfPresent(isComplete, forKey: "is_complete")
          try container.encodeIfPresent(message, forKey: "message")
        }
      }

      public struct Options {
        /** The unique id for the campaign. */
        public var campaignId: String

        /** The unique id for the feedback message. */
        public var feedbackId: String

        public init(campaignId: String, feedbackId: String) {
          self.campaignId = campaignId
          self.feedbackId = feedbackId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PatchCampaignsIdFeedbackId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(campaignId: String, feedbackId: String, body: Body) {
        let options = Options(campaignId: campaignId, feedbackId: feedbackId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)").replacingOccurrences(of: "{" + "feedback_id" + "}", with: "\(options.feedbackId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A specific feedback message from a specific campaign. */
      public struct Status200: MailchimpModel {
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
        public var createdAt: DateTime?

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
        public var updatedAt: DateTime?

        /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
        public struct Links: MailchimpModel {
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

        public init(links: [Links]? = nil, blockId: Int? = nil, campaignId: String? = nil, createdAt: DateTime? = nil, createdBy: String? = nil, feedbackId: Int? = nil, isComplete: Bool? = nil, message: String? = nil, parentId: Int? = nil, source: Source? = nil, updatedAt: DateTime? = nil) {
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
      public struct DefaultResponse: MailchimpModel {
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
