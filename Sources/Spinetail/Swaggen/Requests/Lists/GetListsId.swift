import Foundation
import Prch

public extension Lists {
  /**
   Get list info

   Get information about a specific list in your Mailchimp account. Results include list members who have signed up but haven't confirmed their subscription yet and unsubscribed or cleaned.
   */
  enum GetListsId {
    public static let service = APIService<Response>(id: "getListsId", tag: "lists", method: "GET", path: "/lists/{list_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique ID for the list. */
        public var listId: String

        /** Return the total_contacts field in the stats response, which contains an approximate count of all contacts in any state. */
        public var includeTotalContacts: Bool?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, includeTotalContacts: Bool? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.listId = listId
          self.includeTotalContacts = includeTotalContacts
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetListsId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, listId: String, includeTotalContacts: Bool? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, listId: listId, includeTotalContacts: includeTotalContacts)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.options.listId)")
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        if let includeTotalContacts = options.includeTotalContacts {
          params["include_total_contacts"] = includeTotalContacts
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific list. */
      public struct Status200: Model {
        /** Legacy - visibility settings are no longer used */
        public enum Visibility: String, Codable, Equatable, CaseIterable {
          case pub
          case prv
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The list's [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address. */
        public var beamerAddress: String?

        /** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */
        public var campaignDefaults: CampaignDefaults?

        /** [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws. */
        public var contact: Contact?

        /** The date and time that this list was created in ISO 8601 format. */
        public var dateCreated: DateTime

        /** Whether or not to require the subscriber to confirm subscription via email. */
        public var doubleOptin: Bool?

        /** Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup. */
        public var emailTypeOption: Bool?

        /** Whether or not this list has a welcome automation connected. Welcome Automations: welcomeSeries, singleWelcome, emailFollowup. */
        public var hasWelcome: Bool?

        /** A string that uniquely identifies this list. */
        public var id: String?

        /** An auto-generated activity score for the list (0-5). */
        public var listRating: Int?

        /** Whether or not the list has marketing permissions (eg. GDPR) enabled. */
        public var marketingPermissions: Bool?

        /** Any list-specific modules installed for this list. */
        public var modules: [String]?

        /** The name of the list. */
        public var name: String?

        /** The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
        public var notifyOnSubscribe: String?

        /** The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
        public var notifyOnUnsubscribe: String?

        /** The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list. */
        public var permissionReminder: String?

        /** Stats for the list. Many of these are cached for at least five minutes. */
        public var stats: Stats?

        /** The full version of this list's subscribe form (host will vary). */
        public var subscribeURLLong: String?

        /** Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list's subscribe form. */
        public var subscribeURLShort: String?

        /** Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default. */
        public var useArchiveBar: Bool?

        /** Legacy - visibility settings are no longer used */
        public var visibility: Visibility?

        /** The ID used in the Mailchimp web application. View this list in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/?id={web_id}`. */
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

        /** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */
        public struct CampaignDefaults: Model {
          /** The default from email for campaigns sent to this list. */
          public var fromEmail: String?

          /** The default from name for campaigns sent to this list. */
          public var fromName: String?

          /** The default language for this lists's forms. */
          public var language: String?

          /** The default subject line for campaigns sent to this list. */
          public var subject: String?

          public init(fromEmail: String? = nil, fromName: String? = nil, language: String? = nil, subject: String? = nil) {
            self.fromEmail = fromEmail
            self.fromName = fromName
            self.language = language
            self.subject = subject
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            fromEmail = try container.decodeIfPresent("from_email")
            fromName = try container.decodeIfPresent("from_name")
            language = try container.decodeIfPresent("language")
            subject = try container.decodeIfPresent("subject")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(fromEmail, forKey: "from_email")
            try container.encodeIfPresent(fromName, forKey: "from_name")
            try container.encodeIfPresent(language, forKey: "language")
            try container.encodeIfPresent(subject, forKey: "subject")
          }
        }

        /** [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws. */
        public struct Contact: Model {
          /** The street address for the list contact. */
          public var address1: String?

          /** The street address for the list contact. */
          public var address2: String?

          /** The city for the list contact. */
          public var city: String?

          /** The company name for the list. */
          public var company: String?

          /** A two-character ISO3166 country code. Defaults to US if invalid. */
          public var country: String?

          /** The phone number for the list contact. */
          public var phone: String?

          /** The state for the list contact. */
          public var state: String?

          /** The postal or zip code for the list contact. */
          public var zip: String?

          public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, phone: String? = nil, state: String? = nil, zip: String? = nil) {
            self.address1 = address1
            self.address2 = address2
            self.city = city
            self.company = company
            self.country = country
            self.phone = phone
            self.state = state
            self.zip = zip
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            address1 = try container.decodeIfPresent("address1")
            address2 = try container.decodeIfPresent("address2")
            city = try container.decodeIfPresent("city")
            company = try container.decodeIfPresent("company")
            country = try container.decodeIfPresent("country")
            phone = try container.decodeIfPresent("phone")
            state = try container.decodeIfPresent("state")
            zip = try container.decodeIfPresent("zip")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(address1, forKey: "address1")
            try container.encodeIfPresent(address2, forKey: "address2")
            try container.encodeIfPresent(city, forKey: "city")
            try container.encodeIfPresent(company, forKey: "company")
            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(phone, forKey: "phone")
            try container.encodeIfPresent(state, forKey: "state")
            try container.encodeIfPresent(zip, forKey: "zip")
          }
        }

        /** Stats for the list. Many of these are cached for at least five minutes. */
        public struct Stats: Model {
          /** The average number of subscriptions per month for the list (not returned if we haven't calculated it yet). */
          public var avgSubRate: Double?

          /** The average number of unsubscriptions per month for the list (not returned if we haven't calculated it yet). */
          public var avgUnsubRate: Double?

          /** The number of campaigns in any status that use this list. */
          public var campaignCount: Int?

          /** The date and time the last campaign was sent to this list in ISO 8601 format. This is updated when a campaign is sent to 10 or more recipients. */
          public var campaignLastSent: DateTime

          /** The number of members cleaned from the list. */
          public var cleanedCount: Int?

          /** The number of members cleaned from the list since the last campaign was sent. */
          public var cleanedCountSinceSend: Int?

          /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet). */
          public var clickRate: Double?

          /** The date and time of the last time someone subscribed to this list in ISO 8601 format. */
          public var lastSubDate: DateTime

          /** The date and time of the last time someone unsubscribed from this list in ISO 8601 format. */
          public var lastUnsubDate: DateTime

          /** The number of active members in the list. */
          public var memberCount: Int?

          /** The number of active members in the list since the last campaign was sent. */
          public var memberCountSinceSend: Int?

          /** The number of merge fields ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for this list (doesn't include EMAIL). */
          public var mergeFieldCount: Int?

          /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list (not returned if we haven't calculated it yet). */
          public var openRate: Double?

          /** The target number of subscriptions per month for the list to keep it growing (not returned if we haven't calculated it yet). */
          public var targetSubRate: Double?

          /** The number of contacts in the list, including subscribed, unsubscribed, pending, cleaned, deleted, transactional, and those that need to be reconfirmed. Requires include_total_contacts query parameter to be included. */
          public var totalContacts: Int?

          /** The number of members who have unsubscribed from the list. */
          public var unsubscribeCount: Int?

          /** The number of members who have unsubscribed since the last campaign was sent. */
          public var unsubscribeCountSinceSend: Int?

          public init(avgSubRate: Double? = nil, avgUnsubRate: Double? = nil, campaignCount: Int? = nil, campaignLastSent: Date? = nil, cleanedCount: Int? = nil, cleanedCountSinceSend: Int? = nil, clickRate: Double? = nil, lastSubDate: Date? = nil, lastUnsubDate: Date? = nil, memberCount: Int? = nil, memberCountSinceSend: Int? = nil, mergeFieldCount: Int? = nil, openRate: Double? = nil, targetSubRate: Double? = nil, totalContacts: Int? = nil, unsubscribeCount: Int? = nil, unsubscribeCountSinceSend: Int? = nil) {
            self.avgSubRate = avgSubRate
            self.avgUnsubRate = avgUnsubRate
            self.campaignCount = campaignCount
            self.campaignLastSent = .init(date: campaignLastSent)
            self.cleanedCount = cleanedCount
            self.cleanedCountSinceSend = cleanedCountSinceSend
            self.clickRate = clickRate
            self.lastSubDate = .init(date: lastSubDate)
            self.lastUnsubDate = .init(date: lastUnsubDate)
            self.memberCount = memberCount
            self.memberCountSinceSend = memberCountSinceSend
            self.mergeFieldCount = mergeFieldCount
            self.openRate = openRate
            self.targetSubRate = targetSubRate
            self.totalContacts = totalContacts
            self.unsubscribeCount = unsubscribeCount
            self.unsubscribeCountSinceSend = unsubscribeCountSinceSend
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            avgSubRate = try container.decodeIfPresent("avg_sub_rate")
            avgUnsubRate = try container.decodeIfPresent("avg_unsub_rate")
            campaignCount = try container.decodeIfPresent("campaign_count")
            campaignLastSent = try container.decodeIfPresent("campaign_last_sent")
            cleanedCount = try container.decodeIfPresent("cleaned_count")
            cleanedCountSinceSend = try container.decodeIfPresent("cleaned_count_since_send")
            clickRate = try container.decodeIfPresent("click_rate")
            lastSubDate = try container.decodeIfPresent("last_sub_date")
            lastUnsubDate = try container.decodeIfPresent("last_unsub_date")
            memberCount = try container.decodeIfPresent("member_count")
            memberCountSinceSend = try container.decodeIfPresent("member_count_since_send")
            mergeFieldCount = try container.decodeIfPresent("merge_field_count")
            openRate = try container.decodeIfPresent("open_rate")
            targetSubRate = try container.decodeIfPresent("target_sub_rate")
            totalContacts = try container.decodeIfPresent("total_contacts")
            unsubscribeCount = try container.decodeIfPresent("unsubscribe_count")
            unsubscribeCountSinceSend = try container.decodeIfPresent("unsubscribe_count_since_send")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(avgSubRate, forKey: "avg_sub_rate")
            try container.encodeIfPresent(avgUnsubRate, forKey: "avg_unsub_rate")
            try container.encodeIfPresent(campaignCount, forKey: "campaign_count")
            try container.encodeIfPresent(campaignLastSent, forKey: "campaign_last_sent")
            try container.encodeIfPresent(cleanedCount, forKey: "cleaned_count")
            try container.encodeIfPresent(cleanedCountSinceSend, forKey: "cleaned_count_since_send")
            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(lastSubDate, forKey: "last_sub_date")
            try container.encodeIfPresent(lastUnsubDate, forKey: "last_unsub_date")
            try container.encodeIfPresent(memberCount, forKey: "member_count")
            try container.encodeIfPresent(memberCountSinceSend, forKey: "member_count_since_send")
            try container.encodeIfPresent(mergeFieldCount, forKey: "merge_field_count")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
            try container.encodeIfPresent(targetSubRate, forKey: "target_sub_rate")
            try container.encodeIfPresent(totalContacts, forKey: "total_contacts")
            try container.encodeIfPresent(unsubscribeCount, forKey: "unsubscribe_count")
            try container.encodeIfPresent(unsubscribeCountSinceSend, forKey: "unsubscribe_count_since_send")
          }
        }

        public init(links: [Links]? = nil, beamerAddress: String? = nil, campaignDefaults: CampaignDefaults? = nil, contact: Contact? = nil, dateCreated: Date? = nil, doubleOptin: Bool? = nil, emailTypeOption: Bool? = nil, hasWelcome: Bool? = nil, id: String? = nil, listRating: Int? = nil, marketingPermissions: Bool? = nil, modules: [String]? = nil, name: String? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, permissionReminder: String? = nil, stats: Stats? = nil, subscribeURLLong: String? = nil, subscribeURLShort: String? = nil, useArchiveBar: Bool? = nil, visibility: Visibility? = nil, webId: Int? = nil) {
          self.links = links
          self.beamerAddress = beamerAddress
          self.campaignDefaults = campaignDefaults
          self.contact = contact
          self.dateCreated = .init(date: dateCreated)
          self.doubleOptin = doubleOptin
          self.emailTypeOption = emailTypeOption
          self.hasWelcome = hasWelcome
          self.id = id
          self.listRating = listRating
          self.marketingPermissions = marketingPermissions
          self.modules = modules
          self.name = name
          self.notifyOnSubscribe = notifyOnSubscribe
          self.notifyOnUnsubscribe = notifyOnUnsubscribe
          self.permissionReminder = permissionReminder
          self.stats = stats
          self.subscribeURLLong = subscribeURLLong
          self.subscribeURLShort = subscribeURLShort
          self.useArchiveBar = useArchiveBar
          self.visibility = visibility
          self.webId = webId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          beamerAddress = try container.decodeIfPresent("beamer_address")
          campaignDefaults = try container.decodeIfPresent("campaign_defaults")
          contact = try container.decodeIfPresent("contact")
          dateCreated = try container.decodeIfPresent("date_created")
          doubleOptin = try container.decodeIfPresent("double_optin")
          emailTypeOption = try container.decodeIfPresent("email_type_option")
          hasWelcome = try container.decodeIfPresent("has_welcome")
          id = try container.decodeIfPresent("id")
          listRating = try container.decodeIfPresent("list_rating")
          marketingPermissions = try container.decodeIfPresent("marketing_permissions")
          modules = try container.decodeArrayIfPresent("modules")
          name = try container.decodeIfPresent("name")
          notifyOnSubscribe = try container.decodeIfPresent("notify_on_subscribe")
          notifyOnUnsubscribe = try container.decodeIfPresent("notify_on_unsubscribe")
          permissionReminder = try container.decodeIfPresent("permission_reminder")
          stats = try container.decodeIfPresent("stats")
          subscribeURLLong = try container.decodeIfPresent("subscribe_url_long")
          subscribeURLShort = try container.decodeIfPresent("subscribe_url_short")
          useArchiveBar = try container.decodeIfPresent("use_archive_bar")
          visibility = try container.decodeIfPresent("visibility")
          webId = try container.decodeIfPresent("web_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(beamerAddress, forKey: "beamer_address")
          try container.encodeIfPresent(campaignDefaults, forKey: "campaign_defaults")
          try container.encodeIfPresent(contact, forKey: "contact")
          try container.encodeIfPresent(dateCreated, forKey: "date_created")
          try container.encodeIfPresent(doubleOptin, forKey: "double_optin")
          try container.encodeIfPresent(emailTypeOption, forKey: "email_type_option")
          try container.encodeIfPresent(hasWelcome, forKey: "has_welcome")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listRating, forKey: "list_rating")
          try container.encodeIfPresent(marketingPermissions, forKey: "marketing_permissions")
          try container.encodeIfPresent(modules, forKey: "modules")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(notifyOnSubscribe, forKey: "notify_on_subscribe")
          try container.encodeIfPresent(notifyOnUnsubscribe, forKey: "notify_on_unsubscribe")
          try container.encodeIfPresent(permissionReminder, forKey: "permission_reminder")
          try container.encodeIfPresent(stats, forKey: "stats")
          try container.encodeIfPresent(subscribeURLLong, forKey: "subscribe_url_long")
          try container.encodeIfPresent(subscribeURLShort, forKey: "subscribe_url_short")
          try container.encodeIfPresent(useArchiveBar, forKey: "use_archive_bar")
          try container.encodeIfPresent(visibility, forKey: "visibility")
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
