import Foundation
import Prch

public extension Lists {
  /**
   Get growth history by month

   Get a summary of a specific list's growth activity for a specific month and year.
   */
  enum GetListsIdGrowthHistoryId {
    public static let service = APIService<Response>(id: "getListsIdGrowthHistoryId", tag: "lists", method: "GET", path: "/lists/{list_id}/growth-history/{month}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique ID for the list. */
        public var listId: String

        /** A specific month of list growth history. */
        public var month: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, month: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.listId = listId
          self.month = month
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetListsIdGrowthHistoryId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, month: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, listId: listId, month: month)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.options.listId)").replacingOccurrences(of: "{" + "month" + "}", with: "\(self.options.month)")
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
      /** A summary of a specific list's growth activity for a specific month and year. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** Newly cleaned (hard-bounced) members on the list for a specific month. */
        public var cleaned: Int?

        /** Newly deleted members on the list for a specific month. */
        public var deleted: Int?

        /** (deprecated) */
        public var existing: Int?

        /** (deprecated) */
        public var imports: Int?

        /** The list id for the growth activity report. */
        public var listId: String?

        /** The month that the growth history is describing. */
        public var month: String?

        /** (deprecated) */
        public var optins: Int?

        /** Pending members on the list for a specific month. */
        public var pending: Int?

        /** Newly reconfirmed members on the list for a specific month. */
        public var reconfirm: Int?

        /** Total subscribed members on the list at the end of the month. */
        public var subscribed: Int?

        /** Subscribers that have been sent transactional emails via Mandrill. */
        public var transactional: Int?

        /** Newly unsubscribed members on the list for a specific month. */
        public var unsubscribed: Int?

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

        public init(links: [Links]? = nil, cleaned: Int? = nil, deleted: Int? = nil, existing: Int? = nil, imports: Int? = nil, listId: String? = nil, month: String? = nil, optins: Int? = nil, pending: Int? = nil, reconfirm: Int? = nil, subscribed: Int? = nil, transactional: Int? = nil, unsubscribed: Int? = nil) {
          self.links = links
          self.cleaned = cleaned
          self.deleted = deleted
          self.existing = existing
          self.imports = imports
          self.listId = listId
          self.month = month
          self.optins = optins
          self.pending = pending
          self.reconfirm = reconfirm
          self.subscribed = subscribed
          self.transactional = transactional
          self.unsubscribed = unsubscribed
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          cleaned = try container.decodeIfPresent("cleaned")
          deleted = try container.decodeIfPresent("deleted")
          existing = try container.decodeIfPresent("existing")
          imports = try container.decodeIfPresent("imports")
          listId = try container.decodeIfPresent("list_id")
          month = try container.decodeIfPresent("month")
          optins = try container.decodeIfPresent("optins")
          pending = try container.decodeIfPresent("pending")
          reconfirm = try container.decodeIfPresent("reconfirm")
          subscribed = try container.decodeIfPresent("subscribed")
          transactional = try container.decodeIfPresent("transactional")
          unsubscribed = try container.decodeIfPresent("unsubscribed")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(cleaned, forKey: "cleaned")
          try container.encodeIfPresent(deleted, forKey: "deleted")
          try container.encodeIfPresent(existing, forKey: "existing")
          try container.encodeIfPresent(imports, forKey: "imports")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(month, forKey: "month")
          try container.encodeIfPresent(optins, forKey: "optins")
          try container.encodeIfPresent(pending, forKey: "pending")
          try container.encodeIfPresent(reconfirm, forKey: "reconfirm")
          try container.encodeIfPresent(subscribed, forKey: "subscribed")
          try container.encodeIfPresent(transactional, forKey: "transactional")
          try container.encodeIfPresent(unsubscribed, forKey: "unsubscribed")
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
