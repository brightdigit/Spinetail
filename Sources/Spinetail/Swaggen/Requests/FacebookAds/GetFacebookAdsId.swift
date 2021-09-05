import Foundation
import Prch

public extension FacebookAds {
  /**
   Get facebook ad info

   Get details of a Facebook ad.
   */
  enum GetFacebookAdsId {
    public static let service = APIService<Response>(id: "getFacebookAdsId", tag: "facebookAds", method: "GET", path: "/facebook-ads/{outreach_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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
        super.init(service: GetFacebookAdsId.service)
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
      /** Get details of a Facebook ad. */
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

        public var budget: Budget?

        public var canceledAt: DateTime

        /** Channel settings */
        public var channel: Channel?

        public var content: Content?

        public var createTime: DateTime

        public var emailSourceName: String?

        public var endTime: DateTime

        /** Check if this ad is connected to a facebook page */
        public var feedback: Feedback?

        /** Check if this ad has audience setup */
        public var hasAudience: Bool?

        /** Check if this ad has content */
        public var hasContent: Bool?

        public var hasSegment: Bool?

        /** Unique ID of an Outreach */
        public var id: String?

        /** Check if this ad is connected to a facebook page */
        public var isConnected: Bool?

        /** Title or name of an Outreach */
        public var name: String?

        public var needsAttention: Bool?

        public var pausedAt: DateTime

        public var publishedTime: DateTime

        /** List settings for the outreach */
        public var recipients: Recipients?

        public var reportSummary: ReportSummary?

        /** Outreach report availability */
        public var showReport: Bool?

        /** Connected Site */
        public var site: Site?

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

        /** Get details of a Facebook ad. */
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

        /** Get details of a Facebook ad. */
        public struct Content: Model {
          public var attachments: [Attachments]?

          public var callToAction: String?

          public var description: String?

          public var imageURL: String?

          public var linkURL: String?

          public var message: String?

          public var title: String?

          /** Get details of a Facebook ad. */
          public struct Attachments: Model {
            public var callToAction: String?

            public var description: String?

            public var imageURL: String?

            public var linkURL: String?

            public var name: String?

            public init(callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, name: String? = nil) {
              self.callToAction = callToAction
              self.description = description
              self.imageURL = imageURL
              self.linkURL = linkURL
              self.name = name
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              callToAction = try container.decodeIfPresent("call_to_action")
              description = try container.decodeIfPresent("description")
              imageURL = try container.decodeIfPresent("image_url")
              linkURL = try container.decodeIfPresent("link_url")
              name = try container.decodeIfPresent("name")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(callToAction, forKey: "call_to_action")
              try container.encodeIfPresent(description, forKey: "description")
              try container.encodeIfPresent(imageURL, forKey: "image_url")
              try container.encodeIfPresent(linkURL, forKey: "link_url")
              try container.encodeIfPresent(name, forKey: "name")
            }
          }

          public init(attachments: [Attachments]? = nil, callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, message: String? = nil, title: String? = nil) {
            self.attachments = attachments
            self.callToAction = callToAction
            self.description = description
            self.imageURL = imageURL
            self.linkURL = linkURL
            self.message = message
            self.title = title
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            attachments = try container.decodeArrayIfPresent("attachments")
            callToAction = try container.decodeIfPresent("call_to_action")
            description = try container.decodeIfPresent("description")
            imageURL = try container.decodeIfPresent("image_url")
            linkURL = try container.decodeIfPresent("link_url")
            message = try container.decodeIfPresent("message")
            title = try container.decodeIfPresent("title")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(attachments, forKey: "attachments")
            try container.encodeIfPresent(callToAction, forKey: "call_to_action")
            try container.encodeIfPresent(description, forKey: "description")
            try container.encodeIfPresent(imageURL, forKey: "image_url")
            try container.encodeIfPresent(linkURL, forKey: "link_url")
            try container.encodeIfPresent(message, forKey: "message")
            try container.encodeIfPresent(title, forKey: "title")
          }
        }

        /** Check if this ad is connected to a facebook page */
        public struct Feedback: Model {
          /** Feedback regarding the audience of this Ad. */
          public var audience: String?

          /** Feedback regarding the budget of this Ad. */
          public var budget: String?

          /** Feedback regarding the compliance of this Ad. */
          public var compliance: String?

          /** Feedback regarding the content of this Ad. */
          public var content: String?

          public init(audience: String? = nil, budget: String? = nil, compliance: String? = nil, content: String? = nil) {
            self.audience = audience
            self.budget = budget
            self.compliance = compliance
            self.content = content
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            audience = try container.decodeIfPresent("audience")
            budget = try container.decodeIfPresent("budget")
            compliance = try container.decodeIfPresent("compliance")
            content = try container.decodeIfPresent("content")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(audience, forKey: "audience")
            try container.encodeIfPresent(budget, forKey: "budget")
            try container.encodeIfPresent(compliance, forKey: "compliance")
            try container.encodeIfPresent(content, forKey: "content")
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

        /** Get details of a Facebook ad. */
        public struct ReportSummary: Model {
          public var clickRate: Double?

          public var clicks: Int?

          public var conversionRate: Double?

          public var ecommerce: Ecommerce?

          public var engagements: Int?

          public var impressions: Double?

          public var openRate: Double?

          public var opens: Int?

          public var reach: Int?

          public var subscriberClicks: Int?

          public var subscribes: Int?

          public var totalSent: Int?

          public var uniqueOpens: Int?

          public var uniqueVisits: Int?

          public var visits: Int?

          /** Get details of a Facebook ad. */
          public struct Ecommerce: Model {
            public var averageOrderRevenue: Double?

            public var currencyCode: String?

            public var totalRevenue: Double?

            public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalRevenue: Double? = nil) {
              self.averageOrderRevenue = averageOrderRevenue
              self.currencyCode = currencyCode
              self.totalRevenue = totalRevenue
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              averageOrderRevenue = try container.decodeIfPresent("average_order_revenue")
              currencyCode = try container.decodeIfPresent("currency_code")
              totalRevenue = try container.decodeIfPresent("total_revenue")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(averageOrderRevenue, forKey: "average_order_revenue")
              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
              try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
            }
          }

          public init(clickRate: Double? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: Ecommerce? = nil, engagements: Int? = nil, impressions: Double? = nil, openRate: Double? = nil, opens: Int? = nil, reach: Int? = nil, subscriberClicks: Int? = nil, subscribes: Int? = nil, totalSent: Int? = nil, uniqueOpens: Int? = nil, uniqueVisits: Int? = nil, visits: Int? = nil) {
            self.clickRate = clickRate
            self.clicks = clicks
            self.conversionRate = conversionRate
            self.ecommerce = ecommerce
            self.engagements = engagements
            self.impressions = impressions
            self.openRate = openRate
            self.opens = opens
            self.reach = reach
            self.subscriberClicks = subscriberClicks
            self.subscribes = subscribes
            self.totalSent = totalSent
            self.uniqueOpens = uniqueOpens
            self.uniqueVisits = uniqueVisits
            self.visits = visits
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            clickRate = try container.decodeIfPresent("click_rate")
            clicks = try container.decodeIfPresent("clicks")
            conversionRate = try container.decodeIfPresent("conversion_rate")
            ecommerce = try container.decodeIfPresent("ecommerce")
            engagements = try container.decodeIfPresent("engagements")
            impressions = try container.decodeIfPresent("impressions")
            openRate = try container.decodeIfPresent("open_rate")
            opens = try container.decodeIfPresent("opens")
            reach = try container.decodeIfPresent("reach")
            subscriberClicks = try container.decodeIfPresent("subscriber_clicks")
            subscribes = try container.decodeIfPresent("subscribes")
            totalSent = try container.decodeIfPresent("total_sent")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
            uniqueVisits = try container.decodeIfPresent("unique_visits")
            visits = try container.decodeIfPresent("visits")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(conversionRate, forKey: "conversion_rate")
            try container.encodeIfPresent(ecommerce, forKey: "ecommerce")
            try container.encodeIfPresent(engagements, forKey: "engagements")
            try container.encodeIfPresent(impressions, forKey: "impressions")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(opens, forKey: "opens")
            try container.encodeIfPresent(reach, forKey: "reach")
            try container.encodeIfPresent(subscriberClicks, forKey: "subscriber_clicks")
            try container.encodeIfPresent(subscribes, forKey: "subscribes")
            try container.encodeIfPresent(totalSent, forKey: "total_sent")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
            try container.encodeIfPresent(uniqueVisits, forKey: "unique_visits")
            try container.encodeIfPresent(visits, forKey: "visits")
          }
        }

        /** Connected Site */
        public struct Site: Model {
          /** The ID of this connected site. */
          public var id: Int?

          /** The name of the connected site */
          public var name: String?

          /** The URL for this connected site. */
          public var url: String?

          public init(id: Int? = nil, name: String? = nil, url: String? = nil) {
            self.id = id
            self.name = name
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decodeIfPresent("id")
            name = try container.decodeIfPresent("name")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(links: [Links]? = nil, audience: Audience? = nil, budget: Budget? = nil, canceledAt: Date? = nil, channel: Channel? = nil, content: Content? = nil, createTime: Date? = nil, emailSourceName: String? = nil, endTime: Date? = nil, feedback: Feedback? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, hasSegment: Bool? = nil, id: String? = nil, isConnected: Bool? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: Date? = nil, publishedTime: Date? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, showReport: Bool? = nil, site: Site? = nil, startTime: Date? = nil, status: Status? = nil, thumbnail: String? = nil, type: Type? = nil, updatedAt: Date? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil) {
          self.links = links
          self.audience = audience
          self.budget = budget
          self.canceledAt = .init(date: canceledAt)
          self.channel = channel
          self.content = content
          self.createTime = .init(date: createTime)
          self.emailSourceName = emailSourceName
          self.endTime = .init(date: endTime)
          self.feedback = feedback
          self.hasAudience = hasAudience
          self.hasContent = hasContent
          self.hasSegment = hasSegment
          self.id = id
          self.isConnected = isConnected
          self.name = name
          self.needsAttention = needsAttention
          self.pausedAt = .init(date: pausedAt)
          self.publishedTime = .init(date: publishedTime)
          self.recipients = recipients
          self.reportSummary = reportSummary
          self.showReport = showReport
          self.site = site
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
          budget = try container.decodeIfPresent("budget")
          canceledAt = try container.decodeIfPresent("canceled_at")
          channel = try container.decodeIfPresent("channel")
          content = try container.decodeIfPresent("content")
          createTime = try container.decodeIfPresent("create_time")
          emailSourceName = try container.decodeIfPresent("email_source_name")
          endTime = try container.decodeIfPresent("end_time")
          feedback = try container.decodeIfPresent("feedback")
          hasAudience = try container.decodeIfPresent("has_audience")
          hasContent = try container.decodeIfPresent("has_content")
          hasSegment = try container.decodeIfPresent("has_segment")
          id = try container.decodeIfPresent("id")
          isConnected = try container.decodeIfPresent("is_connected")
          name = try container.decodeIfPresent("name")
          needsAttention = try container.decodeIfPresent("needs_attention")
          pausedAt = try container.decodeIfPresent("paused_at")
          publishedTime = try container.decodeIfPresent("published_time")
          recipients = try container.decodeIfPresent("recipients")
          reportSummary = try container.decodeIfPresent("report_summary")
          showReport = try container.decodeIfPresent("show_report")
          site = try container.decodeIfPresent("site")
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
          try container.encodeIfPresent(budget, forKey: "budget")
          try container.encodeIfPresent(canceledAt, forKey: "canceled_at")
          try container.encodeIfPresent(channel, forKey: "channel")
          try container.encodeIfPresent(content, forKey: "content")
          try container.encodeIfPresent(createTime, forKey: "create_time")
          try container.encodeIfPresent(emailSourceName, forKey: "email_source_name")
          try container.encodeIfPresent(endTime, forKey: "end_time")
          try container.encodeIfPresent(feedback, forKey: "feedback")
          try container.encodeIfPresent(hasAudience, forKey: "has_audience")
          try container.encodeIfPresent(hasContent, forKey: "has_content")
          try container.encodeIfPresent(hasSegment, forKey: "has_segment")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(isConnected, forKey: "is_connected")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(needsAttention, forKey: "needs_attention")
          try container.encodeIfPresent(pausedAt, forKey: "paused_at")
          try container.encodeIfPresent(publishedTime, forKey: "published_time")
          try container.encodeIfPresent(recipients, forKey: "recipients")
          try container.encodeIfPresent(reportSummary, forKey: "report_summary")
          try container.encodeIfPresent(showReport, forKey: "show_report")
          try container.encodeIfPresent(site, forKey: "site")
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

      /** Facebook Ad Instance */
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
