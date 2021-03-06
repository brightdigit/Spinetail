import Foundation
import Prch

#if !os(watchOS)
  public extension Batches {
    /**
     Start batch operation

     Begin processing a batch operations request.
     */
    enum PostBatches {
      public static let service = Service<Response>(id: "postBatches", tag: "batches", method: "POST", path: "/batches", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        /** Begin processing a batch operations request. */
        public struct Body: Model {
          /** An array of objects that describes operations to perform. */
          public var operations: [Operations]

          /** Begin processing a batch operations request. */
          public struct Operations: Model {
            /** The HTTP method to use for the operation. */
            public enum Method: String, Codable, Equatable, CaseIterable {
              case get = "GET"
              case post = "POST"
              case put = "PUT"
              case patch = "PATCH"
            }

            /** The HTTP method to use for the operation. */
            public var method: Method

            /** The relative path to use for the operation. */
            public var path: String

            /** A string containing the JSON body to use with the request. */
            public var body: String?

            /** An optional client-supplied id returned with the operation results. */
            public var operationId: String?

            /** Any request query parameters. Example parameters: {"count":10, "offset":0} */
            public var params: [String: AnyCodable]?

            public init(method: Method, path: String, body: String? = nil, operationId: String? = nil, params: [String: AnyCodable]? = nil) {
              self.method = method
              self.path = path
              self.body = body
              self.operationId = operationId
              self.params = params
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              method = try container.decode("method")
              path = try container.decode("path")
              body = try container.decodeIfPresent("body")
              operationId = try container.decodeIfPresent("operation_id")
              params = try container.decodeAnyIfPresent("params")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encode(method, forKey: "method")
              try container.encode(path, forKey: "path")
              try container.encodeIfPresent(body, forKey: "body")
              try container.encodeIfPresent(operationId, forKey: "operation_id")
              try container.encodeAnyIfPresent(params, forKey: "params")
            }
          }

          public init(operations: [Operations]) {
            self.operations = operations
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            operations = try container.decodeArray("operations")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(operations, forKey: "operations")
          }
        }

        public var body: Body

        public init(body: Body, encoder _: RequestEncoder? = nil) {
          self.body = body
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          PostBatches.service
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
        /** The status of a batch request */
        public struct Status200: Model {
          /** The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case pending
            case preprocessing
            case started
            case finalizing
            case finished
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The date and time when all operations in the batch request completed in ISO 8601 format. */
          public var completedAt: Date?

          /** The number of completed operations that returned an error. */
          public var erroredOperations: Int?

          /** The number of completed operations. This includes operations that returned an error. */
          public var finishedOperations: Int?

          /** A string that uniquely identifies this batch request. */
          public var id: String?

          /** The URL of the gzipped archive of the results of all the operations. */
          public var responseBodyURL: String?

          /** The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status. */
          public var status: Status?

          /** The date and time when the server received the batch request in ISO 8601 format. */
          public var submittedAt: Date?

          /** The total number of operations to complete as part of this batch request. For GET requests requiring pagination, each page counts as a separate operation. */
          public var totalOperations: Int?

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

          public init(links: [Links]? = nil, completedAt: Date? = nil, erroredOperations: Int? = nil, finishedOperations: Int? = nil, id: String? = nil, responseBodyURL: String? = nil, status: Status? = nil, submittedAt: Date? = nil, totalOperations: Int? = nil) {
            self.links = links
            self.completedAt = completedAt
            self.erroredOperations = erroredOperations
            self.finishedOperations = finishedOperations
            self.id = id
            self.responseBodyURL = responseBodyURL
            self.status = status
            self.submittedAt = submittedAt
            self.totalOperations = totalOperations
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            completedAt = try container.decodeIfPresent("completed_at")
            erroredOperations = try container.decodeIfPresent("errored_operations")
            finishedOperations = try container.decodeIfPresent("finished_operations")
            id = try container.decodeIfPresent("id")
            responseBodyURL = try container.decodeIfPresent("response_body_url")
            status = try container.decodeIfPresent("status")
            submittedAt = try container.decodeIfPresent("submitted_at")
            totalOperations = try container.decodeIfPresent("total_operations")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(completedAt, forKey: "completed_at")
            try container.encodeIfPresent(erroredOperations, forKey: "errored_operations")
            try container.encodeIfPresent(finishedOperations, forKey: "finished_operations")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(responseBodyURL, forKey: "response_body_url")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(submittedAt, forKey: "submitted_at")
            try container.encodeIfPresent(totalOperations, forKey: "total_operations")
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
