import Foundation
import Prch

public extension Reporting {
  /**
   List landing pages reports

   Get reports of landing pages.
   */
  enum GetReportingLandingPages {
    public static let service = APIService<Response>(id: "getReportingLandingPages", tag: "reporting", method: "GET", path: "/reporting/landing-pages", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetReportingLandingPages.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset)
        self.init(options: options)
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
      /** A collection of landing pages. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        public var landingPages: [LandingPages]?

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

        /** A summary of an individual landing page's settings and content. */
        public struct LandingPages: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The number of clicks to this landing pages. */
          public var clicks: Int?

          /** The percentage of people who visited your landing page and were added to your list. */
          public var conversionRate: Double?

          public var ecommerce: Ecommerce?

          /** A string that uniquely identifies this landing page. */
          public var id: String?

          /** The list id connected to this landing page. */
          public var listId: String?

          /** List Name */
          public var listName: String?

          /** The name of this landing page the user will see. */
          public var name: String?

          /** The time this landing page was published. */
          public var publishedAt: DateTime

          /** A list of tags associated to the landing page. */
          public var signupTags: [SignupTags]?

          /** The status of the landing page. */
          public var status: String?

          /** The number of subscribes to this landing pages. */
          public var subscribes: Int?

          public var timeseries: Timeseries?

          /** The name of the landing page the user's customers will see. */
          public var title: String?

          /** The number of unique visits to this landing pages. */
          public var uniqueVisits: Int?

          /** The time this landing page was unpublished. */
          public var unpublishedAt: DateTime

          /** The landing page url. */
          public var url: String?

          /** The number of visits to this landing pages. */
          public var visits: Int?

          /** The ID used in the Mailchimp web application. */
          public var webId: Int?

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

          /** A summary of an individual landing page's settings and content. */
          public struct Ecommerce: Model {
            /** The average order revenue of this landing page. */
            public var averageOrderRevenue: Double?

            /** The user's currency code. */
            public var currencyCode: String?

            /** The total number of orders associated with this landing page. */
            public var totalOrders: Int?

            /** The total revenue of this landing page. */
            public var totalRevenue: Double?

            public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalOrders: Int? = nil, totalRevenue: Double? = nil) {
              self.averageOrderRevenue = averageOrderRevenue
              self.currencyCode = currencyCode
              self.totalOrders = totalOrders
              self.totalRevenue = totalRevenue
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              averageOrderRevenue = try container.decodeIfPresent("average_order_revenue")
              currencyCode = try container.decodeIfPresent("currency_code")
              totalOrders = try container.decodeIfPresent("total_orders")
              totalRevenue = try container.decodeIfPresent("total_revenue")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(averageOrderRevenue, forKey: "average_order_revenue")
              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
              try container.encodeIfPresent(totalOrders, forKey: "total_orders")
              try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
            }
          }

          /** A summary of an individual landing page's settings and content. */
          public struct SignupTags: Model {
            /** The unique id for the tag. */
            public var tagId: Int?

            /** The name of the tag. */
            public var tagName: String?

            public init(tagId: Int? = nil, tagName: String? = nil) {
              self.tagId = tagId
              self.tagName = tagName
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              tagId = try container.decodeIfPresent("tag_id")
              tagName = try container.decodeIfPresent("tag_name")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(tagId, forKey: "tag_id")
              try container.encodeIfPresent(tagName, forKey: "tag_name")
            }
          }

          /** A summary of an individual landing page's settings and content. */
          public struct Timeseries: Model {
            /** The clicks and visits data from the last seven days. */
            public var dailyStats: DailyStats?

            /** The clicks and visits data from the last five weeks. */
            public var weeklyStats: WeeklyStats?

            /** The clicks and visits data from the last seven days. */
            public struct DailyStats: Model {
              public var clicks: [Clicks]?

              public var uniqueVisits: [UniqueVisits]?

              public var visits: [Visits]?

              /** The clicks and visits data from the last seven days. */
              public struct Clicks: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              /** The clicks and visits data from the last seven days. */
              public struct UniqueVisits: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              /** The clicks and visits data from the last seven days. */
              public struct Visits: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              public init(clicks: [Clicks]? = nil, uniqueVisits: [UniqueVisits]? = nil, visits: [Visits]? = nil) {
                self.clicks = clicks
                self.uniqueVisits = uniqueVisits
                self.visits = visits
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                clicks = try container.decodeArrayIfPresent("clicks")
                uniqueVisits = try container.decodeArrayIfPresent("unique_visits")
                visits = try container.decodeArrayIfPresent("visits")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(clicks, forKey: "clicks")
                try container.encodeIfPresent(uniqueVisits, forKey: "unique_visits")
                try container.encodeIfPresent(visits, forKey: "visits")
              }
            }

            /** The clicks and visits data from the last five weeks. */
            public struct WeeklyStats: Model {
              /** The total number of clicks in a week. */
              public var clicks: [Clicks]?

              public var uniqueVisits: [UniqueVisits]?

              /** The total number of visits in a week. */
              public var visits: [Visits]?

              /** The clicks and visits data from the last five weeks. */
              public struct Clicks: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              /** The clicks and visits data from the last five weeks. */
              public struct UniqueVisits: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              /** The clicks and visits data from the last five weeks. */
              public struct Visits: Model {
                public var date: String?

                public var val: Int?

                public init(date: String? = nil, val: Int? = nil) {
                  self.date = date
                  self.val = val
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  date = try container.decodeIfPresent("date")
                  val = try container.decodeIfPresent("val")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(date, forKey: "date")
                  try container.encodeIfPresent(val, forKey: "val")
                }
              }

              public init(clicks: [Clicks]? = nil, uniqueVisits: [UniqueVisits]? = nil, visits: [Visits]? = nil) {
                self.clicks = clicks
                self.uniqueVisits = uniqueVisits
                self.visits = visits
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                clicks = try container.decodeArrayIfPresent("clicks")
                uniqueVisits = try container.decodeArrayIfPresent("unique_visits")
                visits = try container.decodeArrayIfPresent("visits")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(clicks, forKey: "clicks")
                try container.encodeIfPresent(uniqueVisits, forKey: "unique_visits")
                try container.encodeIfPresent(visits, forKey: "visits")
              }
            }

            public init(dailyStats: DailyStats? = nil, weeklyStats: WeeklyStats? = nil) {
              self.dailyStats = dailyStats
              self.weeklyStats = weeklyStats
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              dailyStats = try container.decodeIfPresent("daily_stats")
              weeklyStats = try container.decodeIfPresent("weekly_stats")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(dailyStats, forKey: "daily_stats")
              try container.encodeIfPresent(weeklyStats, forKey: "weekly_stats")
            }
          }

          public init(links: [Links]? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: Ecommerce? = nil, id: String? = nil, listId: String? = nil, listName: String? = nil, name: String? = nil, publishedAt: Date? = nil, signupTags: [SignupTags]? = nil, status: String? = nil, subscribes: Int? = nil, timeseries: Timeseries? = nil, title: String? = nil, uniqueVisits: Int? = nil, unpublishedAt: Date? = nil, url: String? = nil, visits: Int? = nil, webId: Int? = nil) {
            self.links = links
            self.clicks = clicks
            self.conversionRate = conversionRate
            self.ecommerce = ecommerce
            self.id = id
            self.listId = listId
            self.listName = listName
            self.name = name
            self.publishedAt = .init(date: publishedAt)
            self.signupTags = signupTags
            self.status = status
            self.subscribes = subscribes
            self.timeseries = timeseries
            self.title = title
            self.uniqueVisits = uniqueVisits
            self.unpublishedAt = .init(date: unpublishedAt)
            self.url = url
            self.visits = visits
            self.webId = webId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            clicks = try container.decodeIfPresent("clicks")
            conversionRate = try container.decodeIfPresent("conversion_rate")
            ecommerce = try container.decodeIfPresent("ecommerce")
            id = try container.decodeIfPresent("id")
            listId = try container.decodeIfPresent("list_id")
            listName = try container.decodeIfPresent("list_name")
            name = try container.decodeIfPresent("name")
            publishedAt = try container.decodeIfPresent("published_at")
            signupTags = try container.decodeArrayIfPresent("signup_tags")
            status = try container.decodeIfPresent("status")
            subscribes = try container.decodeIfPresent("subscribes")
            timeseries = try container.decodeIfPresent("timeseries")
            title = try container.decodeIfPresent("title")
            uniqueVisits = try container.decodeIfPresent("unique_visits")
            unpublishedAt = try container.decodeIfPresent("unpublished_at")
            url = try container.decodeIfPresent("url")
            visits = try container.decodeIfPresent("visits")
            webId = try container.decodeIfPresent("web_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(conversionRate, forKey: "conversion_rate")
            try container.encodeIfPresent(ecommerce, forKey: "ecommerce")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(listName, forKey: "list_name")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(publishedAt, forKey: "published_at")
            try container.encodeIfPresent(signupTags, forKey: "signup_tags")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(subscribes, forKey: "subscribes")
            try container.encodeIfPresent(timeseries, forKey: "timeseries")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(uniqueVisits, forKey: "unique_visits")
            try container.encodeIfPresent(unpublishedAt, forKey: "unpublished_at")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(visits, forKey: "visits")
            try container.encodeIfPresent(webId, forKey: "web_id")
          }
        }

        public init(links: [Links]? = nil, landingPages: [LandingPages]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.landingPages = landingPages
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          landingPages = try container.decodeArrayIfPresent("landing_pages")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(landingPages, forKey: "landing_pages")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
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

      /** List of Landing Page Report Instances */
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
