import Foundation
import Prch

public extension SearchCampaigns {
  /**
   Search campaigns

   Search all campaigns for the specified query terms.
   */
  enum GetSearchCampaigns {
    public static let service = APIService<Response>(id: "getSearchCampaigns", tag: "searchCampaigns", method: "GET", path: "/search-campaigns", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The search query used to filter results. */
        public var query: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.query = query
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetSearchCampaigns.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, query: query)
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
        params["query"] = options.query
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Campaigns and Snippets found for given search term. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** An array of matching campaigns and snippets. */
        public var results: [Results]?

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

        /** Campaigns and Snippets found for given search term. */
        public struct Results: Model {
          /** A summary of an individual campaign's settings and content. */
          public var campaign: Campaign?

          public var snippet: String?

          /** A summary of an individual campaign's settings and content. */
          public struct Campaign: Model {
            /** How the campaign's content is put together. */
            public enum ContentType: String, Codable, Equatable, CaseIterable {
              case template
              case html
              case url
              case multichannel
            }

            /** The current status of the campaign. */
            public enum Status: String, Codable, Equatable, CaseIterable {
              case save
              case paused
              case schedule
              case sending
              case sent
              case canceled
              case canceling
              case archived
            }

            /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
            public enum `Type`: String, Codable, Equatable, CaseIterable {
              case regular
              case plaintext
              case absplit
              case rss
              case variate
            }

            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** [A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign. */
            public var abSplitOpts: AbSplitOpts?

            /** The link to the campaign's archive version in ISO 8601 format. */
            public var archiveURL: String?

            /** How the campaign's content is put together. */
            public var contentType: ContentType?

            /** The date and time the campaign was created in ISO 8601 format. */
            public var createTime: DateTime

            /** Updates on campaigns in the process of sending. */
            public var deliveryStatus: DeliveryStatus?

            /** The total number of emails sent for this campaign. */
            public var emailsSent: Int?

            /** A string that uniquely identifies this campaign. */
            public var id: String?

            /** The original link to the campaign's archive version. */
            public var longArchiveURL: String?

            /** Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false. */
            public var needsBlockRefresh: Bool?

            /** If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children. */
            public var parentCampaignId: String?

            /** List settings for the campaign. */
            public var recipients: Recipients?

            /** For sent campaigns, a summary of opens, clicks, and e-commerce data. */
            public var reportSummary: ReportSummary?

            /** Determines if the campaign qualifies to be resent to non-openers. */
            public var resendable: Bool?

            /** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
            public var rssOpts: RssOpts?

            /** The date and time a campaign was sent. */
            public var sendTime: DateTime

            /** The settings for your campaign, including subject, from name, reply-to address, and more. */
            public var settings: Settings?

            /** The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/). */
            public var socialCard: SocialCard?

            /** The current status of the campaign. */
            public var status: Status?

            /** The tracking options for a campaign. */
            public var tracking: Tracking?

            /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
            public var type: `Type`?

            /** The settings specific to A/B test campaigns. */
            public var variateSettings: VariateSettings?

            /** The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`. */
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

            /** [A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign. */
            public struct AbSplitOpts: Model {
              /** How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'. */
              public enum PickWinner: String, Codable, Equatable, CaseIterable {
                case opens
                case clicks
                case manual
              }

              /** The type of AB split to run. */
              public enum SplitTest: String, Codable, Equatable, CaseIterable {
                case subject
                case fromName = "from_name"
                case schedule
              }

              /** How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent. */
              public enum WaitUnits: String, Codable, Equatable, CaseIterable {
                case hours
                case days
              }

              /** For campaigns split on 'From Name', the name for Group A. */
              public var fromNamea: String?

              /** For campaigns split on 'From Name', the name for Group B. */
              public var fromNameb: String?

              /** How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'. */
              public var pickWinner: PickWinner?

              /** For campaigns split on 'From Name', the reply-to address for Group A. */
              public var replyEmaila: String?

              /** For campaigns split on 'From Name', the reply-to address for Group B. */
              public var replyEmailb: String?

              /** The send time for Group A. */
              public var sendTimea: DateTime

              /** The send time for Group B. */
              public var sendTimeb: DateTime

              /** The send time for the winning version. */
              public var sendTimeWinner: String?

              /** The size of the split groups. Campaigns split based on 'schedule' are forced to have a 50/50 split. Valid split integers are between 1-50. */
              public var splitSize: Int?

              /** The type of AB split to run. */
              public var splitTest: SplitTest?

              /** For campaigns split on 'Subject Line', the subject line for Group A. */
              public var subjecta: String?

              /** For campaigns split on 'Subject Line', the subject line for Group B. */
              public var subjectb: String?

              /** The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent. */
              public var waitTime: Int?

              /** How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent. */
              public var waitUnits: WaitUnits?

              public init(fromNamea: String? = nil, fromNameb: String? = nil, pickWinner: PickWinner? = nil, replyEmaila: String? = nil, replyEmailb: String? = nil, sendTimea: Date? = nil, sendTimeb: Date? = nil, sendTimeWinner: String? = nil, splitSize: Int? = nil, splitTest: SplitTest? = nil, subjecta: String? = nil, subjectb: String? = nil, waitTime: Int? = nil, waitUnits: WaitUnits? = nil) {
                self.fromNamea = fromNamea
                self.fromNameb = fromNameb
                self.pickWinner = pickWinner
                self.replyEmaila = replyEmaila
                self.replyEmailb = replyEmailb
                self.sendTimea = .init(date: sendTimea)
                self.sendTimeb = .init(date: sendTimeb)
                self.sendTimeWinner = sendTimeWinner
                self.splitSize = splitSize
                self.splitTest = splitTest
                self.subjecta = subjecta
                self.subjectb = subjectb
                self.waitTime = waitTime
                self.waitUnits = waitUnits
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                fromNamea = try container.decodeIfPresent("from_name_a")
                fromNameb = try container.decodeIfPresent("from_name_b")
                pickWinner = try container.decodeIfPresent("pick_winner")
                replyEmaila = try container.decodeIfPresent("reply_email_a")
                replyEmailb = try container.decodeIfPresent("reply_email_b")
                sendTimea = try container.decodeIfPresent("send_time_a")
                sendTimeb = try container.decodeIfPresent("send_time_b")
                sendTimeWinner = try container.decodeIfPresent("send_time_winner")
                splitSize = try container.decodeIfPresent("split_size")
                splitTest = try container.decodeIfPresent("split_test")
                subjecta = try container.decodeIfPresent("subject_a")
                subjectb = try container.decodeIfPresent("subject_b")
                waitTime = try container.decodeIfPresent("wait_time")
                waitUnits = try container.decodeIfPresent("wait_units")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(fromNamea, forKey: "from_name_a")
                try container.encodeIfPresent(fromNameb, forKey: "from_name_b")
                try container.encodeIfPresent(pickWinner, forKey: "pick_winner")
                try container.encodeIfPresent(replyEmaila, forKey: "reply_email_a")
                try container.encodeIfPresent(replyEmailb, forKey: "reply_email_b")
                try container.encodeIfPresent(sendTimea, forKey: "send_time_a")
                try container.encodeIfPresent(sendTimeb, forKey: "send_time_b")
                try container.encodeIfPresent(sendTimeWinner, forKey: "send_time_winner")
                try container.encodeIfPresent(splitSize, forKey: "split_size")
                try container.encodeIfPresent(splitTest, forKey: "split_test")
                try container.encodeIfPresent(subjecta, forKey: "subject_a")
                try container.encodeIfPresent(subjectb, forKey: "subject_b")
                try container.encodeIfPresent(waitTime, forKey: "wait_time")
                try container.encodeIfPresent(waitUnits, forKey: "wait_units")
              }
            }

            /** Updates on campaigns in the process of sending. */
            public struct DeliveryStatus: Model {
              /** The current state of a campaign delivery. */
              public enum Status: String, Codable, Equatable, CaseIterable {
                case delivering
                case delivered
                case canceling
                case canceled
              }

              /** Whether a campaign send can be canceled. */
              public var canCancel: Bool?

              /** The total number of emails canceled for this campaign. */
              public var emailsCanceled: Int?

              /** The total number of emails confirmed sent for this campaign so far. */
              public var emailsSent: Int?

              /** Whether Campaign Delivery Status is enabled for this account and campaign. */
              public var enabled: Bool?

              /** The current state of a campaign delivery. */
              public var status: Status?

              public init(canCancel: Bool? = nil, emailsCanceled: Int? = nil, emailsSent: Int? = nil, enabled: Bool? = nil, status: Status? = nil) {
                self.canCancel = canCancel
                self.emailsCanceled = emailsCanceled
                self.emailsSent = emailsSent
                self.enabled = enabled
                self.status = status
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                canCancel = try container.decodeIfPresent("can_cancel")
                emailsCanceled = try container.decodeIfPresent("emails_canceled")
                emailsSent = try container.decodeIfPresent("emails_sent")
                enabled = try container.decodeIfPresent("enabled")
                status = try container.decodeIfPresent("status")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(canCancel, forKey: "can_cancel")
                try container.encodeIfPresent(emailsCanceled, forKey: "emails_canceled")
                try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
                try container.encodeIfPresent(enabled, forKey: "enabled")
                try container.encodeIfPresent(status, forKey: "status")
              }
            }

            /** List settings for the campaign. */
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

              /** A description of the [segment](https://mailchimp.com/help/create-and-send-to-a-segment/) used for the campaign. Formatted as a string marked up with HTML. */
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

            /** For sent campaigns, a summary of opens, clicks, and e-commerce data. */
            public struct ReportSummary: Model {
              /** The number of unique clicks divided by the total number of successful deliveries. */
              public var clickRate: Double?

              /** The total number of clicks for an campaign. */
              public var clicks: Int?

              /** E-Commerce stats for a campaign. */
              public var ecommerce: Ecommerce?

              /** The number of unique opens divided by the total number of successful deliveries. */
              public var openRate: Double?

              /** The total number of opens for a campaign. */
              public var opens: Int?

              /** The number of unique clicks. */
              public var subscriberClicks: Int?

              /** The number of unique opens. */
              public var uniqueOpens: Int?

              /** E-Commerce stats for a campaign. */
              public struct Ecommerce: Model {
                /** The total orders for a campaign. */
                public var totalOrders: Int?

                /** The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals. */
                public var totalRevenue: Double?

                /** The total spent for a campaign. Calculated as the sum of all order totals with no deductions. */
                public var totalSpent: Double?

                public init(totalOrders: Int? = nil, totalRevenue: Double? = nil, totalSpent: Double? = nil) {
                  self.totalOrders = totalOrders
                  self.totalRevenue = totalRevenue
                  self.totalSpent = totalSpent
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  totalOrders = try container.decodeIfPresent("total_orders")
                  totalRevenue = try container.decodeIfPresent("total_revenue")
                  totalSpent = try container.decodeIfPresent("total_spent")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(totalOrders, forKey: "total_orders")
                  try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
                  try container.encodeIfPresent(totalSpent, forKey: "total_spent")
                }
              }

              public init(clickRate: Double? = nil, clicks: Int? = nil, ecommerce: Ecommerce? = nil, openRate: Double? = nil, opens: Int? = nil, subscriberClicks: Int? = nil, uniqueOpens: Int? = nil) {
                self.clickRate = clickRate
                self.clicks = clicks
                self.ecommerce = ecommerce
                self.openRate = openRate
                self.opens = opens
                self.subscriberClicks = subscriberClicks
                self.uniqueOpens = uniqueOpens
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                clickRate = try container.decodeIfPresent("click_rate")
                clicks = try container.decodeIfPresent("clicks")
                ecommerce = try container.decodeIfPresent("ecommerce")
                openRate = try container.decodeIfPresent("open_rate")
                opens = try container.decodeIfPresent("opens")
                subscriberClicks = try container.decodeIfPresent("subscriber_clicks")
                uniqueOpens = try container.decodeIfPresent("unique_opens")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(clickRate, forKey: "click_rate")
                try container.encodeIfPresent(clicks, forKey: "clicks")
                try container.encodeIfPresent(ecommerce, forKey: "ecommerce")
                try container.encodeIfPresent(openRate, forKey: "open_rate")
                try container.encodeIfPresent(opens, forKey: "opens")
                try container.encodeIfPresent(subscriberClicks, forKey: "subscriber_clicks")
                try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
              }
            }

            /** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
            public struct RssOpts: Model {
              /** The frequency of the RSS Campaign. */
              public enum Frequency: String, Codable, Equatable, CaseIterable {
                case daily
                case weekly
                case monthly
              }

              /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
              public var constrainRssImg: Bool?

              /** The URL for the RSS feed. */
              public var feedURL: URL?

              /** The frequency of the RSS Campaign. */
              public var frequency: Frequency?

              /** The date the campaign was last sent. */
              public var lastSent: DateTime

              /** The schedule for sending the RSS Campaign. */
              public var schedule: Schedule?

              /** The schedule for sending the RSS Campaign. */
              public struct Schedule: Model {
                /** The day of the week to send a weekly RSS Campaign. */
                public enum WeeklySendDay: String, Codable, Equatable, CaseIterable {
                  case sunday
                  case monday
                  case tuesday
                  case wednesday
                  case thursday
                  case friday
                  case saturday
                }

                /** The days of the week to send a daily RSS Campaign. */
                public var dailySend: DailySend?

                /** The hour to send the campaign in local time. Acceptable hours are 0-23. For example, '4' would be 4am in [your account's default time zone](https://mailchimp.com/help/set-account-defaults/). */
                public var hour: Int?

                /** The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where '0' is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS Campaigns set to send on the 30th will not go out in February. */
                public var monthlySendDate: Double?

                /** The day of the week to send a weekly RSS Campaign. */
                public var weeklySendDay: WeeklySendDay?

                /** The days of the week to send a daily RSS Campaign. */
                public struct DailySend: Model {
                  /** Sends the daily RSS Campaign on Fridays. */
                  public var friday: Bool?

                  /** Sends the daily RSS Campaign on Mondays. */
                  public var monday: Bool?

                  /** Sends the daily RSS Campaign on Saturdays. */
                  public var saturday: Bool?

                  /** Sends the daily RSS Campaign on Sundays. */
                  public var sunday: Bool?

                  /** Sends the daily RSS Campaign on Thursdays. */
                  public var thursday: Bool?

                  /** Sends the daily RSS Campaign on Tuesdays. */
                  public var tuesday: Bool?

                  /** Sends the daily RSS Campaign on Wednesdays. */
                  public var wednesday: Bool?

                  public init(friday: Bool? = nil, monday: Bool? = nil, saturday: Bool? = nil, sunday: Bool? = nil, thursday: Bool? = nil, tuesday: Bool? = nil, wednesday: Bool? = nil) {
                    self.friday = friday
                    self.monday = monday
                    self.saturday = saturday
                    self.sunday = sunday
                    self.thursday = thursday
                    self.tuesday = tuesday
                    self.wednesday = wednesday
                  }

                  public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    friday = try container.decodeIfPresent("friday")
                    monday = try container.decodeIfPresent("monday")
                    saturday = try container.decodeIfPresent("saturday")
                    sunday = try container.decodeIfPresent("sunday")
                    thursday = try container.decodeIfPresent("thursday")
                    tuesday = try container.decodeIfPresent("tuesday")
                    wednesday = try container.decodeIfPresent("wednesday")
                  }

                  public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(friday, forKey: "friday")
                    try container.encodeIfPresent(monday, forKey: "monday")
                    try container.encodeIfPresent(saturday, forKey: "saturday")
                    try container.encodeIfPresent(sunday, forKey: "sunday")
                    try container.encodeIfPresent(thursday, forKey: "thursday")
                    try container.encodeIfPresent(tuesday, forKey: "tuesday")
                    try container.encodeIfPresent(wednesday, forKey: "wednesday")
                  }
                }

                public init(dailySend: DailySend? = nil, hour: Int? = nil, monthlySendDate: Double? = nil, weeklySendDay: WeeklySendDay? = nil) {
                  self.dailySend = dailySend
                  self.hour = hour
                  self.monthlySendDate = monthlySendDate
                  self.weeklySendDay = weeklySendDay
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  dailySend = try container.decodeIfPresent("daily_send")
                  hour = try container.decodeIfPresent("hour")
                  monthlySendDate = try container.decodeIfPresent("monthly_send_date")
                  weeklySendDay = try container.decodeIfPresent("weekly_send_day")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(dailySend, forKey: "daily_send")
                  try container.encodeIfPresent(hour, forKey: "hour")
                  try container.encodeIfPresent(monthlySendDate, forKey: "monthly_send_date")
                  try container.encodeIfPresent(weeklySendDay, forKey: "weekly_send_day")
                }
              }

              public init(constrainRssImg: Bool? = nil, feedURL: URL? = nil, frequency: Frequency? = nil, lastSent: Date? = nil, schedule: Schedule? = nil) {
                self.constrainRssImg = constrainRssImg
                self.feedURL = feedURL
                self.frequency = frequency
                self.lastSent = .init(date: lastSent)
                self.schedule = schedule
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                constrainRssImg = try container.decodeIfPresent("constrain_rss_img")
                feedURL = try container.decodeIfPresent("feed_url")
                frequency = try container.decodeIfPresent("frequency")
                lastSent = try container.decodeIfPresent("last_sent")
                schedule = try container.decodeIfPresent("schedule")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(constrainRssImg, forKey: "constrain_rss_img")
                try container.encodeIfPresent(feedURL, forKey: "feed_url")
                try container.encodeIfPresent(frequency, forKey: "frequency")
                try container.encodeIfPresent(lastSent, forKey: "last_sent")
                try container.encodeIfPresent(schedule, forKey: "schedule")
              }
            }

            /** The settings for your campaign, including subject, from name, reply-to address, and more. */
            public struct Settings: Model {
              /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to `true`. */
              public var authenticate: Bool?

              /** An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to. */
              public var autoFbPost: [String]?

              /** Automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign. */
              public var autoFooter: Bool?

              /** Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent. */
              public var autoTweet: Bool?

              /** Whether the campaign uses the drag-and-drop editor. */
              public var dragAndDrop: Bool?

              /** Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to `true`. */
              public var fbComments: Bool?

              /** If the campaign is listed in a folder, the id for that folder. */
              public var folderId: String?

              /** The 'from' name on the campaign (not an email address). */
              public var fromName: String?

              /** Automatically inline the CSS included with the campaign content. */
              public var inlineCss: Bool?

              /** The preview text for the campaign. */
              public var previewText: String?

              /** The reply-to email address for the campaign. */
              public var replyTo: String?

              /** The subject line for the campaign. */
              public var subjectLine: String?

              /** The id for the template used in this campaign. */
              public var templateId: Int?

              /** Send this campaign using [Timewarp](https://mailchimp.com/help/use-timewarp/). */
              public var timewarp: Bool?

              /** The title of the campaign. */
              public var title: String?

              /** The campaign's custom 'To' name. Typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
              public var toName: String?

              /** Use Mailchimp Conversation feature to manage out-of-office replies. */
              public var useConversation: Bool?

              public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, dragAndDrop: Bool? = nil, fbComments: Bool? = nil, folderId: String? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, timewarp: Bool? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil) {
                self.authenticate = authenticate
                self.autoFbPost = autoFbPost
                self.autoFooter = autoFooter
                self.autoTweet = autoTweet
                self.dragAndDrop = dragAndDrop
                self.fbComments = fbComments
                self.folderId = folderId
                self.fromName = fromName
                self.inlineCss = inlineCss
                self.previewText = previewText
                self.replyTo = replyTo
                self.subjectLine = subjectLine
                self.templateId = templateId
                self.timewarp = timewarp
                self.title = title
                self.toName = toName
                self.useConversation = useConversation
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                authenticate = try container.decodeIfPresent("authenticate")
                autoFbPost = try container.decodeArrayIfPresent("auto_fb_post")
                autoFooter = try container.decodeIfPresent("auto_footer")
                autoTweet = try container.decodeIfPresent("auto_tweet")
                dragAndDrop = try container.decodeIfPresent("drag_and_drop")
                fbComments = try container.decodeIfPresent("fb_comments")
                folderId = try container.decodeIfPresent("folder_id")
                fromName = try container.decodeIfPresent("from_name")
                inlineCss = try container.decodeIfPresent("inline_css")
                previewText = try container.decodeIfPresent("preview_text")
                replyTo = try container.decodeIfPresent("reply_to")
                subjectLine = try container.decodeIfPresent("subject_line")
                templateId = try container.decodeIfPresent("template_id")
                timewarp = try container.decodeIfPresent("timewarp")
                title = try container.decodeIfPresent("title")
                toName = try container.decodeIfPresent("to_name")
                useConversation = try container.decodeIfPresent("use_conversation")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(authenticate, forKey: "authenticate")
                try container.encodeIfPresent(autoFbPost, forKey: "auto_fb_post")
                try container.encodeIfPresent(autoFooter, forKey: "auto_footer")
                try container.encodeIfPresent(autoTweet, forKey: "auto_tweet")
                try container.encodeIfPresent(dragAndDrop, forKey: "drag_and_drop")
                try container.encodeIfPresent(fbComments, forKey: "fb_comments")
                try container.encodeIfPresent(folderId, forKey: "folder_id")
                try container.encodeIfPresent(fromName, forKey: "from_name")
                try container.encodeIfPresent(inlineCss, forKey: "inline_css")
                try container.encodeIfPresent(previewText, forKey: "preview_text")
                try container.encodeIfPresent(replyTo, forKey: "reply_to")
                try container.encodeIfPresent(subjectLine, forKey: "subject_line")
                try container.encodeIfPresent(templateId, forKey: "template_id")
                try container.encodeIfPresent(timewarp, forKey: "timewarp")
                try container.encodeIfPresent(title, forKey: "title")
                try container.encodeIfPresent(toName, forKey: "to_name")
                try container.encodeIfPresent(useConversation, forKey: "use_conversation")
              }
            }

            /** The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/). */
            public struct SocialCard: Model {
              /** A short summary of the campaign to display. */
              public var description: String?

              /** The url for the header image for the card. */
              public var imageURL: String?

              /** The title for the card. Typically the subject line of the campaign. */
              public var title: String?

              public init(description: String? = nil, imageURL: String? = nil, title: String? = nil) {
                self.description = description
                self.imageURL = imageURL
                self.title = title
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                description = try container.decodeIfPresent("description")
                imageURL = try container.decodeIfPresent("image_url")
                title = try container.decodeIfPresent("title")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(description, forKey: "description")
                try container.encodeIfPresent(imageURL, forKey: "image_url")
                try container.encodeIfPresent(title, forKey: "title")
              }
            }

            /** The tracking options for a campaign. */
            public struct Tracking: Model {
              /** Deprecated */
              public var capsule: Capsule?

              /** The custom slug for [ClickTale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes). */
              public var clicktale: String?

              /** Whether to enable e-commerce tracking. */
              public var ecomm360: Bool?

              /** Deprecated */
              public var goalTracking: Bool?

              /** The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes). */
              public var googleAnalytics: String?

              /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to `true`. Cannot be set to false for variate campaigns. */
              public var htmlClicks: Bool?

              /** Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`. Cannot be set to false for variate campaigns. */
              public var opens: Bool?

              /** Deprecated */
              public var salesforce: Salesforce?

              /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to `true`. Cannot be set to false for variate campaigns. */
              public var textClicks: Bool?

              /** Deprecated */
              public struct Capsule: Model {
                /** Update contact notes for a campaign based on subscriber email addresses. */
                public var notes: Bool?

                public init(notes: Bool? = nil) {
                  self.notes = notes
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  notes = try container.decodeIfPresent("notes")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(notes, forKey: "notes")
                }
              }

              /** Deprecated */
              public struct Salesforce: Model {
                /** Create a campaign in a connected Salesforce account. */
                public var campaign: Bool?

                /** Update contact notes for a campaign based on subscriber email addresses. */
                public var notes: Bool?

                public init(campaign: Bool? = nil, notes: Bool? = nil) {
                  self.campaign = campaign
                  self.notes = notes
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  campaign = try container.decodeIfPresent("campaign")
                  notes = try container.decodeIfPresent("notes")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(campaign, forKey: "campaign")
                  try container.encodeIfPresent(notes, forKey: "notes")
                }
              }

              public init(capsule: Capsule? = nil, clicktale: String? = nil, ecomm360: Bool? = nil, goalTracking: Bool? = nil, googleAnalytics: String? = nil, htmlClicks: Bool? = nil, opens: Bool? = nil, salesforce: Salesforce? = nil, textClicks: Bool? = nil) {
                self.capsule = capsule
                self.clicktale = clicktale
                self.ecomm360 = ecomm360
                self.goalTracking = goalTracking
                self.googleAnalytics = googleAnalytics
                self.htmlClicks = htmlClicks
                self.opens = opens
                self.salesforce = salesforce
                self.textClicks = textClicks
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                capsule = try container.decodeIfPresent("capsule")
                clicktale = try container.decodeIfPresent("clicktale")
                ecomm360 = try container.decodeIfPresent("ecomm360")
                goalTracking = try container.decodeIfPresent("goal_tracking")
                googleAnalytics = try container.decodeIfPresent("google_analytics")
                htmlClicks = try container.decodeIfPresent("html_clicks")
                opens = try container.decodeIfPresent("opens")
                salesforce = try container.decodeIfPresent("salesforce")
                textClicks = try container.decodeIfPresent("text_clicks")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(capsule, forKey: "capsule")
                try container.encodeIfPresent(clicktale, forKey: "clicktale")
                try container.encodeIfPresent(ecomm360, forKey: "ecomm360")
                try container.encodeIfPresent(goalTracking, forKey: "goal_tracking")
                try container.encodeIfPresent(googleAnalytics, forKey: "google_analytics")
                try container.encodeIfPresent(htmlClicks, forKey: "html_clicks")
                try container.encodeIfPresent(opens, forKey: "opens")
                try container.encodeIfPresent(salesforce, forKey: "salesforce")
                try container.encodeIfPresent(textClicks, forKey: "text_clicks")
              }
            }

            /** The settings specific to A/B test campaigns. */
            public struct VariateSettings: Model {
              /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
              public enum WinnerCriteria: String, Codable, Equatable, CaseIterable {
                case opens
                case clicks
                case manual
                case totalRevenue = "total_revenue"
              }

              /** Combinations of possible variables used to build emails. */
              public var combinations: [Combinations]?

              /** Descriptions of possible email contents. To set campaign contents, make a PUT request to /campaigns/{campaign_id}/content with the field 'variate_contents'. */
              public var contents: [String]?

              /** The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used. */
              public var fromNames: [String]?

              /** The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used. */
              public var replyToAddresses: [String]?

              /** The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored. */
              public var sendTimes: [DateTime]?

              /** The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used. */
              public var subjectLines: [String]?

              /** The percentage of recipients to send the test combinations to, must be a value between 10 and 100. */
              public var testSize: Int?

              /** The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes. */
              public var waitTime: Int?

              /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
              public var winnerCriteria: WinnerCriteria?

              /** ID of the campaign that was sent to the remaining recipients based on the winning combination. */
              public var winningCampaignId: String?

              /** ID for the winning combination. */
              public var winningCombinationId: String?

              /** The settings specific to A/B test campaigns. */
              public struct Combinations: Model {
                /** The index of `variate_settings.contents` used. */
                public var contentDescription: Int?

                /** The index of `variate_settings.from_names` used. */
                public var fromName: Int?

                /** Unique ID for the combination. */
                public var id: String?

                /** The number of recipients for this combination. */
                public var recipients: Int?

                /** The index of `variate_settings.reply_to_addresses` used. */
                public var replyTo: Int?

                /** The index of `variate_settings.send_times` used. */
                public var sendTime: Int?

                /** The index of `variate_settings.subject_lines` used. */
                public var subjectLine: Int?

                public init(contentDescription: Int? = nil, fromName: Int? = nil, id: String? = nil, recipients: Int? = nil, replyTo: Int? = nil, sendTime: Int? = nil, subjectLine: Int? = nil) {
                  self.contentDescription = contentDescription
                  self.fromName = fromName
                  self.id = id
                  self.recipients = recipients
                  self.replyTo = replyTo
                  self.sendTime = sendTime
                  self.subjectLine = subjectLine
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  contentDescription = try container.decodeIfPresent("content_description")
                  fromName = try container.decodeIfPresent("from_name")
                  id = try container.decodeIfPresent("id")
                  recipients = try container.decodeIfPresent("recipients")
                  replyTo = try container.decodeIfPresent("reply_to")
                  sendTime = try container.decodeIfPresent("send_time")
                  subjectLine = try container.decodeIfPresent("subject_line")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(contentDescription, forKey: "content_description")
                  try container.encodeIfPresent(fromName, forKey: "from_name")
                  try container.encodeIfPresent(id, forKey: "id")
                  try container.encodeIfPresent(recipients, forKey: "recipients")
                  try container.encodeIfPresent(replyTo, forKey: "reply_to")
                  try container.encodeIfPresent(sendTime, forKey: "send_time")
                  try container.encodeIfPresent(subjectLine, forKey: "subject_line")
                }
              }

              public init(combinations: [Combinations]? = nil, contents: [String]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil, sendTimes: [DateTime]? = nil, subjectLines: [String]? = nil, testSize: Int? = nil, waitTime: Int? = nil, winnerCriteria: WinnerCriteria? = nil, winningCampaignId: String? = nil, winningCombinationId: String? = nil) {
                self.combinations = combinations
                self.contents = contents
                self.fromNames = fromNames
                self.replyToAddresses = replyToAddresses
                self.sendTimes = sendTimes
                self.subjectLines = subjectLines
                self.testSize = testSize
                self.waitTime = waitTime
                self.winnerCriteria = winnerCriteria
                self.winningCampaignId = winningCampaignId
                self.winningCombinationId = winningCombinationId
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                combinations = try container.decodeArrayIfPresent("combinations")
                contents = try container.decodeArrayIfPresent("contents")
                fromNames = try container.decodeArrayIfPresent("from_names")
                replyToAddresses = try container.decodeArrayIfPresent("reply_to_addresses")
                sendTimes = try container.decodeArrayIfPresent("send_times")
                subjectLines = try container.decodeArrayIfPresent("subject_lines")
                testSize = try container.decodeIfPresent("test_size")
                waitTime = try container.decodeIfPresent("wait_time")
                winnerCriteria = try container.decodeIfPresent("winner_criteria")
                winningCampaignId = try container.decodeIfPresent("winning_campaign_id")
                winningCombinationId = try container.decodeIfPresent("winning_combination_id")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(combinations, forKey: "combinations")
                try container.encodeIfPresent(contents, forKey: "contents")
                try container.encodeIfPresent(fromNames, forKey: "from_names")
                try container.encodeIfPresent(replyToAddresses, forKey: "reply_to_addresses")
                try container.encodeIfPresent(sendTimes, forKey: "send_times")
                try container.encodeIfPresent(subjectLines, forKey: "subject_lines")
                try container.encodeIfPresent(testSize, forKey: "test_size")
                try container.encodeIfPresent(waitTime, forKey: "wait_time")
                try container.encodeIfPresent(winnerCriteria, forKey: "winner_criteria")
                try container.encodeIfPresent(winningCampaignId, forKey: "winning_campaign_id")
                try container.encodeIfPresent(winningCombinationId, forKey: "winning_combination_id")
              }
            }

            public init(links: [Links]? = nil, abSplitOpts: AbSplitOpts? = nil, archiveURL: String? = nil, contentType: ContentType? = nil, createTime: Date? = nil, deliveryStatus: DeliveryStatus? = nil, emailsSent: Int? = nil, id: String? = nil, longArchiveURL: String? = nil, needsBlockRefresh: Bool? = nil, parentCampaignId: String? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, resendable: Bool? = nil, rssOpts: RssOpts? = nil, sendTime: Date? = nil, settings: Settings? = nil, socialCard: SocialCard? = nil, status: Status? = nil, tracking: Tracking? = nil, type: Type? = nil, variateSettings: VariateSettings? = nil, webId: Int? = nil) {
              self.links = links
              self.abSplitOpts = abSplitOpts
              self.archiveURL = archiveURL
              self.contentType = contentType
              self.createTime = .init(date: createTime)
              self.deliveryStatus = deliveryStatus
              self.emailsSent = emailsSent
              self.id = id
              self.longArchiveURL = longArchiveURL
              self.needsBlockRefresh = needsBlockRefresh
              self.parentCampaignId = parentCampaignId
              self.recipients = recipients
              self.reportSummary = reportSummary
              self.resendable = resendable
              self.rssOpts = rssOpts
              self.sendTime = .init(date: sendTime)
              self.settings = settings
              self.socialCard = socialCard
              self.status = status
              self.tracking = tracking
              self.type = type
              self.variateSettings = variateSettings
              self.webId = webId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              abSplitOpts = try container.decodeIfPresent("ab_split_opts")
              archiveURL = try container.decodeIfPresent("archive_url")
              contentType = try container.decodeIfPresent("content_type")
              createTime = try container.decodeIfPresent("create_time")
              deliveryStatus = try container.decodeIfPresent("delivery_status")
              emailsSent = try container.decodeIfPresent("emails_sent")
              id = try container.decodeIfPresent("id")
              longArchiveURL = try container.decodeIfPresent("long_archive_url")
              needsBlockRefresh = try container.decodeIfPresent("needs_block_refresh")
              parentCampaignId = try container.decodeIfPresent("parent_campaign_id")
              recipients = try container.decodeIfPresent("recipients")
              reportSummary = try container.decodeIfPresent("report_summary")
              resendable = try container.decodeIfPresent("resendable")
              rssOpts = try container.decodeIfPresent("rss_opts")
              sendTime = try container.decodeIfPresent("send_time")
              settings = try container.decodeIfPresent("settings")
              socialCard = try container.decodeIfPresent("social_card")
              status = try container.decodeIfPresent("status")
              tracking = try container.decodeIfPresent("tracking")
              type = try container.decodeIfPresent("type")
              variateSettings = try container.decodeIfPresent("variate_settings")
              webId = try container.decodeIfPresent("web_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(abSplitOpts, forKey: "ab_split_opts")
              try container.encodeIfPresent(archiveURL, forKey: "archive_url")
              try container.encodeIfPresent(contentType, forKey: "content_type")
              try container.encodeIfPresent(createTime, forKey: "create_time")
              try container.encodeIfPresent(deliveryStatus, forKey: "delivery_status")
              try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(longArchiveURL, forKey: "long_archive_url")
              try container.encodeIfPresent(needsBlockRefresh, forKey: "needs_block_refresh")
              try container.encodeIfPresent(parentCampaignId, forKey: "parent_campaign_id")
              try container.encodeIfPresent(recipients, forKey: "recipients")
              try container.encodeIfPresent(reportSummary, forKey: "report_summary")
              try container.encodeIfPresent(resendable, forKey: "resendable")
              try container.encodeIfPresent(rssOpts, forKey: "rss_opts")
              try container.encodeIfPresent(sendTime, forKey: "send_time")
              try container.encodeIfPresent(settings, forKey: "settings")
              try container.encodeIfPresent(socialCard, forKey: "social_card")
              try container.encodeIfPresent(status, forKey: "status")
              try container.encodeIfPresent(tracking, forKey: "tracking")
              try container.encodeIfPresent(type, forKey: "type")
              try container.encodeIfPresent(variateSettings, forKey: "variate_settings")
              try container.encodeIfPresent(webId, forKey: "web_id")
            }
          }

          public init(campaign: Campaign? = nil, snippet: String? = nil) {
            self.campaign = campaign
            self.snippet = snippet
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            campaign = try container.decodeIfPresent("campaign")
            snippet = try container.decodeIfPresent("snippet")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(campaign, forKey: "campaign")
            try container.encodeIfPresent(snippet, forKey: "snippet")
          }
        }

        public init(links: [Links]? = nil, results: [Results]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.results = results
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          results = try container.decodeArrayIfPresent("results")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(results, forKey: "results")
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
