import Foundation
import Prch

#if !os(watchOS)
  public extension Conversations {
    /**
     List messages

     Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
     */
    enum GetConversationsIdMessages {
      public static let service = Service<Response>(id: "getConversationsIdMessages", tag: "conversations", method: "GET", path: "/conversations/{conversation_id}/messages", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      /** Whether a conversation message has been marked as read. */
      public enum IsRead: String, Codable, Equatable, CaseIterable {
        case `true`
        case `false`
      }

      public struct Request: ServiceRequest {
        public struct Options {
          /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
          public var fields: [String]?

          /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
          public var excludeFields: [String]?

          /** The unique id for the conversation. */
          public var conversationId: String

          /** Whether a conversation message has been marked as read. */
          public var isRead: IsRead?

          /** Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
          public var beforeTimestamp: Date?

          /** Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
          public var sinceTimestamp: Date?

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, isRead: IsRead? = nil, beforeTimestamp: Date? = nil, sinceTimestamp: Date? = nil) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.conversationId = conversationId
            self.isRead = isRead
            self.beforeTimestamp = beforeTimestamp
            self.sinceTimestamp = sinceTimestamp
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetConversationsIdMessages.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, conversationId: String, isRead: IsRead? = nil, beforeTimestamp: Date? = nil, sinceTimestamp: Date? = nil) {
          let options = Options(fields: fields, excludeFields: excludeFields, conversationId: conversationId, isRead: isRead, beforeTimestamp: beforeTimestamp, sinceTimestamp: sinceTimestamp)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(options.conversationId)")
        }

        public var queryParameters: [String: Any] {
          var params: [String: Any] = [:]
          if let fields = options.fields?.joined(separator: ",") {
            params["fields"] = fields
          }
          if let excludeFields = options.excludeFields?.joined(separator: ",") {
            params["exclude_fields"] = excludeFields
          }
          if let isRead = options.isRead?.encode() {
            params["is_read"] = isRead
          }

          if let beforeTimestamp = options.beforeTimestamp.encode(with: MailchimpAPI.dateEncodingFormatter) {
            params["before_timestamp"] = beforeTimestamp
          }
          if let sinceTimestamp = options.sinceTimestamp.encode(with: MailchimpAPI.dateEncodingFormatter) {
            params["since_timestamp"] = sinceTimestamp
          }
          return params
        }
      }

      public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
        public typealias APIType = MailchimpAPI
        /** Messages from a specific conversation. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A string that identifies this conversation. */
          public var conversationId: String?

          /** An array of objects, each representing a conversation messages resources. */
          public var conversationMessages: [ConversationMessages]?

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

          /** An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
          public struct ConversationMessages: Model {
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
            public var timestamp: Date?

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
              self.timestamp = timestamp
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

          public init(links: [Links]? = nil, conversationId: String? = nil, conversationMessages: [ConversationMessages]? = nil, totalItems: Int? = nil) {
            self.links = links
            self.conversationId = conversationId
            self.conversationMessages = conversationMessages
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            conversationId = try container.decodeIfPresent("conversation_id")
            conversationMessages = try container.decodeArrayIfPresent("conversation_messages")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(conversationId, forKey: "conversation_id")
            try container.encodeIfPresent(conversationMessages, forKey: "conversation_messages")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

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

        /// either success or failure value. Success is anything in the 200..<300 status code range
        @available(*, unavailable)
        public var _obsolete_responseResult: DeprecatedResponseResult<Status200, DefaultResponse> {
          if let successValue = success {
            return .success(successValue)
          } else if let failureValue = failure {
            return .failure(failureValue)
          } else {
            fatalError("Response does not have success or failure response")
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
#endif