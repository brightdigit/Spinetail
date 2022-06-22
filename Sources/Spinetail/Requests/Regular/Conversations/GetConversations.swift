import Foundation
import Prch

#if !os(watchOS)
  public extension Conversations {
    /**
     List conversations

     Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
     */
    enum GetConversations {
      public static let service = Service<Response>(id: "getConversations", tag: "conversations", method: "GET", path: "/conversations", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      /** Whether the conversation has any unread messages. */
      public enum HasUnreadMessages: String, Codable, Equatable, CaseIterable {
        case `true`
        case `false`
      }

      public struct Request: ServiceRequest {
        public struct Options {
          /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
          public var fields: [String]?

          /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
          public var excludeFields: [String]?

          /** The number of records to return. Default value is 10. Maximum value is 1000 */
          public var count: Int?

          /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
          public var offset: Int?

          /** Whether the conversation has any unread messages. */
          public var hasUnreadMessages: HasUnreadMessages?

          /** The unique id for the list. */
          public var listId: String?

          /** The unique id for the campaign. */
          public var campaignId: String?

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages? = nil, listId: String? = nil, campaignId: String? = nil) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.count = count
            self.offset = offset
            self.hasUnreadMessages = hasUnreadMessages
            self.listId = listId
            self.campaignId = campaignId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetConversations.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, hasUnreadMessages: HasUnreadMessages? = nil, listId: String? = nil, campaignId: String? = nil) {
          let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, hasUnreadMessages: hasUnreadMessages, listId: listId, campaignId: campaignId)
          self.init(options: options)
        }

        public var queryParameters: [String: Any] {
          var params: [String: Any] = [:]
          if let fields = options.fields?.joined(separator: ",") {
            params["fields"] = fields
          }
          if let excludeFields = options.excludeFields?.joined(separator: ",") {
            params["exclude_fields"] = excludeFields
          }
          if let count = options.count {
            params["count"] = count
          }
          if let offset = options.offset {
            params["offset"] = offset
          }
          if let hasUnreadMessages = options.hasUnreadMessages?.encode() {
            params["has_unread_messages"] = hasUnreadMessages
          }
          if let listId = options.listId {
            params["list_id"] = listId
          }
          if let campaignId = options.campaignId {
            params["campaign_id"] = campaignId
          }
          return params
        }
      }

      public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
        public var response: ClientResult<Status200, DefaultResponse> {
          switch self {
          case let .defaultResponse(statusCode: statusCode, response):
            return .defaultResponse(statusCode, response)

          case let .status200(response):
            return .success(response)
          }
        }

        public typealias APIType = Mailchimp.API
        /** A collection of this account's tracked conversations. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A list of conversations. */
          public var conversations: [Conversations]?

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

          /** Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
          public struct Conversations: Model {
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

            /** The most recent message in the conversation. */
            public struct LastMessage: Model {
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
              public var timestamp: Date?

              public init(fromEmail: String? = nil, fromLabel: String? = nil, message: String? = nil, read: Bool? = nil, subject: String? = nil, timestamp: Date? = nil) {
                self.fromEmail = fromEmail
                self.fromLabel = fromLabel
                self.message = message
                self.read = read
                self.subject = subject
                self.timestamp = timestamp
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

          public init(links: [Links]? = nil, conversations: [Conversations]? = nil, totalItems: Int? = nil) {
            self.links = links
            self.conversations = conversations
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            conversations = try container.decodeArrayIfPresent("conversations")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(conversations, forKey: "conversations")
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
