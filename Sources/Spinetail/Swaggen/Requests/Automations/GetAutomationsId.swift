import Foundation
import Prch

public extension Automations {
  /**
   Get automation info

   Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object returns information for the first email in the workflow.
   */
  enum GetAutomationsId {
    public static let service = APIService<Response>(id: "getAutomationsId", tag: "automations", method: "GET", path: "/automations/{workflow_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the Automation workflow. */
        public var workflowId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, workflowId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.workflowId = workflowId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetAutomationsId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, workflowId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, workflowId: workflowId)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(self.options.workflowId)")
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
      /** A summary of an individual Automation workflow's settings and content. */
      public struct Status200: Model {
        /** The current status of the Automation. */
        public enum Status: String, Codable, Equatable, CaseIterable {
          case save
          case paused
          case sending
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The date and time the Automation was created in ISO 8601 format. */
        public var createTime: DateTime

        /** The total number of emails sent for the Automation. */
        public var emailsSent: Int?

        /** A string that identifies the Automation. */
        public var id: String?

        /** List settings for the Automation. */
        public var recipients: Recipients?

        /** A summary of opens and clicks for sent campaigns. */
        public var reportSummary: ReportSummary?

        /** The settings for the Automation workflow. */
        public var settings: Settings?

        /** The date and time the Automation was started in ISO 8601 format. */
        public var startTime: DateTime

        /** The current status of the Automation. */
        public var status: Status?

        /** The tracking options for the Automation. */
        public var tracking: Tracking?

        /** Available triggers for Automation workflows. */
        public var triggerSettings: TriggerSettings?

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

        /** List settings for the Automation. */
        public struct Recipients: Model {
          /** The unique list id. */
          public var listId: String?

          /** The status of the list used, namely if it's deleted or disabled. */
          public var listIsActive: Bool?

          /** List Name. */
          public var listName: String?

          /** An object representing all segmentation options. */
          public var segmentOpts: SegmentOpts?

          /** The id of the store. */
          public var storeId: String?

          /** An object representing all segmentation options. */
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

            /** The id for an existing saved segment. */
            public var savedSegmentId: Int?

            public init(conditions: [[String: CodableAny]]? = nil, match: Match? = nil, savedSegmentId: Int? = nil) {
              self.conditions = conditions
              self.match = match
              self.savedSegmentId = savedSegmentId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              conditions = try container.decodeAnyIfPresent("conditions")
              match = try container.decodeIfPresent("match")
              savedSegmentId = try container.decodeIfPresent("saved_segment_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeAnyIfPresent(conditions, forKey: "conditions")
              try container.encodeIfPresent(match, forKey: "match")
              try container.encodeIfPresent(savedSegmentId, forKey: "saved_segment_id")
            }
          }

          public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentOpts: SegmentOpts? = nil, storeId: String? = nil) {
            self.listId = listId
            self.listIsActive = listIsActive
            self.listName = listName
            self.segmentOpts = segmentOpts
            self.storeId = storeId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            listId = try container.decodeIfPresent("list_id")
            listIsActive = try container.decodeIfPresent("list_is_active")
            listName = try container.decodeIfPresent("list_name")
            segmentOpts = try container.decodeIfPresent("segment_opts")
            storeId = try container.decodeIfPresent("store_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
            try container.encodeIfPresent(listName, forKey: "list_name")
            try container.encodeIfPresent(segmentOpts, forKey: "segment_opts")
            try container.encodeIfPresent(storeId, forKey: "store_id")
          }
        }

        /** A summary of opens and clicks for sent campaigns. */
        public struct ReportSummary: Model {
          /** The number of unique clicks, divided by the total number of successful deliveries. */
          public var clickRate: Double?

          /** The total number of clicks for an campaign. */
          public var clicks: Int?

          /** The number of unique opens divided by the total number of successful deliveries. */
          public var openRate: Double?

          /** The total number of opens for a campaign. */
          public var opens: Int?

          /** The number of unique clicks. */
          public var subscriberClicks: Int?

          /** The number of unique opens. */
          public var uniqueOpens: Int?

          public init(clickRate: Double? = nil, clicks: Int? = nil, openRate: Double? = nil, opens: Int? = nil, subscriberClicks: Int? = nil, uniqueOpens: Int? = nil) {
            self.clickRate = clickRate
            self.clicks = clicks
            self.openRate = openRate
            self.opens = opens
            self.subscriberClicks = subscriberClicks
            self.uniqueOpens = uniqueOpens
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            clickRate = try container.decodeIfPresent("click_rate")
            clicks = try container.decodeIfPresent("clicks")
            openRate = try container.decodeIfPresent("open_rate")
            opens = try container.decodeIfPresent("opens")
            subscriberClicks = try container.decodeIfPresent("subscriber_clicks")
            uniqueOpens = try container.decodeIfPresent("unique_opens")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(clicks, forKey: "clicks")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(opens, forKey: "opens")
            try container.encodeIfPresent(subscriberClicks, forKey: "subscriber_clicks")
            try container.encodeIfPresent(uniqueOpens, forKey: "unique_opens")
          }
        }

        /** The settings for the Automation workflow. */
        public struct Settings: Model {
          /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to `true`. */
          public var authenticate: Bool?

          /** Whether to automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation. */
          public var autoFooter: Bool?

          /** The 'from' name for the Automation (not an email address). */
          public var fromName: String?

          /** Whether to automatically inline the CSS included with the Automation content. */
          public var inlineCss: Bool?

          /** The reply-to email address for the Automation. */
          public var replyTo: String?

          /** The title of the Automation. */
          public var title: String?

          /** The Automation's custom 'To' name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
          public var toName: String?

          /** Whether to use Mailchimp Conversation feature to manage replies */
          public var useConversation: Bool?

          public init(authenticate: Bool? = nil, autoFooter: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, replyTo: String? = nil, title: String? = nil, toName: String? = nil, useConversation: Bool? = nil) {
            self.authenticate = authenticate
            self.autoFooter = autoFooter
            self.fromName = fromName
            self.inlineCss = inlineCss
            self.replyTo = replyTo
            self.title = title
            self.toName = toName
            self.useConversation = useConversation
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            authenticate = try container.decodeIfPresent("authenticate")
            autoFooter = try container.decodeIfPresent("auto_footer")
            fromName = try container.decodeIfPresent("from_name")
            inlineCss = try container.decodeIfPresent("inline_css")
            replyTo = try container.decodeIfPresent("reply_to")
            title = try container.decodeIfPresent("title")
            toName = try container.decodeIfPresent("to_name")
            useConversation = try container.decodeIfPresent("use_conversation")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(authenticate, forKey: "authenticate")
            try container.encodeIfPresent(autoFooter, forKey: "auto_footer")
            try container.encodeIfPresent(fromName, forKey: "from_name")
            try container.encodeIfPresent(inlineCss, forKey: "inline_css")
            try container.encodeIfPresent(replyTo, forKey: "reply_to")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(toName, forKey: "to_name")
            try container.encodeIfPresent(useConversation, forKey: "use_conversation")
          }
        }

        /** The tracking options for the Automation. */
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

          /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the Automation. Defaults to `true`. */
          public var htmlClicks: Bool?

          /** Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`. */
          public var opens: Bool?

          /** Deprecated */
          public var salesforce: Salesforce?

          /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the Automation. Defaults to `true`. */
          public var textClicks: Bool?

          /** Deprecated */
          public struct Capsule: Model {
            /** Update contact notes for a campaign based on a subscriber's email addresses. */
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

            /** Update contact notes for a campaign based on a subscriber's email address. */
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

        /** Available triggers for Automation workflows. */
        public struct TriggerSettings: Model {
          /** The type of Automation workflow. */
          public enum WorkflowType: String, Codable, Equatable, CaseIterable {
            case abandonedBrowse
            case abandonedCart
            case api
            case bestCustomers
            case categoryFollowup
            case dateAdded
            case emailFollowup
            case emailSeries
            case groupAdd
            case groupRemove
            case mandrill
            case productFollowup
            case purchaseFollowup
            case recurringEvent
            case specialEvent
            case visitUrl
            case welcomeSeries
          }

          /** The type of Automation workflow. */
          public var workflowType: WorkflowType

          /** A workflow's runtime settings for an Automation. */
          public var runtime: Runtime?

          /** The number of emails in the Automation workflow. */
          public var workflowEmailsCount: Int?

          /** The title of the workflow type. */
          public var workflowTitle: String?

          /** A workflow's runtime settings for an Automation. */
          public struct Runtime: Model {
            /** The days an Automation workflow can send. */
            public enum Days: String, Codable, Equatable, CaseIterable {
              case sunday
              case monday
              case tuesday
              case wednesday
              case thursday
              case friday
              case saturday
            }

            /** The days an Automation workflow can send. */
            public var days: [Days]?

            /** The hours an Automation workflow can send. */
            public var hours: Hours?

            /** The hours an Automation workflow can send. */
            public struct Hours: Model {
              /** When to send the Automation email. */
              public enum `Type`: String, Codable, Equatable, CaseIterable {
                case sendAsap = "send_asap"
                case sendBetween = "send_between"
                case sendAt = "send_at"
              }

              /** When to send the Automation email. */
              public var type: `Type`

              public init(type: Type) {
                self.type = type
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                type = try container.decode("type")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(type, forKey: "type")
              }
            }

            public init(days: [Days]? = nil, hours: Hours? = nil) {
              self.days = days
              self.hours = hours
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              days = try container.decodeArrayIfPresent("days")
              hours = try container.decodeIfPresent("hours")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(days, forKey: "days")
              try container.encodeIfPresent(hours, forKey: "hours")
            }
          }

          public init(workflowType: WorkflowType, runtime: Runtime? = nil, workflowEmailsCount: Int? = nil, workflowTitle: String? = nil) {
            self.workflowType = workflowType
            self.runtime = runtime
            self.workflowEmailsCount = workflowEmailsCount
            self.workflowTitle = workflowTitle
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            workflowType = try container.decode("workflow_type")
            runtime = try container.decodeIfPresent("runtime")
            workflowEmailsCount = try container.decodeIfPresent("workflow_emails_count")
            workflowTitle = try container.decodeIfPresent("workflow_title")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(workflowType, forKey: "workflow_type")
            try container.encodeIfPresent(runtime, forKey: "runtime")
            try container.encodeIfPresent(workflowEmailsCount, forKey: "workflow_emails_count")
            try container.encodeIfPresent(workflowTitle, forKey: "workflow_title")
          }
        }

        public init(links: [Links]? = nil, createTime: Date? = nil, emailsSent: Int? = nil, id: String? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, settings: Settings? = nil, startTime: Date? = nil, status: Status? = nil, tracking: Tracking? = nil, triggerSettings: TriggerSettings? = nil) {
          self.links = links
          self.createTime = .init(date: createTime)
          self.emailsSent = emailsSent
          self.id = id
          self.recipients = recipients
          self.reportSummary = reportSummary
          self.settings = settings
          self.startTime = .init(date: startTime)
          self.status = status
          self.tracking = tracking
          self.triggerSettings = triggerSettings
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          createTime = try container.decodeIfPresent("create_time")
          emailsSent = try container.decodeIfPresent("emails_sent")
          id = try container.decodeIfPresent("id")
          recipients = try container.decodeIfPresent("recipients")
          reportSummary = try container.decodeIfPresent("report_summary")
          settings = try container.decodeIfPresent("settings")
          startTime = try container.decodeIfPresent("start_time")
          status = try container.decodeIfPresent("status")
          tracking = try container.decodeIfPresent("tracking")
          triggerSettings = try container.decodeIfPresent("trigger_settings")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(createTime, forKey: "create_time")
          try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(recipients, forKey: "recipients")
          try container.encodeIfPresent(reportSummary, forKey: "report_summary")
          try container.encodeIfPresent(settings, forKey: "settings")
          try container.encodeIfPresent(startTime, forKey: "start_time")
          try container.encodeIfPresent(status, forKey: "status")
          try container.encodeIfPresent(tracking, forKey: "tracking")
          try container.encodeIfPresent(triggerSettings, forKey: "trigger_settings")
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
