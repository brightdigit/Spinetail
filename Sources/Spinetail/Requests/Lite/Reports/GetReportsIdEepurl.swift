import Foundation
import Prch

#if !os(watchOS)
  public extension Reports {
    /**
     List EepURL activity

     Get a summary of social activity for the campaign, tracked by EepURL.
     */
    enum GetReportsIdEepurl {
      public static let service = Service<Response>(id: "getReportsIdEepurl", tag: "reports", method: "GET", path: "/reports/{campaign_id}/eepurl", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
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
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetReportsIdEepurl.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String) {
          let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)")
        }

        public var queryParameters: [String: Any] {
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
        /** A summary of social activity for the campaign, tracked by EepURL. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The unique id for the campaign. */
          public var campaignId: String?

          /** A summary of the click-throughs on the campaign's URL. */
          public var clicks: Clicks?

          /** The shortened link used for tracking. */
          public var eepurl: String?

          /** A summary of the top referrers for the campaign. */
          public var referrers: [Referrers]?

          /** The total number of items matching the query regardless of pagination. */
          public var totalItems: Int?

          /** A summary of Twitter activity for a campaign. */
          public var twitter: Twitter?

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

          /** A summary of the click-throughs on the campaign's URL. */
          public struct Clicks: Model {
            /** The total number of clicks to the campaign's URL. */
            public var clicks: Int?

            /** The timestamp for the first click to the URL. */
            public var firstClick: Date?

            /** The timestamp for the last click to the URL. */
            public var lastClick: Date?

            /** A summary of the top click locations. */
            public var locations: [Locations]?

            /** An individual click location. */
            public struct Locations: Model {
              /** The two-digit country code for a recorded click. */
              public var country: String?

              /** If available, a specific region where the click was recorded. */
              public var region: String?

              public init(country: String? = nil, region: String? = nil) {
                self.country = country
                self.region = region
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                country = try container.decodeIfPresent("country")
                region = try container.decodeIfPresent("region")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(country, forKey: "country")
                try container.encodeIfPresent(region, forKey: "region")
              }
            }

            public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, locations: [Locations]? = nil) {
              self.clicks = clicks
              self.firstClick = firstClick
              self.lastClick = lastClick
              self.locations = locations
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              clicks = try container.decodeIfPresent("clicks")
              firstClick = try container.decodeIfPresent("first_click")
              lastClick = try container.decodeIfPresent("last_click")
              locations = try container.decodeArrayIfPresent("locations")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(clicks, forKey: "clicks")
              try container.encodeIfPresent(firstClick, forKey: "first_click")
              try container.encodeIfPresent(lastClick, forKey: "last_click")
              try container.encodeIfPresent(locations, forKey: "locations")
            }
          }

          /** A single instance of a campaign referral. */
          public struct Referrers: Model {
            /** The number of clicks a single referrer generated. */
            public var clicks: Int?

            /** The timestamp for the first click from this referrer. */
            public var firstClick: Date?

            /** The timestamp for the last click from this referrer. */
            public var lastClick: Date?

            /** A referrer (truncated to 100 bytes). */
            public var referrer: String?

            public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, referrer: String? = nil) {
              self.clicks = clicks
              self.firstClick = firstClick
              self.lastClick = lastClick
              self.referrer = referrer
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              clicks = try container.decodeIfPresent("clicks")
              firstClick = try container.decodeIfPresent("first_click")
              lastClick = try container.decodeIfPresent("last_click")
              referrer = try container.decodeIfPresent("referrer")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(clicks, forKey: "clicks")
              try container.encodeIfPresent(firstClick, forKey: "first_click")
              try container.encodeIfPresent(lastClick, forKey: "last_click")
              try container.encodeIfPresent(referrer, forKey: "referrer")
            }
          }

          /** A summary of Twitter activity for a campaign. */
          public struct Twitter: Model {
            /** The day and time of the first recorded tweet with a link to the campaign. */
            public var firstTweet: String?

            /** The day and time of the last recorded tweet with a link to the campaign. */
            public var lastTweet: String?

            /** The number of retweets that include a link to the campaign. */
            public var retweets: Int?

            /** A summary of tweets that include a link to the campaign. */
            public var statuses: [Statuses]?

            /** The number of tweets including a link to the campaign. */
            public var tweets: Int?

            /** An individual tweet. */
            public struct Statuses: Model {
              /** A timestamp for the tweet. */
              public var datetime: Date?

              /** A 'true' or 'false' status of whether the tweet is a retweet. */
              public var isRetweet: Bool?

              /** The Twitter handle for the author of the tweet. */
              public var screenName: String?

              /** The body of the tweet. */
              public var status: String?

              /** The individual id for the tweet. */
              public var statusId: String?

              public init(datetime: Date? = nil, isRetweet: Bool? = nil, screenName: String? = nil, status: String? = nil, statusId: String? = nil) {
                self.datetime = datetime
                self.isRetweet = isRetweet
                self.screenName = screenName
                self.status = status
                self.statusId = statusId
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                datetime = try container.decodeIfPresent("datetime")
                isRetweet = try container.decodeIfPresent("is_retweet")
                screenName = try container.decodeIfPresent("screen_name")
                status = try container.decodeIfPresent("status")
                statusId = try container.decodeIfPresent("status_id")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(datetime, forKey: "datetime")
                try container.encodeIfPresent(isRetweet, forKey: "is_retweet")
                try container.encodeIfPresent(screenName, forKey: "screen_name")
                try container.encodeIfPresent(status, forKey: "status")
                try container.encodeIfPresent(statusId, forKey: "status_id")
              }
            }

            public init(firstTweet: String? = nil, lastTweet: String? = nil, retweets: Int? = nil, statuses: [Statuses]? = nil, tweets: Int? = nil) {
              self.firstTweet = firstTweet
              self.lastTweet = lastTweet
              self.retweets = retweets
              self.statuses = statuses
              self.tweets = tweets
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              firstTweet = try container.decodeIfPresent("first_tweet")
              lastTweet = try container.decodeIfPresent("last_tweet")
              retweets = try container.decodeIfPresent("retweets")
              statuses = try container.decodeArrayIfPresent("statuses")
              tweets = try container.decodeIfPresent("tweets")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(firstTweet, forKey: "first_tweet")
              try container.encodeIfPresent(lastTweet, forKey: "last_tweet")
              try container.encodeIfPresent(retweets, forKey: "retweets")
              try container.encodeIfPresent(statuses, forKey: "statuses")
              try container.encodeIfPresent(tweets, forKey: "tweets")
            }
          }

          public init(links: [Links]? = nil, campaignId: String? = nil, clicks: Clicks? = nil, eepurl: String? = nil, referrers: [Referrers]? = nil, totalItems: Int? = nil, twitter: Twitter? = nil) {
            self.links = links
            self.campaignId = campaignId
            self.clicks = clicks
            self.eepurl = eepurl
            self.referrers = referrers
            self.totalItems = totalItems
            self.twitter = twitter
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            campaignId = try container.decodeIfPresent("campaign_id")
            clicks = try container.decodeIfPresent("clicks")
            eepurl = try container.decodeIfPresent("eepurl")
            referrers = try container.decodeArrayIfPresent("referrers")
            totalItems = try container.decodeIfPresent("total_items")
            twitter = try container.decodeIfPresent("twitter")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(campaignId, forKey: "campaign_id")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(eepurl, forKey: "eepurl")
            try container.encodeIfPresent(referrers, forKey: "referrers")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
            try container.encodeIfPresent(twitter, forKey: "twitter")
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
