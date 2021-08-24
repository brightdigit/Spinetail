import Foundation

public extension Conversations {
  /**
   Get conversation

   Get details about an individual conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
   */
  enum GetConversationsId {
    public static let service = APIService<Response>(id: "getConversationsId", tag: "conversations", method: "GET", path: "/conversations/{conversation_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the conversation. */
        public var conversationId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.conversationId = conversationId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetConversationsId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, conversationId: conversationId)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(self.options.conversationId)")
      }

      override public var queryParameters: [String: Any] {
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

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
      public struct Status200: MailchimpModel {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The unique identifier of the campaign for this conversation. */
        public var campaignId: String?

        /** A label representing the email of the sender of this message. */
        public var fromEmail: String?

        /** A label representing the sender of this message. */
        public var fromLabel: String?

        /** A string that uniquely identifies this conversation. */
        public var id: String?

        /** The most recent message in the conversation. */
        public var lastMessage: LastMessage?

        /** The unique identifier of the list for this conversation. */
        public var listId: String?

        /** The total number of messages in this conversation. */
        public var messageCount: Int?

        /** The subject of the message. */
        public var subject: String?

        /** The number of unread messages in this conversation. */
        public var unreadMessages: Int?

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

        /** The most recent message in the conversation. */
        public struct LastMessage: MailchimpModel {
          /** A label representing the email of the sender of this message. */
          public var fromEmail: String?

          /** A label representing the sender of this message. */
          public var fromLabel: String?

          /** The plain-text content of the message. */
          public var message: String?

          /** Whether this message has been marked as read. */
          public var read: Bool?

          /** The subject of this message. */
          public var subject: String?

          /** The date and time the message was either sent or received in ISO 8601 format. */
          public var timestamp: DateTime

          public init(fromEmail: String? = nil, fromLabel: String? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: Date? = nil) {
            self.fromEmail = fromEmail
            self.fromLabel = fromLabel
            self.message = message
            self.read = read
            self.subject = subject
            self.timestamp = .init(date: timestamp)
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            fromEmail = try container.decodeIfPresent("from_email")
            fromLabel = try container.decodeIfPresent("from_label")
            message = try container.decodeIfPresent("message")
            read = try container.decodeIfPresent("read")
            subject = try container.decodeIfPresent("subject")
            timestamp = try container.decodeIfPresent("timestamp")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(fromEmail, forKey: "from_email")
            try container.encodeIfPresent(fromLabel, forKey: "from_label")
            try container.encodeIfPresent(message, forKey: "message")
            try container.encodeIfPresent(read, forKey: "read")
            try container.encodeIfPresent(subject, forKey: "subject")
            try container.encodeIfPresent(timestamp, forKey: "timestamp")
          }
        }

        public init(links: [Links]? = nil, campaignId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, lastMessage: LastMessage? = nil, listId: String? = nil, messageCount: Int? = nil, subject: String? = nil, unreadMessages: Int? = nil) {
          self.links = links
          self.campaignId = campaignId
          self.fromEmail = fromEmail
          self.fromLabel = fromLabel
          self.id = id
          self.lastMessage = lastMessage
          self.listId = listId
          self.messageCount = messageCount
          self.subject = subject
          self.unreadMessages = unreadMessages
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          campaignId = try container.decodeIfPresent("campaign_id")
          fromEmail = try container.decodeIfPresent("from_email")
          fromLabel = try container.decodeIfPresent("from_label")
          id = try container.decodeIfPresent("id")
          lastMessage = try container.decodeIfPresent("last_message")
          listId = try container.decodeIfPresent("list_id")
          messageCount = try container.decodeIfPresent("message_count")
          subject = try container.decodeIfPresent("subject")
          unreadMessages = try container.decodeIfPresent("unread_messages")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(fromEmail, forKey: "from_email")
          try container.encodeIfPresent(fromLabel, forKey: "from_label")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(lastMessage, forKey: "last_message")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(messageCount, forKey: "message_count")
          try container.encodeIfPresent(subject, forKey: "subject")
          try container.encodeIfPresent(unreadMessages, forKey: "unread_messages")
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
