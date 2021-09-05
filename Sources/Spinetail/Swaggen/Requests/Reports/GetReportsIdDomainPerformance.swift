import Foundation
import Prch

public extension Reports {
  /**
   List domain performance stats

   Get statistics for the top-performing email domains in a campaign.
   */
  enum GetReportsIdDomainPerformance {
    public static let service = APIService<Response>(id: "getReportsIdDomainPerformance", tag: "reports", method: "GET", path: "/reports/{campaign_id}/domain-performance", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
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
        super.init(service: GetReportsIdDomainPerformance.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.options.campaignId)")
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
      /** Statistics for the top-performing email domains in a campaign. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The unique id for the campaign. */
        public var campaignId: String?

        /** The top 5 email domains based on total delivered emails. */
        public var domains: [Domains]?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** The total number of emails sent for the campaign. */
        public var totalSent: Int?

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

        /** A single email domain's performance */
        public struct Domains: Model {
          /** The number of bounces at a domain. */
          public var bounces: Int?

          /** The percentage of total bounces from this domain. */
          public var bouncesPct: Double?

          /** The number of clicks for a domain. */
          public var clicks: Int?

          /** The percentage of total clicks from this domain. */
          public var clicksPct: Double?

          /** The number of successful deliveries for a domain. */
          public var delivered: Int?

          /** The name of the domain (gmail.com, hotmail.com, yahoo.com). */
          public var domain: String?

          /** The percentage of total emails that went to this domain. */
          public var emailsPct: Double?

          /** The number of emails sent to that specific domain. */
          public var emailsSent: Int?

          /** The number of opens for a domain. */
          public var opens: Int?

          /** The percentage of total opens from this domain. */
          public var opensPct: Double?

          /** The total number of unsubscribes for a domain. */
          public var unsubs: Int?

          /** The percentage of total unsubscribes from this domain. */
          public var unsubsPct: Double?

          public init(bounces: Int? = nil, bouncesPct: Double? = nil, clicks: Int? = nil, clicksPct: Double? = nil, delivered: Int? = nil, domain: String? = nil, emailsPct: Double? = nil, emailsSent: Int? = nil, opens: Int? = nil, opensPct: Double? = nil, unsubs: Int? = nil, unsubsPct: Double? = nil) {
            self.bounces = bounces
            self.bouncesPct = bouncesPct
            self.clicks = clicks
            self.clicksPct = clicksPct
            self.delivered = delivered
            self.domain = domain
            self.emailsPct = emailsPct
            self.emailsSent = emailsSent
            self.opens = opens
            self.opensPct = opensPct
            self.unsubs = unsubs
            self.unsubsPct = unsubsPct
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            bounces = try container.decodeIfPresent("bounces")
            bouncesPct = try container.decodeIfPresent("bounces_pct")
            clicks = try container.decodeIfPresent("clicks")
            clicksPct = try container.decodeIfPresent("clicks_pct")
            delivered = try container.decodeIfPresent("delivered")
            domain = try container.decodeIfPresent("domain")
            emailsPct = try container.decodeIfPresent("emails_pct")
            emailsSent = try container.decodeIfPresent("emails_sent")
            opens = try container.decodeIfPresent("opens")
            opensPct = try container.decodeIfPresent("opens_pct")
            unsubs = try container.decodeIfPresent("unsubs")
            unsubsPct = try container.decodeIfPresent("unsubs_pct")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(bounces, forKey: "bounces")
            try container.encodeIfPresent(bouncesPct, forKey: "bounces_pct")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(clicksPct, forKey: "clicks_pct")
            try container.encodeIfPresent(delivered, forKey: "delivered")
            try container.encodeIfPresent(domain, forKey: "domain")
            try container.encodeIfPresent(emailsPct, forKey: "emails_pct")
            try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
            try container.encodeIfPresent(opens, forKey: "opens")
            try container.encodeIfPresent(opensPct, forKey: "opens_pct")
            try container.encodeIfPresent(unsubs, forKey: "unsubs")
            try container.encodeIfPresent(unsubsPct, forKey: "unsubs_pct")
          }
        }

        public init(links: [Links]? = nil, campaignId: String? = nil, domains: [Domains]? = nil, totalItems: Int? = nil, totalSent: Int? = nil) {
          self.links = links
          self.campaignId = campaignId
          self.domains = domains
          self.totalItems = totalItems
          self.totalSent = totalSent
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          campaignId = try container.decodeIfPresent("campaign_id")
          domains = try container.decodeArrayIfPresent("domains")
          totalItems = try container.decodeIfPresent("total_items")
          totalSent = try container.decodeIfPresent("total_sent")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(domains, forKey: "domains")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
          try container.encodeIfPresent(totalSent, forKey: "total_sent")
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
