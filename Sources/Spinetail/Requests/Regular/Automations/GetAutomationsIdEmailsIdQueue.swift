import Foundation
import Prch

#if !os(watchOS)
  public extension Automations {
    /**
     List automated email subscribers

     Get information about a classic automation email queue.
     */
    enum GetAutomationsIdEmailsIdQueue {
      public static let service = Service<Response>(id: "getAutomationsIdEmailsIdQueue", tag: "automations", method: "GET", path: "/automations/{workflow_id}/emails/{workflow_email_id}/queue", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** The unique id for the Automation workflow. */
          public var workflowId: String

          /** The unique id for the Automation workflow email. */
          public var workflowEmailId: String

          public init(workflowId: String, workflowEmailId: String) {
            self.workflowId = workflowId
            self.workflowEmailId = workflowEmailId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetAutomationsIdEmailsIdQueue.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(workflowId: String, workflowEmailId: String) {
          let options = Options(workflowId: workflowId, workflowEmailId: workflowEmailId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(options.workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(options.workflowEmailId)")
        }
      }

      public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case .defaultResponse(statusCode: let statusCode, let response):
          return .defaultResponse(statusCode, response)
        case .status200(let response):
          return .success(response)
        }
      }
        public typealias APIType = Mailchimp.API
        /** An automation workflow */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A string that uniquely identifies an email in an Automation workflow. */
          public var emailId: String?

          /** An array of objects, each representing a subscriber queue for an email in an Automation workflow. */
          public var queue: [Queue]?

          /** The total number of items matching the query regardless of pagination. */
          public var totalItems: Int?

          /** A string that uniquely identifies an Automation workflow. */
          public var workflowId: String?

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

          /** Information about subscribers in an Automation email queue. */
          public struct Queue: Model {
            /** The list member's email address. */
            public var emailAddress: String

            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** A string that uniquely identifies an email in an Automation workflow. */
            public var emailId: String?

            /** The MD5 hash of the lowercase version of the list member's email address. */
            public var id: String?

            /** A string that uniquely identifies a list. */
            public var listId: String?

            /** The date and time of the next send for the workflow email in ISO 8601 format. */
            public var nextSend: Date?

            /** A string that uniquely identifies an Automation workflow. */
            public var workflowId: String?

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

            public init(emailAddress: String, links: [Links]? = nil, emailId: String? = nil, id: String? = nil, listId: String? = nil, nextSend: Date? = nil, workflowId: String? = nil) {
              self.emailAddress = emailAddress
              self.links = links
              self.emailId = emailId
              self.id = id
              self.listId = listId
              self.nextSend = nextSend
              self.workflowId = workflowId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              emailAddress = try container.decode("email_address")
              links = try container.decodeArrayIfPresent("_links")
              emailId = try container.decodeIfPresent("email_id")
              id = try container.decodeIfPresent("id")
              listId = try container.decodeIfPresent("list_id")
              nextSend = try container.decodeIfPresent("next_send")
              workflowId = try container.decodeIfPresent("workflow_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encode(emailAddress, forKey: "email_address")
              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(emailId, forKey: "email_id")
              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(listId, forKey: "list_id")
              try container.encodeIfPresent(nextSend, forKey: "next_send")
              try container.encodeIfPresent(workflowId, forKey: "workflow_id")
            }
          }

          public init(links: [Links]? = nil, emailId: String? = nil, queue: [Queue]? = nil, totalItems: Int? = nil, workflowId: String? = nil) {
            self.links = links
            self.emailId = emailId
            self.queue = queue
            self.totalItems = totalItems
            self.workflowId = workflowId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            emailId = try container.decodeIfPresent("email_id")
            queue = try container.decodeArrayIfPresent("queue")
            totalItems = try container.decodeIfPresent("total_items")
            workflowId = try container.decodeIfPresent("workflow_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(emailId, forKey: "email_id")
            try container.encodeIfPresent(queue, forKey: "queue")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
            try container.encodeIfPresent(workflowId, forKey: "workflow_id")
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
