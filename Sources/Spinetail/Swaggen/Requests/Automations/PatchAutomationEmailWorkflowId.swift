import Foundation
import Prch

public extension Automations {
  /**
   Update workflow email

   Update settings for a classic automation workflow email
   */
  enum PatchAutomationEmailWorkflowId {
    public static let service = APIService<Response>(id: "patchAutomationEmailWorkflowId", tag: "automations", method: "PATCH", path: "/automations/{workflow_id}/emails/{workflow_email_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Update information about an individual Automation workflow email. */
      public struct Body: Model {
        /** The delay settings for an automation email. */
        public var delay: Delay?

        /** Settings for the campaign including the email subject, from name, and from email address. */
        public var settings: Settings?

        /** The delay settings for an automation email. */
        public struct Delay: Model {
          /** The action that triggers the delay of an automation emails. */
          public enum Action: String, Codable, Equatable, CaseIterable {
            case signup
            case ecommAbandonedBrowse = "ecomm_abandoned_browse"
            case ecommAbandonedCart = "ecomm_abandoned_cart"
          }

          /** Whether the delay settings describe before or after the delay action of an automation email. */
          public enum Direction: String, Codable, Equatable, CaseIterable {
            case after
          }

          /** The type of delay for an automation email. */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case now
            case day
            case hour
            case week
          }

          /** The action that triggers the delay of an automation emails. */
          public var action: Action

          /** The delay amount for an automation email. */
          public var amount: Int?

          /** Whether the delay settings describe before or after the delay action of an automation email. */
          public var direction: Direction?

          /** The type of delay for an automation email. */
          public var type: `Type`?

          public init(action: Action, amount: Int? = nil, direction: Direction? = nil, type: Type? = nil) {
            self.action = action
            self.amount = amount
            self.direction = direction
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            action = try container.decode("action")
            amount = try container.decodeIfPresent("amount")
            direction = try container.decodeIfPresent("direction")
            type = try container.decodeIfPresent("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(action, forKey: "action")
            try container.encodeIfPresent(amount, forKey: "amount")
            try container.encodeIfPresent(direction, forKey: "direction")
            try container.encodeIfPresent(type, forKey: "type")
          }
        }

        /** Settings for the campaign including the email subject, from name, and from email address. */
        public struct Settings: Model {
          /** The 'from' name for the Automation (not an email address). */
          public var fromName: String?

          /** The preview text for the campaign. */
          public var previewText: String?

          /** The reply-to email address for the Automation. */
          public var replyTo: String?

          /** The subject line for the campaign. */
          public var subjectLine: String?

          /** The title of the Automation. */
          public var title: String?

          public init(fromName: String? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, title: String? = nil) {
            self.fromName = fromName
            self.previewText = previewText
            self.replyTo = replyTo
            self.subjectLine = subjectLine
            self.title = title
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            fromName = try container.decodeIfPresent("from_name")
            previewText = try container.decodeIfPresent("preview_text")
            replyTo = try container.decodeIfPresent("reply_to")
            subjectLine = try container.decodeIfPresent("subject_line")
            title = try container.decodeIfPresent("title")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(fromName, forKey: "from_name")
            try container.encodeIfPresent(previewText, forKey: "preview_text")
            try container.encodeIfPresent(replyTo, forKey: "reply_to")
            try container.encodeIfPresent(subjectLine, forKey: "subject_line")
            try container.encodeIfPresent(title, forKey: "title")
          }
        }

        public init(delay: Delay? = nil, settings: Settings? = nil) {
          self.delay = delay
          self.settings = settings
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          delay = try container.decodeIfPresent("delay")
          settings = try container.decodeIfPresent("settings")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(delay, forKey: "delay")
          try container.encodeIfPresent(settings, forKey: "settings")
        }
      }

      public struct Options {
        /** The unique id for the Automation workflow. */
        public var workflowId: String

        /** The unique id for the Automation workflow email. */
        public var workflowEmailId: String

        public init(workflowId: String, workflowEmailId: String) {
          self.workflowId = workflowId
          self.workflowEmailId = workflowEmailId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PatchAutomationEmailWorkflowId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(workflowId: String, workflowEmailId: String, body: Body) {
        let options = Options(workflowId: workflowId, workflowEmailId: workflowEmailId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(options.workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(options.workflowEmailId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A summary of an individual Automation workflow email. */
      public struct Status200: Model {
        /** The current status of the campaign. */
        public enum Status: String, Codable, Equatable, CaseIterable {
          case save
          case paused
          case sending
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The link to the campaign's archive version in ISO 8601 format. */
        public var archiveURL: String?

        /** How the campaign's content is put together ('template', 'drag_and_drop', 'html', 'url'). */
        public var contentType: String?

        /** The date and time the campaign was created in ISO 8601 format. */
        public var createTime: DateTime

        /** The delay settings for an Automation email. */
        public var delay: Delay?

        /** The total number of emails sent for this campaign. */
        public var emailsSent: Int?

        /** Determines if the campaign contains the *|BRAND:LOGO|* merge tag. */
        public var hasLogoMergeTag: Bool?

        /** A string that uniquely identifies the Automation email. */
        public var id: String?

        /** Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor. */
        public var needsBlockRefresh: Bool?

        /** The position of an Automation email in a workflow. */
        public var position: Int?

        /** List settings for the campaign. */
        public var recipients: Recipients?

        /** For sent campaigns, a summary of opens and clicks. */
        public var reportSummary: ReportSummary?

        /**  The date and time a campaign was sent in ISO 8601 format */
        public var sendTime: DateTime

        /** Settings for the campaign including the email subject, from name, and from email address. */
        public var settings: Settings?

        /** The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/). */
        public var socialCard: SocialCard?

        /** The date and time the campaign was started in ISO 8601 format. */
        public var startTime: DateTime

        /** The current status of the campaign. */
        public var status: Status?

        /** The tracking options for a campaign. */
        public var tracking: Tracking?

        /** Available triggers for Automation workflows. */
        public var triggerSettings: TriggerSettings?

        /** The ID used in the Mailchimp web application. View this automation in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`. */
        public var webId: Int?

        /** A string that uniquely identifies an Automation workflow. */
        public var workflowId: String?

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

        /** The delay settings for an Automation email. */
        public struct Delay: Model {
          /** The action that triggers the delay of an Automation email. */
          public enum Action: String, Codable, Equatable, CaseIterable {
            case previousCampaignSent = "previous_campaign_sent"
            case previousCampaignOpened = "previous_campaign_opened"
            case previousCampaignNotOpened = "previous_campaign_not_opened"
            case previousCampaignClickedAny = "previous_campaign_clicked_any"
            case previousCampaignNotClickedAny = "previous_campaign_not_clicked_any"
            case previousCampaignSpecificClicked = "previous_campaign_specific_clicked"
            case ecommBoughtAny = "ecomm_bought_any"
            case ecommBoughtProduct = "ecomm_bought_product"
            case ecommBoughtCategory = "ecomm_bought_category"
            case ecommNotBoughtAny = "ecomm_not_bought_any"
            case ecommAbandonedCart = "ecomm_abandoned_cart"
            case campaignSent = "campaign_sent"
            case openedEmail = "opened_email"
            case notOpenedEmail = "not_opened_email"
            case clickedEmail = "clicked_email"
            case notClickedEmail = "not_clicked_email"
            case campaignSpecificClicked = "campaign_specific_clicked"
            case manual
            case signup
            case mergeChanged = "merge_changed"
            case groupAdd = "group_add"
            case groupRemove = "group_remove"
            case mandrillSent = "mandrill_sent"
            case mandrillOpened = "mandrill_opened"
            case mandrillClicked = "mandrill_clicked"
            case mandrillAny = "mandrill_any"
            case api
            case goal
            case annual
            case birthday
            case date
            case dateAdded = "date_added"
            case tagAdd = "tag_add"
          }

          /** Whether the delay settings describe before or after the delay action of an Automation email. */
          public enum Direction: String, Codable, Equatable, CaseIterable {
            case before
            case after
          }

          /** The type of delay for an Automation email. */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case now
            case day
            case hour
            case week
          }

          /** The action that triggers the delay of an Automation email. */
          public var action: Action?

          /** The user-friendly description of the action that triggers an Automation email. */
          public var actionDescription: String?

          /** The delay amount for an Automation email. */
          public var amount: Int?

          /** Whether the delay settings describe before or after the delay action of an Automation email. */
          public var direction: Direction?

          /** The user-friendly description of the delay and trigger action settings for an Automation email. */
          public var fullDescription: String?

          /** The type of delay for an Automation email. */
          public var type: `Type`?

          public init(action: Action? = nil, actionDescription: String? = nil, amount: Int? = nil, direction: Direction? = nil, fullDescription: String? = nil, type: Type? = nil) {
            self.action = action
            self.actionDescription = actionDescription
            self.amount = amount
            self.direction = direction
            self.fullDescription = fullDescription
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            action = try container.decodeIfPresent("action")
            actionDescription = try container.decodeIfPresent("action_description")
            amount = try container.decodeIfPresent("amount")
            direction = try container.decodeIfPresent("direction")
            fullDescription = try container.decodeIfPresent("full_description")
            type = try container.decodeIfPresent("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(action, forKey: "action")
            try container.encodeIfPresent(actionDescription, forKey: "action_description")
            try container.encodeIfPresent(amount, forKey: "amount")
            try container.encodeIfPresent(direction, forKey: "direction")
            try container.encodeIfPresent(fullDescription, forKey: "full_description")
            try container.encodeIfPresent(type, forKey: "type")
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

          /** A description of the [segment](https://mailchimp.com/help/getting-started-with-groups/) used for the campaign. Formatted as a string marked up with HTML. */
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

        /** For sent campaigns, a summary of opens and clicks. */
        public struct ReportSummary: Model {
          /** The number of unique clicks divided by the total number of successful deliveries. */
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

        /** Settings for the campaign including the email subject, from name, and from email address. */
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

          /** The title of the campaign. */
          public var title: String?

          public init(authenticate: Bool? = nil, autoFbPost: [String]? = nil, autoFooter: Bool? = nil, autoTweet: Bool? = nil, dragAndDrop: Bool? = nil, fbComments: Bool? = nil, fromName: String? = nil, inlineCss: Bool? = nil, previewText: String? = nil, replyTo: String? = nil, subjectLine: String? = nil, templateId: Int? = nil, title: String? = nil) {
            self.authenticate = authenticate
            self.autoFbPost = autoFbPost
            self.autoFooter = autoFooter
            self.autoTweet = autoTweet
            self.dragAndDrop = dragAndDrop
            self.fbComments = fbComments
            self.fromName = fromName
            self.inlineCss = inlineCss
            self.previewText = previewText
            self.replyTo = replyTo
            self.subjectLine = subjectLine
            self.templateId = templateId
            self.title = title
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            authenticate = try container.decodeIfPresent("authenticate")
            autoFbPost = try container.decodeArrayIfPresent("auto_fb_post")
            autoFooter = try container.decodeIfPresent("auto_footer")
            autoTweet = try container.decodeIfPresent("auto_tweet")
            dragAndDrop = try container.decodeIfPresent("drag_and_drop")
            fbComments = try container.decodeIfPresent("fb_comments")
            fromName = try container.decodeIfPresent("from_name")
            inlineCss = try container.decodeIfPresent("inline_css")
            previewText = try container.decodeIfPresent("preview_text")
            replyTo = try container.decodeIfPresent("reply_to")
            subjectLine = try container.decodeIfPresent("subject_line")
            templateId = try container.decodeIfPresent("template_id")
            title = try container.decodeIfPresent("title")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(authenticate, forKey: "authenticate")
            try container.encodeIfPresent(autoFbPost, forKey: "auto_fb_post")
            try container.encodeIfPresent(autoFooter, forKey: "auto_footer")
            try container.encodeIfPresent(autoTweet, forKey: "auto_tweet")
            try container.encodeIfPresent(dragAndDrop, forKey: "drag_and_drop")
            try container.encodeIfPresent(fbComments, forKey: "fb_comments")
            try container.encodeIfPresent(fromName, forKey: "from_name")
            try container.encodeIfPresent(inlineCss, forKey: "inline_css")
            try container.encodeIfPresent(previewText, forKey: "preview_text")
            try container.encodeIfPresent(replyTo, forKey: "reply_to")
            try container.encodeIfPresent(subjectLine, forKey: "subject_line")
            try container.encodeIfPresent(templateId, forKey: "template_id")
            try container.encodeIfPresent(title, forKey: "title")
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

          /** The custom slug for [Click Tale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes). */
          public var clicktale: String?

          /** Whether to enable e-commerce tracking. */
          public var ecomm360: Bool?

          /** Deprecated */
          public var goalTracking: Bool?

          /** The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes). */
          public var googleAnalytics: String?

          /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to `true`. */
          public var htmlClicks: Bool?

          /** Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`. */
          public var opens: Bool?

          /** Deprecated */
          public var salesforce: Salesforce?

          /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to `true`. */
          public var textClicks: Bool?

          /** Deprecated */
          public struct Capsule: Model {
            /** Update contact notes for a campaign based on a subscriber's email address. */
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

        public init(links: [Links]? = nil, archiveURL: String? = nil, contentType: String? = nil, createTime: Date? = nil, delay: Delay? = nil, emailsSent: Int? = nil, hasLogoMergeTag: Bool? = nil, id: String? = nil, needsBlockRefresh: Bool? = nil, position: Int? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, sendTime: Date? = nil, settings: Settings? = nil, socialCard: SocialCard? = nil, startTime: Date? = nil, status: Status? = nil, tracking: Tracking? = nil, triggerSettings: TriggerSettings? = nil, webId: Int? = nil, workflowId: String? = nil) {
          self.links = links
          self.archiveURL = archiveURL
          self.contentType = contentType
          self.createTime = .init(date: createTime)
          self.delay = delay
          self.emailsSent = emailsSent
          self.hasLogoMergeTag = hasLogoMergeTag
          self.id = id
          self.needsBlockRefresh = needsBlockRefresh
          self.position = position
          self.recipients = recipients
          self.reportSummary = reportSummary
          self.sendTime = .init(date: sendTime)
          self.settings = settings
          self.socialCard = socialCard
          self.startTime = .init(date: startTime)
          self.status = status
          self.tracking = tracking
          self.triggerSettings = triggerSettings
          self.webId = webId
          self.workflowId = workflowId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          archiveURL = try container.decodeIfPresent("archive_url")
          contentType = try container.decodeIfPresent("content_type")
          createTime = try container.decodeIfPresent("create_time")
          delay = try container.decodeIfPresent("delay")
          emailsSent = try container.decodeIfPresent("emails_sent")
          hasLogoMergeTag = try container.decodeIfPresent("has_logo_merge_tag")
          id = try container.decodeIfPresent("id")
          needsBlockRefresh = try container.decodeIfPresent("needs_block_refresh")
          position = try container.decodeIfPresent("position")
          recipients = try container.decodeIfPresent("recipients")
          reportSummary = try container.decodeIfPresent("report_summary")
          sendTime = try container.decodeIfPresent("send_time")
          settings = try container.decodeIfPresent("settings")
          socialCard = try container.decodeIfPresent("social_card")
          startTime = try container.decodeIfPresent("start_time")
          status = try container.decodeIfPresent("status")
          tracking = try container.decodeIfPresent("tracking")
          triggerSettings = try container.decodeIfPresent("trigger_settings")
          webId = try container.decodeIfPresent("web_id")
          workflowId = try container.decodeIfPresent("workflow_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(archiveURL, forKey: "archive_url")
          try container.encodeIfPresent(contentType, forKey: "content_type")
          try container.encodeIfPresent(createTime, forKey: "create_time")
          try container.encodeIfPresent(delay, forKey: "delay")
          try container.encodeIfPresent(emailsSent, forKey: "emails_sent")
          try container.encodeIfPresent(hasLogoMergeTag, forKey: "has_logo_merge_tag")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(needsBlockRefresh, forKey: "needs_block_refresh")
          try container.encodeIfPresent(position, forKey: "position")
          try container.encodeIfPresent(recipients, forKey: "recipients")
          try container.encodeIfPresent(reportSummary, forKey: "report_summary")
          try container.encodeIfPresent(sendTime, forKey: "send_time")
          try container.encodeIfPresent(settings, forKey: "settings")
          try container.encodeIfPresent(socialCard, forKey: "social_card")
          try container.encodeIfPresent(startTime, forKey: "start_time")
          try container.encodeIfPresent(status, forKey: "status")
          try container.encodeIfPresent(tracking, forKey: "tracking")
          try container.encodeIfPresent(triggerSettings, forKey: "trigger_settings")
          try container.encodeIfPresent(webId, forKey: "web_id")
          try container.encodeIfPresent(workflowId, forKey: "workflow_id")
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
