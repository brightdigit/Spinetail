import Foundation
import Prch

public extension Conversations {
  /**
   Get message

   Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
   */
  enum GetConversationsIdMessagesId {
    public static let service = APIService<Response>(id: "getConversationsIdMessagesId", tag: "conversations", method: "GET", path: "/conversations/{conversation_id}/messages/{message_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the conversation. */
        public var conversationId: String

        /** The unique id for the conversation message. */
        public var messageId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, messageId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.conversationId = conversationId
          self.messageId = messageId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetConversationsIdMessagesId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, messageId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, conversationId: conversationId, messageId: messageId)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(self.options.conversationId)").replacingOccurrences(of: "{" + "message_id" + "}", with: "\(self.options.messageId)")
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
      /** An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** A string that identifies this message's conversation */
        public var conversationId: String?

        /** A label representing the email of the sender of this message */
        public var fromEmail: String?

        /** A label representing the sender of this message */
        public var fromLabel: String?

        /** A string that uniquely identifies this message */
        public var id: String?

        /** The list's web ID */
        public var listId: Int?

        /** The plain-text content of the message */
        public var message: String?

        /** Whether this message has been marked as read */
        public var read: Bool?

        /** The subject of this message */
        public var subject: String?

        /** The date and time the message was either sent or received in ISO 8601 format. */
        public var timestamp: DateTime

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

        public init(links: [Links]? = nil, conversationId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, listId: Int? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: Date? = nil) {
          self.links = links
          self.conversationId = conversationId
          self.fromEmail = fromEmail
          self.fromLabel = fromLabel
          self.id = id
          self.listId = listId
          self.message = message
          self.read = read
          self.subject = subject
          self.timestamp = .init(date: timestamp)
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          conversationId = try container.decodeIfPresent("conversation_id")
          fromEmail = try container.decodeIfPresent("from_email")
          fromLabel = try container.decodeIfPresent("from_label")
          id = try container.decodeIfPresent("id")
          listId = try container.decodeIfPresent("list_id")
          message = try container.decodeIfPresent("message")
          read = try container.decodeIfPresent("read")
          subject = try container.decodeIfPresent("subject")
          timestamp = try container.decodeIfPresent("timestamp")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(conversationId, forKey: "conversation_id")
          try container.encodeIfPresent(fromEmail, forKey: "from_email")
          try container.encodeIfPresent(fromLabel, forKey: "from_label")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(message, forKey: "message")
          try container.encodeIfPresent(read, forKey: "read")
          try container.encodeIfPresent(subject, forKey: "subject")
          try container.encodeIfPresent(timestamp, forKey: "timestamp")
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
