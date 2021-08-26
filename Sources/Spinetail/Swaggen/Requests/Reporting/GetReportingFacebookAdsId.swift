import Foundation
import Prch

public extension Reporting {
  /**
   Get facebook ad report

   Get report of a Facebook ad.
   */
  enum GetReportingFacebookAdsId {
    public static let service = APIService<Response>(id: "getReportingFacebookAdsId", tag: "reporting", method: "GET", path: "/reporting/facebook-ads/{outreach_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** The outreach id. */
        public var outreachId: String

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        public init(fields: [String]? = nil, outreachId: String, excludeFields: [String]? = nil) {
          self.fields = fields
          self.outreachId = outreachId
          self.excludeFields = excludeFields
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetReportingFacebookAdsId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, outreachId: String, excludeFields: [String]? = nil) {
        let options = Options(fields: fields, outreachId: outreachId, excludeFields: excludeFields)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "outreach_id" + "}", with: "\(self.options.outreachId)")
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
      /** Get report of a Facebook ad. */
      public struct Status200: Model {
        /** Campaign, Ad, or Page status */
        public enum Status: String, Codable, Equatable, CaseIterable {
          case save
          case paused
          case schedule
          case sending
          case sent
          case canceled
          case canceling
          case active
          case disconnected
          case somepaused
          case draft
          case completed
          case partialRejected
          case pending
          case rejected
          case published
          case unpublished
        }

        /** Supported Campaign, Ad, Page type */
        public enum `Type`: String, Codable, Equatable, CaseIterable {
          case regular
          case plaintext
          case rss
          case reconfirm
          case variate
          case absplit
          case automation
          case facebook
          case google
          case autoresponder
          case transactional
          case page
          case website
          case survey
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** Audience settings */
        public var audience: Audience?

        public var audienceActivity: AudienceActivity?

        public var budget: Budget?

        public var canceledAt: DateTime

        /** Channel settings */
        public var channel: Channel?

        public var createTime: DateTime

        public var emailSourceName: String?

        public var endTime: DateTime

        public var hasSegment: Bool?

        /** Unique ID of an Outreach */
        public var id: String?

        /** Title or name of an Outreach */
        public var name: String?

        public var needsAttention: Bool?

        public var pausedAt: DateTime

        public var publishedTime: DateTime

        /** List settings for the outreach */
        public var recipients: Recipients?

        /** Report summary of facebook ad */
        public var reportSummary: ReportSummary?

        /** Outreach report availability */
        public var showReport: Bool?

        public var startTime: DateTime

        /** Campaign, Ad, or Page status */
        public var status: Status?

        /** The URL of the thumbnail for this outreach */
        public var thumbnail: String?

        /** Supported Campaign, Ad, Page type */
        public var type: `Type`?

        public var updatedAt: DateTime

        public var wasCanceledByFacebook: Bool?

        /** Web ID */
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

        /** Audience settings */
        public struct Audience: Model {
          /** List or Facebook based audience */
          public enum SourceType: String, Codable, Equatable, CaseIterable {
            case facebook
            case list
          }

          /** Type of the audience */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case customAudience = "Custom Audience"
            case lookalikeAudience = "Lookalike Audience"
            case interestBasedAudience = "Interest-based Audience"
          }

          public var emailSource: EmailSource?

          /** To include list contacts as part of audience */
          public var includeSourceInTarget: Bool?

          /** To find similar audience in given country */
          public var lookalikeCountryCode: String?

          /** List or Facebook based audience */
          public var sourceType: SourceType?

          public var targetingSpecs: TargetingSpecs?

          /** Type of the audience */
          public var type: `Type`?

          /** Audience settings */
          public struct EmailSource: Model {
            /** Is the source reference a segment */
            public var isSegment: Bool?

            /** Associated list name to the source */
            public var listName: String?

            /** Email source name */
            public var name: String?

            /** Segment type if this source is tied to a segment */
            public var segmentType: String?

            /** Type of the email source */
            public var type: String?

            public init(isSegment: Bool? = nil, listName: String? = nil, name: String? = nil, segmentType: String? = nil, type: String? = nil) {
              self.isSegment = isSegment
              self.listName = listName
              self.name = name
              self.segmentType = segmentType
              self.type = type
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              isSegment = try container.decodeIfPresent("is_segment")
              listName = try container.decodeIfPresent("list_name")
              name = try container.decodeIfPresent("name")
              segmentType = try container.decodeIfPresent("segment_type")
              type = try container.decodeIfPresent("type")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(isSegment, forKey: "is_segment")
              try container.encodeIfPresent(listName, forKey: "list_name")
              try container.encodeIfPresent(name, forKey: "name")
              try container.encodeIfPresent(segmentType, forKey: "segment_type")
              try container.encodeIfPresent(type, forKey: "type")
            }
          }

          /** Audience settings */
          public struct TargetingSpecs: Model {
            public var gender: Int?

            public var interests: [Interests]?

            public var locations: Locations?

            public var maxAge: Int?

            public var minAge: Int?

            /** Audience settings */
            public struct Interests: Model {
              public var name: String?

              public init(name: String? = nil) {
                self.name = name
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                name = try container.decodeIfPresent("name")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(name, forKey: "name")
              }
            }

            /** Audience settings */
            public struct Locations: Model {
              public var cities: [String]?

              public var countries: [String]?

              public var regions: [String]?

              public var zips: [String]?

              public init(cities: [String]? = nil, countries: [String]? = nil, regions: [String]? = nil, zips: [String]? = nil) {
                self.cities = cities
                self.countries = countries
                self.regions = regions
                self.zips = zips
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                cities = try container.decodeArrayIfPresent("cities")
                countries = try container.decodeArrayIfPresent("countries")
                regions = try container.decodeArrayIfPresent("regions")
                zips = try container.decodeArrayIfPresent("zips")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(cities, forKey: "cities")
                try container.encodeIfPresent(countries, forKey: "countries")
                try container.encodeIfPresent(regions, forKey: "regions")
                try container.encodeIfPresent(zips, forKey: "zips")
              }
            }

            public init(gender: Int? = nil, interests: [Interests]? = nil, locations: Locations? = nil, maxAge: Int? = nil, minAge: Int? = nil) {
              self.gender = gender
              self.interests = interests
              self.locations = locations
              self.maxAge = maxAge
              self.minAge = minAge
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              gender = try container.decodeIfPresent("gender")
              interests = try container.decodeArrayIfPresent("interests")
              locations = try container.decodeIfPresent("locations")
              maxAge = try container.decodeIfPresent("max_age")
              minAge = try container.decodeIfPresent("min_age")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(gender, forKey: "gender")
              try container.encodeIfPresent(interests, forKey: "interests")
              try container.encodeIfPresent(locations, forKey: "locations")
              try container.encodeIfPresent(maxAge, forKey: "max_age")
              try container.encodeIfPresent(minAge, forKey: "min_age")
            }
          }

          public init(emailSource: EmailSource? = nil, includeSourceInTarget: Bool? = nil, lookalikeCountryCode: String? = nil, sourceType: SourceType? = nil, targetingSpecs: TargetingSpecs? = nil, type: Type? = nil) {
            self.emailSource = emailSource
            self.includeSourceInTarget = includeSourceInTarget
            self.lookalikeCountryCode = lookalikeCountryCode
            self.sourceType = sourceType
            self.targetingSpecs = targetingSpecs
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            emailSource = try container.decodeIfPresent("email_source")
            includeSourceInTarget = try container.decodeIfPresent("include_source_in_target")
            lookalikeCountryCode = try container.decodeIfPresent("lookalike_country_code")
            sourceType = try container.decodeIfPresent("source_type")
            targetingSpecs = try container.decodeIfPresent("targeting_specs")
            type = try container.decodeIfPresent("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(emailSource, forKey: "email_source")
            try container.encodeIfPresent(includeSourceInTarget, forKey: "include_source_in_target")
            try container.encodeIfPresent(lookalikeCountryCode, forKey: "lookalike_country_code")
            try container.encodeIfPresent(sourceType, forKey: "source_type")
            try container.encodeIfPresent(targetingSpecs, forKey: "targeting_specs")
            try container.encodeIfPresent(type, forKey: "type")
          }
        }

        /** Get report of a Facebook ad. */
        public struct AudienceActivity: Model {
          public var clicks: [Clicks]?

          public var impressions: [Impressions]?

          public var revenue: [Revenue]?

          /** Get report of a Facebook ad. */
          public struct Clicks: Model {
            public var clicks: Int?

            public var date: String?

            public init(clicks: Int? = nil, date: String? = nil) {
              self.clicks = clicks
              self.date = date
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              clicks = try container.decodeIfPresent("clicks")
              date = try container.decodeIfPresent("date")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(clicks, forKey: "clicks")
              try container.encodeIfPresent(date, forKey: "date")
            }
          }

          /** Get report of a Facebook ad. */
          public struct Impressions: Model {
            public var date: String?

            public var impressions: Int?

            public init(date: String? = nil, impressions: Int? = nil) {
              self.date = date
              self.impressions = impressions
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              date = try container.decodeIfPresent("date")
              impressions = try container.decodeIfPresent("impressions")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(date, forKey: "date")
              try container.encodeIfPresent(impressions, forKey: "impressions")
            }
          }

          /** Get report of a Facebook ad. */
          public struct Revenue: Model {
            public var date: String?

            public var revenue: Double?

            public init(date: String? = nil, revenue: Double? = nil) {
              self.date = date
              self.revenue = revenue
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              date = try container.decodeIfPresent("date")
              revenue = try container.decodeIfPresent("revenue")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(date, forKey: "date")
              try container.encodeIfPresent(revenue, forKey: "revenue")
            }
          }

          public init(clicks: [Clicks]? = nil, impressions: [Impressions]? = nil, revenue: [Revenue]? = nil) {
            self.clicks = clicks
            self.impressions = impressions
            self.revenue = revenue
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            clicks = try container.decodeArrayIfPresent("clicks")
            impressions = try container.decodeArrayIfPresent("impressions")
            revenue = try container.decodeArrayIfPresent("revenue")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(impressions, forKey: "impressions")
            try container.encodeIfPresent(revenue, forKey: "revenue")
          }
        }

        /** Get report of a Facebook ad. */
        public struct Budget: Model {
          /** Currency code */
          public var currencyCode: String?

          /** Duration of the ad in seconds */
          public var duration: Int?

          /** Total budget of the ad */
          public var totalAmount: Double?

          public init(currencyCode: String? = nil, duration: Int? = nil, totalAmount: Double? = nil) {
            self.currencyCode = currencyCode
            self.duration = duration
            self.totalAmount = totalAmount
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            currencyCode = try container.decodeIfPresent("currency_code")
            duration = try container.decodeIfPresent("duration")
            totalAmount = try container.decodeIfPresent("total_amount")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(currencyCode, forKey: "currency_code")
            try container.encodeIfPresent(duration, forKey: "duration")
            try container.encodeIfPresent(totalAmount, forKey: "total_amount")
          }
        }

        /** Channel settings */
        public struct Channel: Model {
          /** Is this for facebook audience */
          public var fbPlacementAudience: Bool?

          /** Is this for facebook feed */
          public var fbPlacementFeed: Bool?

          /** Is this for instagram feed */
          public var igPlacementFeed: Bool?

          public init(fbPlacementAudience: Bool? = nil, fbPlacementFeed: Bool? = nil, igPlacementFeed: Bool? = nil) {
            self.fbPlacementAudience = fbPlacementAudience
            self.fbPlacementFeed = fbPlacementFeed
            self.igPlacementFeed = igPlacementFeed
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            fbPlacementAudience = try container.decodeIfPresent("fb_placement_audience")
            fbPlacementFeed = try container.decodeIfPresent("fb_placement_feed")
            igPlacementFeed = try container.decodeIfPresent("ig_placement_feed")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(fbPlacementAudience, forKey: "fb_placement_audience")
            try container.encodeIfPresent(fbPlacementFeed, forKey: "fb_placement_feed")
            try container.encodeIfPresent(igPlacementFeed, forKey: "ig_placement_feed")
          }
        }

        /** List settings for the outreach */
        public struct Recipients: Model {
          /** The unique list id. */
          public var listId: String?

          /** The status of the list used, namely if it's deleted or disabled. */
          public var listIsActive: Bool?

          /** The name of the list. */
          public var listName: String?

          /** Count of the recipients on the associated list. Formatted as an integer. */
          public var recipientCount: Int?

          /** An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options. */
          public var segmentOpts: SegmentOpts?

          /** A description of the [segment](https://mailchimp.com/help/save-and-manage-segments/) used for the campaign. Formatted as a string marked up with HTML. */
          public var segmentText: String?

          /** An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options. */
          public struct SegmentOpts: Model {
            /** Segment match type. */
            public enum Match: String, Codable, Equatable, CaseIterable {
              case any
              case all
            }

            /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
            public var conditions: [[String: CodableAny]]?

            /** Segment match type. */
            public var match: Match?

            /** The prebuilt segment id, if a prebuilt segment has been designated for this campaign. */
            public var prebuiltSegmentId: String?

            /** The id for an existing saved segment. */
            public var savedSegmentId: Int?

            public init(conditions: [[String: CodableAny]]? = nil, match: Match? = nil, prebuiltSegmentId: String? = nil, savedSegmentId: Int? = nil) {
              self.conditions = conditions
              self.match = match
              self.prebuiltSegmentId = prebuiltSegmentId
              self.savedSegmentId = savedSegmentId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              conditions = try container.decodeAnyIfPresent("conditions")
              match = try container.decodeIfPresent("match")
              prebuiltSegmentId = try container.decodeIfPresent("prebuilt_segment_id")
              savedSegmentId = try container.decodeIfPresent("saved_segment_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeAnyIfPresent(conditions, forKey: "conditions")
              try container.encodeIfPresent(match, forKey: "match")
              try container.encodeIfPresent(prebuiltSegmentId, forKey: "prebuilt_segment_id")
              try container.encodeIfPresent(savedSegmentId, forKey: "saved_segment_id")
            }
          }

          public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOpts? = nil, segmentText: String? = nil) {
            self.listId = listId
            self.listIsActive = listIsActive
            self.listName = listName
            self.recipientCount = recipientCount
            self.segmentOpts = segmentOpts
            self.segmentText = segmentText
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            listId = try container.decodeIfPresent("list_id")
            listIsActive = try container.decodeIfPresent("list_is_active")
            listName = try container.decodeIfPresent("list_name")
            recipientCount = try container.decodeIfPresent("recipient_count")
            segmentOpts = try container.decodeIfPresent("segment_opts")
            segmentText = try container.decodeIfPresent("segment_text")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
            try container.encodeIfPresent(listName, forKey: "list_name")
            try container.encodeIfPresent(recipientCount, forKey: "recipient_count")
            try container.encodeIfPresent(segmentOpts, forKey: "segment_opts")
            try container.encodeIfPresent(segmentText, forKey: "segment_text")
          }
        }

        /** Report summary of facebook ad */
        public struct ReportSummary: Model {
          public var averageDailyBudget: AverageDailyBudget?

          public var averageOrderAmount: AverageOrderAmount?

          public var clickRate: Double?

          public var clicks: Int?

          public var comments: Int?

          public var costPerClick: CostPerClick?

          public var ecommerce: Ecommerce?

          public var extendedAt: ExtendedAt?

          public var firstTimeBuyers: Int?

          public var hasExtendedAdDuration: Bool?

          public var impressions: Int?

          public var likes: Int?

          public var reach: Int?

          public var returnOnInvestment: Double?

          public var shares: Int?

          public var totalOrders: Int?

          public var totalProductsSold: Int?

          public var uniqueClicks: Int?

          /** Report summary of facebook ad */
          public struct AverageDailyBudget: Model {
            public var amount: Double?

            public var currencyCode: String?

            public init(amount: Double? = nil, currencyCode: String? = nil) {
              self.amount = amount
              self.currencyCode = currencyCode
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              amount = try container.decodeIfPresent("amount")
              currencyCode = try container.decodeIfPresent("currency_code")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(amount, forKey: "amount")
              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
            }
          }

          /** Report summary of facebook ad */
          public struct AverageOrderAmount: Model {
            public var amount: Double?

            public var currencyCode: String?

            public init(amount: Double? = nil, currencyCode: String? = nil) {
              self.amount = amount
              self.currencyCode = currencyCode
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              amount = try container.decodeIfPresent("amount")
              currencyCode = try container.decodeIfPresent("currency_code")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(amount, forKey: "amount")
              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
            }
          }

          /** Report summary of facebook ad */
          public struct CostPerClick: Model {
            public var amount: Double?

            public var currencyCode: String?

            public init(amount: Double? = nil, currencyCode: String? = nil) {
              self.amount = amount
              self.currencyCode = currencyCode
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              amount = try container.decodeIfPresent("amount")
              currencyCode = try container.decodeIfPresent("currency_code")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(amount, forKey: "amount")
              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
            }
          }

          /** Report summary of facebook ad */
          public struct Ecommerce: Model {
            public var currencyCode: String?

            public var totalRevenue: Double?

            public init(currencyCode: String? = nil, totalRevenue: Double? = nil) {
              self.currencyCode = currencyCode
              self.totalRevenue = totalRevenue
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              currencyCode = try container.decodeIfPresent("currency_code")
              totalRevenue = try container.decodeIfPresent("total_revenue")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
              try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
            }
          }

          /** Report summary of facebook ad */
          public struct ExtendedAt: Model {
            public var datetime: String?

            public var timezone: String?

            public init(datetime: String? = nil, timezone: String? = nil) {
              self.datetime = datetime
              self.timezone = timezone
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              datetime = try container.decodeIfPresent("datetime")
              timezone = try container.decodeIfPresent("timezone")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(datetime, forKey: "datetime")
              try container.encodeIfPresent(timezone, forKey: "timezone")
            }
          }

          public init(averageDailyBudget: AverageDailyBudget? = nil, averageOrderAmount: AverageOrderAmount? = nil, clickRate: Double? = nil, clicks: Int? = nil, comments: Int? = nil, costPerClick: CostPerClick? = nil, ecommerce: Ecommerce? = nil, extendedAt: ExtendedAt? = nil, firstTimeBuyers: Int? = nil, hasExtendedAdDuration: Bool? = nil, impressions: Int? = nil, likes: Int? = nil, reach: Int? = nil, returnOnInvestment: Double? = nil, shares: Int? = nil, totalOrders: Int? = nil, totalProductsSold: Int? = nil, uniqueClicks: Int? = nil) {
            self.averageDailyBudget = averageDailyBudget
            self.averageOrderAmount = averageOrderAmount
            self.clickRate = clickRate
            self.clicks = clicks
            self.comments = comments
            self.costPerClick = costPerClick
            self.ecommerce = ecommerce
            self.extendedAt = extendedAt
            self.firstTimeBuyers = firstTimeBuyers
            self.hasExtendedAdDuration = hasExtendedAdDuration
            self.impressions = impressions
            self.likes = likes
            self.reach = reach
            self.returnOnInvestment = returnOnInvestment
            self.shares = shares
            self.totalOrders = totalOrders
            self.totalProductsSold = totalProductsSold
            self.uniqueClicks = uniqueClicks
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            averageDailyBudget = try container.decodeIfPresent("average_daily_budget")
            averageOrderAmount = try container.decodeIfPresent("average_order_amount")
            clickRate = try container.decodeIfPresent("click_rate")
            clicks = try container.decodeIfPresent("clicks")
            comments = try container.decodeIfPresent("comments")
            costPerClick = try container.decodeIfPresent("cost_per_click")
            ecommerce = try container.decodeIfPresent("ecommerce")
            extendedAt = try container.decodeIfPresent("extended_at")
            firstTimeBuyers = try container.decodeIfPresent("first_time_buyers")
            hasExtendedAdDuration = try container.decodeIfPresent("has_extended_ad_duration")
            impressions = try container.decodeIfPresent("impressions")
            likes = try container.decodeIfPresent("likes")
            reach = try container.decodeIfPresent("reach")
            returnOnInvestment = try container.decodeIfPresent("return_on_investment")
            shares = try container.decodeIfPresent("shares")
            totalOrders = try container.decodeIfPresent("total_orders")
            totalProductsSold = try container.decodeIfPresent("total_products_sold")
            uniqueClicks = try container.decodeIfPresent("unique_clicks")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(averageDailyBudget, forKey: "average_daily_budget")
            try container.encodeIfPresent(averageOrderAmount, forKey: "average_order_amount")
            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(comments, forKey: "comments")
            try container.encodeIfPresent(costPerClick, forKey: "cost_per_click")
            try container.encodeIfPresent(ecommerce, forKey: "ecommerce")
            try container.encodeIfPresent(extendedAt, forKey: "extended_at")
            try container.encodeIfPresent(firstTimeBuyers, forKey: "first_time_buyers")
            try container.encodeIfPresent(hasExtendedAdDuration, forKey: "has_extended_ad_duration")
            try container.encodeIfPresent(impressions, forKey: "impressions")
            try container.encodeIfPresent(likes, forKey: "likes")
            try container.encodeIfPresent(reach, forKey: "reach")
            try container.encodeIfPresent(returnOnInvestment, forKey: "return_on_investment")
            try container.encodeIfPresent(shares, forKey: "shares")
            try container.encodeIfPresent(totalOrders, forKey: "total_orders")
            try container.encodeIfPresent(totalProductsSold, forKey: "total_products_sold")
            try container.encodeIfPresent(uniqueClicks, forKey: "unique_clicks")
          }
        }

        public init(links: [Links]? = nil, audience: Audience? = nil, audienceActivity: AudienceActivity? = nil, budget: Budget? = nil, canceledAt: Date? = nil, channel: Channel? = nil, createTime: Date? = nil, emailSourceName: String? = nil, endTime: Date? = nil, hasSegment: Bool? = nil, id: String? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: Date? = nil, publishedTime: Date? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, showReport: Bool? = nil, startTime: Date? = nil, status: Status? = nil, thumbnail: String? = nil, type: Type? = nil, updatedAt: Date? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil) {
          self.links = links
          self.audience = audience
          self.audienceActivity = audienceActivity
          self.budget = budget
          self.canceledAt = .init(date: canceledAt)
          self.channel = channel
          self.createTime = .init(date: createTime)
          self.emailSourceName = emailSourceName
          self.endTime = .init(date: endTime)
          self.hasSegment = hasSegment
          self.id = id
          self.name = name
          self.needsAttention = needsAttention
          self.pausedAt = .init(date: pausedAt)
          self.publishedTime = .init(date: publishedTime)
          self.recipients = recipients
          self.reportSummary = reportSummary
          self.showReport = showReport
          self.startTime = .init(date: startTime)
          self.status = status
          self.thumbnail = thumbnail
          self.type = type
          self.updatedAt = .init(date: updatedAt)
          self.wasCanceledByFacebook = wasCanceledByFacebook
          self.webId = webId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          audience = try container.decodeIfPresent("audience")
          audienceActivity = try container.decodeIfPresent("audience_activity")
          budget = try container.decodeIfPresent("budget")
          canceledAt = try container.decodeIfPresent("canceled_at")
          channel = try container.decodeIfPresent("channel")
          createTime = try container.decodeIfPresent("create_time")
          emailSourceName = try container.decodeIfPresent("email_source_name")
          endTime = try container.decodeIfPresent("end_time")
          hasSegment = try container.decodeIfPresent("has_segment")
          id = try container.decodeIfPresent("id")
          name = try container.decodeIfPresent("name")
          needsAttention = try container.decodeIfPresent("needs_attention")
          pausedAt = try container.decodeIfPresent("paused_at")
          publishedTime = try container.decodeIfPresent("published_time")
          recipients = try container.decodeIfPresent("recipients")
          reportSummary = try container.decodeIfPresent("report_summary")
          showReport = try container.decodeIfPresent("show_report")
          startTime = try container.decodeIfPresent("start_time")
          status = try container.decodeIfPresent("status")
          thumbnail = try container.decodeIfPresent("thumbnail")
          type = try container.decodeIfPresent("type")
          updatedAt = try container.decodeIfPresent("updated_at")
          wasCanceledByFacebook = try container.decodeIfPresent("was_canceled_by_facebook")
          webId = try container.decodeIfPresent("web_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(audience, forKey: "audience")
          try container.encodeIfPresent(audienceActivity, forKey: "audience_activity")
          try container.encodeIfPresent(budget, forKey: "budget")
          try container.encodeIfPresent(canceledAt, forKey: "canceled_at")
          try container.encodeIfPresent(channel, forKey: "channel")
          try container.encodeIfPresent(createTime, forKey: "create_time")
          try container.encodeIfPresent(emailSourceName, forKey: "email_source_name")
          try container.encodeIfPresent(endTime, forKey: "end_time")
          try container.encodeIfPresent(hasSegment, forKey: "has_segment")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(needsAttention, forKey: "needs_attention")
          try container.encodeIfPresent(pausedAt, forKey: "paused_at")
          try container.encodeIfPresent(publishedTime, forKey: "published_time")
          try container.encodeIfPresent(recipients, forKey: "recipients")
          try container.encodeIfPresent(reportSummary, forKey: "report_summary")
          try container.encodeIfPresent(showReport, forKey: "show_report")
          try container.encodeIfPresent(startTime, forKey: "start_time")
          try container.encodeIfPresent(status, forKey: "status")
          try container.encodeIfPresent(thumbnail, forKey: "thumbnail")
          try container.encodeIfPresent(type, forKey: "type")
          try container.encodeIfPresent(updatedAt, forKey: "updated_at")
          try container.encodeIfPresent(wasCanceledByFacebook, forKey: "was_canceled_by_facebook")
          try container.encodeIfPresent(webId, forKey: "web_id")
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

      /** Facebook Ad report Instance */
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
