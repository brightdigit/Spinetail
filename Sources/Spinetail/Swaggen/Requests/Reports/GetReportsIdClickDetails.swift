import Foundation
import Prch

public extension Reports {
  /**
   List campaign details

   Get information about clicks on specific links in your Mailchimp campaigns.
   */
  enum GetReportsIdClickDetails {
    public static let service = APIService<Response>(id: "getReportsIdClickDetails", tag: "reports", method: "GET", path: "/reports/{campaign_id}/click-details", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?

        /** The unique id for the campaign. */
        public var campaignId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.campaignId = campaignId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetReportsIdClickDetails.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, campaignId: campaignId)
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
        if let count = options.count {
          params["count"] = count
        }
        if let offset = options.offset {
          params["offset"] = offset
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A list of URLs and unique IDs included in HTML and plain-text versions of a campaign. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The campaign id. */
        public var campaignId: String?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** An array of objects, each representing a specific URL contained in the campaign. */
        public var urlsClicked: [UrlsClicked]?

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

        /** A report of links clicked in a specific campaign. */
        public struct UrlsClicked: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
          public var abSplit: AbSplit?

          /** The campaign id. */
          public var campaignId: String?

          /** The percentage of total clicks a link generated for a campaign. */
          public var clickPercentage: Double?

          /** The unique id for the link. */
          public var id: String?

          /** The date and time for the last recorded click for a link in ISO 8601 format. */
          public var lastClick: DateTime

          /** The number of total clicks for a link. */
          public var totalClicks: Int?

          /** The percentage of unique clicks a link generated for a campaign. */
          public var uniqueClickPercentage: Double?

          /** Number of unique clicks for a link. */
          public var uniqueClicks: Int?

          /** The URL for the link in the campaign. */
          public var url: String?

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

          /** A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
          public struct AbSplit: Model {
            /** Stats for Group A. */
            public var a: A?

            /** Stats for Group B. */
            public var b: B?

            /** Stats for Group A. */
            public struct A: Model {
              /** The percentage of total clicks for Group A. */
              public var clickPercentagea: Double?

              /** The total number of clicks for Group A. */
              public var totalClicksa: Int?

              /** The percentage of unique clicks for Group A. */
              public var uniqueClickPercentagea: Double?

              /** The number of unique clicks for Group A. */
              public var uniqueClicksa: Int?

              public init(clickPercentagea: Double? = nil, totalClicksa: Int? = nil, uniqueClickPercentagea: Double? = nil, uniqueClicksa: Int? = nil) {
                self.clickPercentagea = clickPercentagea
                self.totalClicksa = totalClicksa
                self.uniqueClickPercentagea = uniqueClickPercentagea
                self.uniqueClicksa = uniqueClicksa
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                clickPercentagea = try container.decodeIfPresent("click_percentage_a")
                totalClicksa = try container.decodeIfPresent("total_clicks_a")
                uniqueClickPercentagea = try container.decodeIfPresent("unique_click_percentage_a")
                uniqueClicksa = try container.decodeIfPresent("unique_clicks_a")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(clickPercentagea, forKey: "click_percentage_a")
                try container.encodeIfPresent(totalClicksa, forKey: "total_clicks_a")
                try container.encodeIfPresent(uniqueClickPercentagea, forKey: "unique_click_percentage_a")
                try container.encodeIfPresent(uniqueClicksa, forKey: "unique_clicks_a")
              }
            }

            /** Stats for Group B. */
            public struct B: Model {
              /** The percentage of total clicks for Group B. */
              public var clickPercentageb: Double?

              /** The total number of clicks for Group B. */
              public var totalClicksb: Int?

              /** The percentage of unique clicks for Group B. */
              public var uniqueClickPercentageb: Double?

              /** The number of unique clicks for Group B. */
              public var uniqueClicksb: Int?

              public init(clickPercentageb: Double? = nil, totalClicksb: Int? = nil, uniqueClickPercentageb: Double? = nil, uniqueClicksb: Int? = nil) {
                self.clickPercentageb = clickPercentageb
                self.totalClicksb = totalClicksb
                self.uniqueClickPercentageb = uniqueClickPercentageb
                self.uniqueClicksb = uniqueClicksb
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                clickPercentageb = try container.decodeIfPresent("click_percentage_b")
                totalClicksb = try container.decodeIfPresent("total_clicks_b")
                uniqueClickPercentageb = try container.decodeIfPresent("unique_click_percentage_b")
                uniqueClicksb = try container.decodeIfPresent("unique_clicks_b")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(clickPercentageb, forKey: "click_percentage_b")
                try container.encodeIfPresent(totalClicksb, forKey: "total_clicks_b")
                try container.encodeIfPresent(uniqueClickPercentageb, forKey: "unique_click_percentage_b")
                try container.encodeIfPresent(uniqueClicksb, forKey: "unique_clicks_b")
              }
            }

            public init(a: A? = nil, b: B? = nil) {
              self.a = a
              self.b = b
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              a = try container.decodeIfPresent("a")
              b = try container.decodeIfPresent("b")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(a, forKey: "a")
              try container.encodeIfPresent(b, forKey: "b")
            }
          }

          public init(links: [Links]? = nil, abSplit: AbSplit? = nil, campaignId: String? = nil, clickPercentage: Double? = nil, id: String? = nil, lastClick: Date? = nil, totalClicks: Int? = nil, uniqueClickPercentage: Double? = nil, uniqueClicks: Int? = nil, url: String? = nil) {
            self.links = links
            self.abSplit = abSplit
            self.campaignId = campaignId
            self.clickPercentage = clickPercentage
            self.id = id
            self.lastClick = .init(date: lastClick)
            self.totalClicks = totalClicks
            self.uniqueClickPercentage = uniqueClickPercentage
            self.uniqueClicks = uniqueClicks
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            abSplit = try container.decodeIfPresent("ab_split")
            campaignId = try container.decodeIfPresent("campaign_id")
            clickPercentage = try container.decodeIfPresent("click_percentage")
            id = try container.decodeIfPresent("id")
            lastClick = try container.decodeIfPresent("last_click")
            totalClicks = try container.decodeIfPresent("total_clicks")
            uniqueClickPercentage = try container.decodeIfPresent("unique_click_percentage")
            uniqueClicks = try container.decodeIfPresent("unique_clicks")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(abSplit, forKey: "ab_split")
            try container.encodeIfPresent(campaignId, forKey: "campaign_id")
            try container.encodeIfPresent(clickPercentage, forKey: "click_percentage")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(lastClick, forKey: "last_click")
            try container.encodeIfPresent(totalClicks, forKey: "total_clicks")
            try container.encodeIfPresent(uniqueClickPercentage, forKey: "unique_click_percentage")
            try container.encodeIfPresent(uniqueClicks, forKey: "unique_clicks")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(links: [Links]? = nil, campaignId: String? = nil, totalItems: Int? = nil, urlsClicked: [UrlsClicked]? = nil) {
          self.links = links
          self.campaignId = campaignId
          self.totalItems = totalItems
          self.urlsClicked = urlsClicked
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          campaignId = try container.decodeIfPresent("campaign_id")
          totalItems = try container.decodeIfPresent("total_items")
          urlsClicked = try container.decodeArrayIfPresent("urls_clicked")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
          try container.encodeIfPresent(urlsClicked, forKey: "urls_clicked")
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
