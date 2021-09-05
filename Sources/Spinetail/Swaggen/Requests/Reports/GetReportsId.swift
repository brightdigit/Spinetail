import Foundation
import Prch

public extension Reports {
  /**
   Get campaign report

   Get report details for a specific sent campaign.
   */
  enum GetReportsId {
    public static let service = APIService<Response>(id: "getReportsId", tag: "reports", method: "GET", path: "/reports/{campaign_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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
        super.init(service: GetReportsId.service)
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
      /** Report details about a sent campaign. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
        public var abSplit: AbSplit?

        /** The number of abuse reports generated for this campaign. */
        public var abuseReports: Int?

        /** An object describing the bounce summary for the campaign. */
        public var bounces: Bounces?

        /** The title of the campaign. */
        public var campaignTitle: String?

        /** An object describing the click activity for the campaign. */
        public var clicks: Clicks?

        /** Updates on campaigns in the process of sending. */
        public var deliveryStatus: DeliveryStatus?

        /** E-Commerce stats for a campaign. */
        public var ecommerce: Ecommerce?

        /** The total number of emails sent for this campaign. */
        public var emailsSent: Int?

        /** An object describing campaign engagement on Facebook. */
        public var facebookLikes: FacebookLikes?

        /** An object describing the forwards and forward activity for the campaign. */
        public var forwards: Forwards?

        /** A string that uniquely identifies this campaign. */
        public var id: String?

        /** The average campaign statistics for your industry. */
        public var industryStats: IndustryStats?

        /** The unique list id. */
        public var listId: String?

        /** The status of the list used, namely if it's deleted or disabled. */
        public var listIsActive: Bool?

        /** The name of the list. */
        public var listName: String?

        /** The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list. */
        public var listStats: ListStats?

        /** An object describing the open activity for the campaign. */
        public var opens: Opens?

        /** The preview text for the campaign. */
        public var previewText: String?

        /** For RSS campaigns, the date and time of the last send in ISO 8601 format. */
        public var rssLastSend: DateTime

        /** The date and time a campaign was sent in ISO 8601 format. */
        public var sendTime: DateTime

        /** The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/). */
        public var shareReport: ShareReport?

        /** The subject line for the campaign. */
        public var subjectLine: String?

        /** An hourly breakdown of the performance of the campaign over the first 24 hours. */
        public var timeseries: [Timeseries]?

        /** An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp. */
        public var timewarp: [Timewarp]?

        /** The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto). */
        public var type: String?

        /** The total number of unsubscribed members for this campaign. */
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

        /** General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
        public struct AbSplit: Model {
          /** Stats for Campaign A. */
          public var a: A?

          /** Stats for Campaign B. */
          public var b: B?

          /** Stats for Campaign A. */
          public struct A: Model {
            /** Abuse reports for Campaign A. */
            public var abuseReports: Int?

            /** Bounces for Campaign A. */
            public var bounces: Int?

            /** Forwards for Campaign A. */
            public var forwards: Int?

            /** Opens from forwards for Campaign A. */
            public var forwardsOpens: Int?

            /** The last open for Campaign A. */
            public var lastOpen: String?

            /** Opens for Campaign A. */
            public var opens: Int?

            /** Recipient Clicks for Campaign A. */
            public var recipientClicks: Int?

            /** Unique opens for Campaign A. */
            public var uniqueOpens: Int?

            /** Unsubscribes for Campaign A. */
            public var unsubs: Int?

            public init(abuseReports: Int? = nil, bounces: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, lastOpen: String? = nil, opens: Int? = nil, recipientClicks: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil) {
              self.abuseReports = abuseReports
              self.bounces = bounces
              self.forwards = forwards
              self.forwardsOpens = forwardsOpens
              self.lastOpen = lastOpen
              self.opens = opens
              self.recipientClicks = recipientClicks
              self.uniqueOpens = uniqueOpens
              self.unsubs = unsubs
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              abuseReports = try container.decodeIfPresent("abuse_reports")
              bounces = try container.decodeIfPresent("bounces")
              forwards = try container.decodeIfPresent("forwards")
              forwardsOpens = try container.decodeIfPresent("forwards_opens")
              lastOpen = try container.decodeIfPresent("last_open")
              opens = try container.decodeIfPresent("opens")
              recipientClicks = try container.decodeIfPresent("recipient_clicks")
              uniqueOpens = try container.decodeIfPresent("unique_opens")
              unsubs = try container.decodeIfPresent("unsubs")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(abuseReports, forKey: "abuse_reports")
              try container.encodeIfPresent(bounces, forKey: "bounces")
              try container.encodeIfPresent(forwards, forKey: "forwards")
              try container.encodeIfPresent(forwardsOpens, forKey: "forwards_opens")
              try container.encodeIfPresent(lastOpen, forKey: "last_open")
              try container.encodeIfPresent(opens, forKey: "opens")
              try container.encodeIfPresent(recipientClicks, forKey: "recipient_clicks")
              try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
              try container.encodeIfPresent(unsubs, forKey: "unsubs")
            }
          }

          /** Stats for Campaign B. */
          public struct B: Model {
            /** Abuse reports for Campaign B. */
            public var abuseReports: Int?

            /** Bounces for Campaign B. */
            public var bounces: Int?

            /** Forwards for Campaign B. */
            public var forwards: Int?

            /** Opens for forwards from Campaign B. */
            public var forwardsOpens: Int?

            /** The last open for Campaign B. */
            public var lastOpen: String?

            /** Opens for Campaign B. */
            public var opens: Int?

            /** Recipients clicks for Campaign B. */
            public var recipientClicks: Int?

            /** Unique opens for Campaign B. */
            public var uniqueOpens: Int?

            /** Unsubscribes for Campaign B. */
            public var unsubs: Int?

            public init(abuseReports: Int? = nil, bounces: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, lastOpen: String? = nil, opens: Int? = nil, recipientClicks: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil) {
              self.abuseReports = abuseReports
              self.bounces = bounces
              self.forwards = forwards
              self.forwardsOpens = forwardsOpens
              self.lastOpen = lastOpen
              self.opens = opens
              self.recipientClicks = recipientClicks
              self.uniqueOpens = uniqueOpens
              self.unsubs = unsubs
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              abuseReports = try container.decodeIfPresent("abuse_reports")
              bounces = try container.decodeIfPresent("bounces")
              forwards = try container.decodeIfPresent("forwards")
              forwardsOpens = try container.decodeIfPresent("forwards_opens")
              lastOpen = try container.decodeIfPresent("last_open")
              opens = try container.decodeIfPresent("opens")
              recipientClicks = try container.decodeIfPresent("recipient_clicks")
              uniqueOpens = try container.decodeIfPresent("unique_opens")
              unsubs = try container.decodeIfPresent("unsubs")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(abuseReports, forKey: "abuse_reports")
              try container.encodeIfPresent(bounces, forKey: "bounces")
              try container.encodeIfPresent(forwards, forKey: "forwards")
              try container.encodeIfPresent(forwardsOpens, forKey: "forwards_opens")
              try container.encodeIfPresent(lastOpen, forKey: "last_open")
              try container.encodeIfPresent(opens, forKey: "opens")
              try container.encodeIfPresent(recipientClicks, forKey: "recipient_clicks")
              try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
              try container.encodeIfPresent(unsubs, forKey: "unsubs")
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

        /** An object describing the bounce summary for the campaign. */
        public struct Bounces: Model {
          /** The total number of hard bounced email addresses. */
          public var hardBounces: Int?

          /** The total number of soft bounced email addresses. */
          public var softBounces: Int?

          /** The total number of addresses that were syntax-related bounces. */
          public var syntaxErrors: Int?

          public init(hardBounces: Int? = nil, softBounces: Int? = nil, syntaxErrors: Int? = nil) {
            self.hardBounces = hardBounces
            self.softBounces = softBounces
            self.syntaxErrors = syntaxErrors
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            hardBounces = try container.decodeIfPresent("hard_bounces")
            softBounces = try container.decodeIfPresent("soft_bounces")
            syntaxErrors = try container.decodeIfPresent("syntax_errors")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(hardBounces, forKey: "hard_bounces")
            try container.encodeIfPresent(softBounces, forKey: "soft_bounces")
            try container.encodeIfPresent(syntaxErrors, forKey: "syntax_errors")
          }
        }

        /** An object describing the click activity for the campaign. */
        public struct Clicks: Model {
          /** The number of unique clicks divided by the total number of successful deliveries. */
          public var clickRate: Double?

          /** The total number of clicks for the campaign. */
          public var clicksTotal: Int?

          /** The date and time of the last recorded click for the campaign in ISO 8601 format. */
          public var lastClick: DateTime

          /** The total number of unique clicks for links across a campaign. */
          public var uniqueClicks: Int?

          /** The total number of subscribers who clicked on a campaign. */
          public var uniqueSubscriberClicks: Int?

          public init(clickRate: Double? = nil, clicksTotal: Int? = nil, lastClick: Date? = nil, uniqueClicks: Int? = nil, uniqueSubscriberClicks: Int? = nil) {
            self.clickRate = clickRate
            self.clicksTotal = clicksTotal
            self.lastClick = .init(date: lastClick)
            self.uniqueClicks = uniqueClicks
            self.uniqueSubscriberClicks = uniqueSubscriberClicks
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            clickRate = try container.decodeIfPresent("click_rate")
            clicksTotal = try container.decodeIfPresent("clicks_total")
            lastClick = try container.decodeIfPresent("last_click")
            uniqueClicks = try container.decodeIfPresent("unique_clicks")
            uniqueSubscriberClicks = try container.decodeIfPresent("unique_subscriber_clicks")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(clicksTotal, forKey: "clicks_total")
            try container.encodeIfPresent(lastClick, forKey: "last_click")
            try container.encodeIfPresent(uniqueClicks, forKey: "unique_clicks")
            try container.encodeIfPresent(uniqueSubscriberClicks, forKey: "unique_subscriber_clicks")
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

        /** E-Commerce stats for a campaign. */
        public struct Ecommerce: Model {
          public var currencyCode: String?

          /** The total orders for a campaign. */
          public var totalOrders: Int?

          /** The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals. */
          public var totalRevenue: Double?

          /** The total spent for a campaign. Calculated as the sum of all order totals with no deductions. */
          public var totalSpent: Double?

          public init(currencyCode: String? = nil, totalOrders: Int? = nil, totalRevenue: Double? = nil, totalSpent: Double? = nil) {
            self.currencyCode = currencyCode
            self.totalOrders = totalOrders
            self.totalRevenue = totalRevenue
            self.totalSpent = totalSpent
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            currencyCode = try container.decodeIfPresent("currency_code")
            totalOrders = try container.decodeIfPresent("total_orders")
            totalRevenue = try container.decodeIfPresent("total_revenue")
            totalSpent = try container.decodeIfPresent("total_spent")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(currencyCode, forKey: "currency_code")
            try container.encodeIfPresent(totalOrders, forKey: "total_orders")
            try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
            try container.encodeIfPresent(totalSpent, forKey: "total_spent")
          }
        }

        /** An object describing campaign engagement on Facebook. */
        public struct FacebookLikes: Model {
          /** The number of Facebook likes for the campaign. */
          public var facebookLikes: Int?

          /** The number of recipients who liked the campaign on Facebook. */
          public var recipientLikes: Int?

          /** The number of unique likes. */
          public var uniqueLikes: Int?

          public init(facebookLikes: Int? = nil, recipientLikes: Int? = nil, uniqueLikes: Int? = nil) {
            self.facebookLikes = facebookLikes
            self.recipientLikes = recipientLikes
            self.uniqueLikes = uniqueLikes
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            facebookLikes = try container.decodeIfPresent("facebook_likes")
            recipientLikes = try container.decodeIfPresent("recipient_likes")
            uniqueLikes = try container.decodeIfPresent("unique_likes")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(facebookLikes, forKey: "facebook_likes")
            try container.encodeIfPresent(recipientLikes, forKey: "recipient_likes")
            try container.encodeIfPresent(uniqueLikes, forKey: "unique_likes")
          }
        }

        /** An object describing the forwards and forward activity for the campaign. */
        public struct Forwards: Model {
          /** How many times the campaign has been forwarded. */
          public var forwardsCount: Int?

          /** How many times the forwarded campaign has been opened. */
          public var forwardsOpens: Int?

          public init(forwardsCount: Int? = nil, forwardsOpens: Int? = nil) {
            self.forwardsCount = forwardsCount
            self.forwardsOpens = forwardsOpens
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            forwardsCount = try container.decodeIfPresent("forwards_count")
            forwardsOpens = try container.decodeIfPresent("forwards_opens")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(forwardsCount, forKey: "forwards_count")
            try container.encodeIfPresent(forwardsOpens, forKey: "forwards_opens")
          }
        }

        /** The average campaign statistics for your industry. */
        public struct IndustryStats: Model {
          /** The industry abuse rate. */
          public var abuseRate: Double?

          /** The industry bounce rate. */
          public var bounceRate: Double?

          /** The industry click rate. */
          public var clickRate: Double?

          /** The industry open rate. */
          public var openRate: Double?

          /** The type of business industry associated with your account. For example: retail, education, etc. */
          public var type: String?

          /** The industry unopened rate. */
          public var unopenRate: Double?

          /** The industry unsubscribe rate. */
          public var unsubRate: Double?

          public init(abuseRate: Double? = nil, bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil, type: String? = nil, unopenRate: Double? = nil, unsubRate: Double? = nil) {
            self.abuseRate = abuseRate
            self.bounceRate = bounceRate
            self.clickRate = clickRate
            self.openRate = openRate
            self.type = type
            self.unopenRate = unopenRate
            self.unsubRate = unsubRate
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            abuseRate = try container.decodeIfPresent("abuse_rate")
            bounceRate = try container.decodeIfPresent("bounce_rate")
            clickRate = try container.decodeIfPresent("click_rate")
            openRate = try container.decodeIfPresent("open_rate")
            type = try container.decodeIfPresent("type")
            unopenRate = try container.decodeIfPresent("unopen_rate")
            unsubRate = try container.decodeIfPresent("unsub_rate")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(abuseRate, forKey: "abuse_rate")
            try container.encodeIfPresent(bounceRate, forKey: "bounce_rate")
            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(type, forKey: "type")
            try container.encodeIfPresent(unopenRate, forKey: "unopen_rate")
            try container.encodeIfPresent(unsubRate, forKey: "unsub_rate")
          }
        }

        /** The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list. */
        public struct ListStats: Model {
          /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
          public var clickRate: Double?

          /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
          public var openRate: Double?

          /** The average number of subscriptions per month for the list. */
          public var subRate: Double?

          /** The average number of unsubscriptions per month for the list. */
          public var unsubRate: Double?

          public init(clickRate: Double? = nil, openRate: Double? = nil, subRate: Double? = nil, unsubRate: Double? = nil) {
            self.clickRate = clickRate
            self.openRate = openRate
            self.subRate = subRate
            self.unsubRate = unsubRate
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            clickRate = try container.decodeIfPresent("click_rate")
            openRate = try container.decodeIfPresent("open_rate")
            subRate = try container.decodeIfPresent("sub_rate")
            unsubRate = try container.decodeIfPresent("unsub_rate")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(subRate, forKey: "sub_rate")
            try container.encodeIfPresent(unsubRate, forKey: "unsub_rate")
          }
        }

        /** An object describing the open activity for the campaign. */
        public struct Opens: Model {
          /** The date and time of the last recorded open in ISO 8601 format. */
          public var lastOpen: DateTime

          /** The number of unique opens divided by the total number of successful deliveries. */
          public var openRate: Double?

          /** The total number of opens for a campaign. */
          public var opensTotal: Int?

          /** The total number of unique opens. */
          public var uniqueOpens: Int?

          public init(lastOpen: Date? = nil, openRate: Double? = nil, opensTotal: Int? = nil, uniqueOpens: Int? = nil) {
            self.lastOpen = .init(date: lastOpen)
            self.openRate = openRate
            self.opensTotal = opensTotal
            self.uniqueOpens = uniqueOpens
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            lastOpen = try container.decodeIfPresent("last_open")
            openRate = try container.decodeIfPresent("open_rate")
            opensTotal = try container.decodeIfPresent("opens_total")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(lastOpen, forKey: "last_open")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(opensTotal, forKey: "opens_total")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
          }
        }

        /** The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/). */
        public struct ShareReport: Model {
          /** If password protected, the password for the VIP report. */
          public var sharePassword: String?

          /** The URL for the VIP report. */
          public var shareURL: String?

          public init(sharePassword: String? = nil, shareURL: String? = nil) {
            self.sharePassword = sharePassword
            self.shareURL = shareURL
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            sharePassword = try container.decodeIfPresent("share_password")
            shareURL = try container.decodeIfPresent("share_url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(sharePassword, forKey: "share_password")
            try container.encodeIfPresent(shareURL, forKey: "share_url")
          }
        }

        /** Report details about a sent campaign. */
        public struct Timeseries: Model {
          /** The number of emails sent in the timeseries. */
          public var emailsSent: Int?

          /** The number of clicks in the timeseries. */
          public var recipientsClicks: Int?

          /** The date and time for the series in ISO 8601 format. */
          public var timestamp: DateTime

          /** The number of unique opens in the timeseries. */
          public var uniqueOpens: Int?

          public init(emailsSent: Int? = nil, recipientsClicks: Int? = nil, timestamp: Date? = nil, uniqueOpens: Int? = nil) {
            self.emailsSent = emailsSent
            self.recipientsClicks = recipientsClicks
            self.timestamp = .init(date: timestamp)
            self.uniqueOpens = uniqueOpens
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            emailsSent = try container.decodeIfPresent("emails_sent")
            recipientsClicks = try container.decodeIfPresent("recipients_clicks")
            timestamp = try container.decodeIfPresent("timestamp")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
            try container.encodeIfPresent(recipientsClicks, forKey: "recipients_clicks")
            try container.encodeIfPresent(timestamp, forKey: "timestamp")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
          }
        }

        /** Report details about a sent campaign. */
        public struct Timewarp: Model {
          /** The number of bounces. */
          public var bounces: Int?

          /** The number of clicks. */
          public var clicks: Int?

          /** For campaigns sent with timewarp, the time zone group the member is apart of. */
          public var gmtOffset: Int?

          /** The date and time of the last click in ISO 8601 format. */
          public var lastClick: DateTime

          /** The date and time of the last open in ISO 8601 format. */
          public var lastOpen: DateTime

          /** The number of opens. */
          public var opens: Int?

          /** The number of unique clicks. */
          public var uniqueClicks: Int?

          /** The number of unique opens. */
          public var uniqueOpens: Int?

          public init(bounces: Int? = nil, clicks: Int? = nil, gmtOffset: Int? = nil, lastClick: Date? = nil, lastOpen: Date? = nil, opens: Int? = nil, uniqueClicks: Int? = nil, uniqueOpens: Int? = nil) {
            self.bounces = bounces
            self.clicks = clicks
            self.gmtOffset = gmtOffset
            self.lastClick = .init(date: lastClick)
            self.lastOpen = .init(date: lastOpen)
            self.opens = opens
            self.uniqueClicks = uniqueClicks
            self.uniqueOpens = uniqueOpens
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            bounces = try container.decodeIfPresent("bounces")
            clicks = try container.decodeIfPresent("clicks")
            gmtOffset = try container.decodeIfPresent("gmt_offset")
            lastClick = try container.decodeIfPresent("last_click")
            lastOpen = try container.decodeIfPresent("last_open")
            opens = try container.decodeIfPresent("opens")
            uniqueClicks = try container.decodeIfPresent("unique_clicks")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(bounces, forKey: "bounces")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(gmtOffset, forKey: "gmt_offset")
            try container.encodeIfPresent(lastClick, forKey: "last_click")
            try container.encodeIfPresent(lastOpen, forKey: "last_open")
            try container.encodeIfPresent(opens, forKey: "opens")
            try container.encodeIfPresent(uniqueClicks, forKey: "unique_clicks")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
          }
        }

        public init(links: [Links]? = nil, abSplit: AbSplit? = nil, abuseReports: Int? = nil, bounces: Bounces? = nil, campaignTitle: String? = nil, clicks: Clicks? = nil, deliveryStatus: DeliveryStatus? = nil, ecommerce: Ecommerce? = nil, emailsSent: Int? = nil, facebookLikes: FacebookLikes? = nil, forwards: Forwards? = nil, id: String? = nil, industryStats: IndustryStats? = nil, listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, listStats: ListStats? = nil, opens: Opens? = nil, previewText: String? = nil, rssLastSend: Date? = nil, sendTime: Date? = nil, shareReport: ShareReport? = nil, subjectLine: String? = nil, timeseries: [Timeseries]? = nil, timewarp: [Timewarp]? = nil, type: String? = nil, unsubscribed: Int? = nil) {
          self.links = links
          self.abSplit = abSplit
          self.abuseReports = abuseReports
          self.bounces = bounces
          self.campaignTitle = campaignTitle
          self.clicks = clicks
          self.deliveryStatus = deliveryStatus
          self.ecommerce = ecommerce
          self.emailsSent = emailsSent
          self.facebookLikes = facebookLikes
          self.forwards = forwards
          self.id = id
          self.industryStats = industryStats
          self.listId = listId
          self.listIsActive = listIsActive
          self.listName = listName
          self.listStats = listStats
          self.opens = opens
          self.previewText = previewText
          self.rssLastSend = .init(date: rssLastSend)
          self.sendTime = .init(date: sendTime)
          self.shareReport = shareReport
          self.subjectLine = subjectLine
          self.timeseries = timeseries
          self.timewarp = timewarp
          self.type = type
          self.unsubscribed = unsubscribed
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          abSplit = try container.decodeIfPresent("ab_split")
          abuseReports = try container.decodeIfPresent("abuse_reports")
          bounces = try container.decodeIfPresent("bounces")
          campaignTitle = try container.decodeIfPresent("campaign_title")
          clicks = try container.decodeIfPresent("clicks")
          deliveryStatus = try container.decodeIfPresent("delivery_status")
          ecommerce = try container.decodeIfPresent("ecommerce")
          emailsSent = try container.decodeIfPresent("emails_sent")
          facebookLikes = try container.decodeIfPresent("facebook_likes")
          forwards = try container.decodeIfPresent("forwards")
          id = try container.decodeIfPresent("id")
          industryStats = try container.decodeIfPresent("industry_stats")
          listId = try container.decodeIfPresent("list_id")
          listIsActive = try container.decodeIfPresent("list_is_active")
          listName = try container.decodeIfPresent("list_name")
          listStats = try container.decodeIfPresent("list_stats")
          opens = try container.decodeIfPresent("opens")
          previewText = try container.decodeIfPresent("preview_text")
          rssLastSend = try container.decodeIfPresent("rss_last_send")
          sendTime = try container.decodeIfPresent("send_time")
          shareReport = try container.decodeIfPresent("share_report")
          subjectLine = try container.decodeIfPresent("subject_line")
          timeseries = try container.decodeArrayIfPresent("timeseries")
          timewarp = try container.decodeArrayIfPresent("timewarp")
          type = try container.decodeIfPresent("type")
          unsubscribed = try container.decodeIfPresent("unsubscribed")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(abSplit, forKey: "ab_split")
          try container.encodeIfPresent(abuseReports, forKey: "abuse_reports")
          try container.encodeIfPresent(bounces, forKey: "bounces")
          try container.encodeIfPresent(campaignTitle, forKey: "campaign_title")
          try container.encodeIfPresent(clicks, forKey: "clicks")
          try container.encodeIfPresent(deliveryStatus, forKey: "delivery_status")
          try container.encodeIfPresent(ecommerce, forKey: "ecommerce")
          try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
          try container.encodeIfPresent(facebookLikes, forKey: "facebook_likes")
          try container.encodeIfPresent(forwards, forKey: "forwards")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(industryStats, forKey: "industry_stats")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
          try container.encodeIfPresent(listName, forKey: "list_name")
          try container.encodeIfPresent(listStats, forKey: "list_stats")
          try container.encodeIfPresent(opens, forKey: "opens")
          try container.encodeIfPresent(previewText, forKey: "preview_text")
          try container.encodeIfPresent(rssLastSend, forKey: "rss_last_send")
          try container.encodeIfPresent(sendTime, forKey: "send_time")
          try container.encodeIfPresent(shareReport, forKey: "share_report")
          try container.encodeIfPresent(subjectLine, forKey: "subject_line")
          try container.encodeIfPresent(timeseries, forKey: "timeseries")
          try container.encodeIfPresent(timewarp, forKey: "timewarp")
          try container.encodeIfPresent(type, forKey: "type")
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
