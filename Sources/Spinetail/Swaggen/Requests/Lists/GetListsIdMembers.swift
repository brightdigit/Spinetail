import Foundation
import Prch


public extension Lists {
  /**
   List members info

   Get information about members in a specific Mailchimp list.
   */
  enum GetListsIdMembers {
    public static let service = APIService<Response>(id: "getListsIdMembers", tag: "lists", method: "GET", path: "/lists/{list_id}/members", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    /** The subscriber's status. */
    public enum Status: String, Codable, Equatable, CaseIterable {
      case subscribed
      case unsubscribed
      case cleaned
      case pending
      case transactional
      case archived
    }

    /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied. */
    public enum InterestMatch: String, Codable, Equatable, CaseIterable {
      case any
      case all
      case none
    }

    /** Returns files sorted by the specified field. */
    public enum SortField: String, Codable, Equatable, CaseIterable {
      case timestampOpt = "timestamp_opt"
      case timestampSignup = "timestamp_signup"
      case lastChanged = "last_changed"
    }

    /** Determines the order direction for sorted results. */
    public enum SortDir: String, Codable, Equatable, CaseIterable {
      case asc = "ASC"
      case desc = "DESC"
    }

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

        /** The unique ID for the list. */
        public var listId: String

        /** The email type. */
        public var emailType: String?

        /** The subscriber's status. */
        public var status: Status?

        /** Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var sinceTimestampOpt: String?

        /** Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var beforeTimestampOpt: String?

        /** Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var sinceLastChanged: String?

        /** Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00. */
        public var beforeLastChanged: String?

        /** A unique identifier for the email address across all Mailchimp lists. */
        public var uniqueEmailId: String?

        /** A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members. */
        public var vipOnly: Bool?

        /** The unique id for the interest category. */
        public var interestCategoryId: String?

        /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories. */
        public var interestIds: String?

        /** Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied. */
        public var interestMatch: InterestMatch?

        /** Returns files sorted by the specified field. */
        public var sortField: SortField?

        /** Determines the order direction for sorted results. */
        public var sortDir: SortDir?

        /** Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter. */
        public var sinceLastCampaign: Bool?

        /** Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error. */
        public var unsubscribedSince: String?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, emailType: String? = nil, status: Status? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.listId = listId
          self.emailType = emailType
          self.status = status
          self.sinceTimestampOpt = sinceTimestampOpt
          self.beforeTimestampOpt = beforeTimestampOpt
          self.sinceLastChanged = sinceLastChanged
          self.beforeLastChanged = beforeLastChanged
          self.uniqueEmailId = uniqueEmailId
          self.vipOnly = vipOnly
          self.interestCategoryId = interestCategoryId
          self.interestIds = interestIds
          self.interestMatch = interestMatch
          self.sortField = sortField
          self.sortDir = sortDir
          self.sinceLastCampaign = sinceLastCampaign
          self.unsubscribedSince = unsubscribedSince
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetListsIdMembers.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, emailType: String? = nil, status: Status? = nil, sinceTimestampOpt: String? = nil, beforeTimestampOpt: String? = nil, sinceLastChanged: String? = nil, beforeLastChanged: String? = nil, uniqueEmailId: String? = nil, vipOnly: Bool? = nil, interestCategoryId: String? = nil, interestIds: String? = nil, interestMatch: InterestMatch? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil, sinceLastCampaign: Bool? = nil, unsubscribedSince: String? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, listId: listId, emailType: emailType, status: status, sinceTimestampOpt: sinceTimestampOpt, beforeTimestampOpt: beforeTimestampOpt, sinceLastChanged: sinceLastChanged, beforeLastChanged: beforeLastChanged, uniqueEmailId: uniqueEmailId, vipOnly: vipOnly, interestCategoryId: interestCategoryId, interestIds: interestIds, interestMatch: interestMatch, sortField: sortField, sortDir: sortDir, sinceLastCampaign: sinceLastCampaign, unsubscribedSince: unsubscribedSince)
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
        if let count = options.count {
          params["count"] = count
        }
        if let offset = options.offset {
          params["offset"] = offset
        }
        if let emailType = options.emailType {
          params["email_type"] = emailType
        }
        if let status = options.status?.encode() {
          params["status"] = status
        }
        if let sinceTimestampOpt = options.sinceTimestampOpt {
          params["since_timestamp_opt"] = sinceTimestampOpt
        }
        if let beforeTimestampOpt = options.beforeTimestampOpt {
          params["before_timestamp_opt"] = beforeTimestampOpt
        }
        if let sinceLastChanged = options.sinceLastChanged {
          params["since_last_changed"] = sinceLastChanged
        }
        if let beforeLastChanged = options.beforeLastChanged {
          params["before_last_changed"] = beforeLastChanged
        }
        if let uniqueEmailId = options.uniqueEmailId {
          params["unique_email_id"] = uniqueEmailId
        }
        if let vipOnly = options.vipOnly {
          params["vip_only"] = vipOnly
        }
        if let interestCategoryId = options.interestCategoryId {
          params["interest_category_id"] = interestCategoryId
        }
        if let interestIds = options.interestIds {
          params["interest_ids"] = interestIds
        }
        if let interestMatch = options.interestMatch?.encode() {
          params["interest_match"] = interestMatch
        }
        if let sortField = options.sortField?.encode() {
          params["sort_field"] = sortField
        }
        if let sortDir = options.sortDir?.encode() {
          params["sort_dir"] = sortDir
        }
        if let sinceLastCampaign = options.sinceLastCampaign {
          params["since_last_campaign"] = sinceLastCampaign
        }
        if let unsubscribedSince = options.unsubscribedSince {
          params["unsubscribed_since"] = unsubscribedSince
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The list id. */
        public var listId: String?

        /** An array of objects, each representing a specific list member. */
        public var members: [Members]?

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

        /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
        public struct Members: Model {
          /** Subscriber's current status. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case subscribed
            case unsubscribed
            case cleaned
            case pending
            case transactional
            case archived
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** Email address for a subscriber. */
          public var emailAddress: String?

          /** The list member's email client. */
          public var emailClient: String?

          /** Type of email this member asked to get ('html' or 'text'). */
          public var emailType: String?

          /** The contact's full name. */
          public var fullName: String?

          /** The MD5 hash of the lowercase version of the list member's email address. */
          public var id: String?

          /** The key of this object's properties is the ID of the interest in question. */
          public var interests: [String: Bool]?

          /** The IP address the subscriber used to confirm their opt-in status. */
          public var ipOpt: String?

          /** IP address the subscriber signed up from. */
          public var ipSignup: String?

          /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
          public var language: String?

          /** The date and time the member's info was last changed in ISO 8601 format. */
          public var lastChanged: DateTime

          /** The most recent Note added about this member. */
          public var lastNote: LastNote?

          /** The list id. */
          public var listId: String?

          /** Subscriber location information. */
          public var location: Location?

          /** The marketing permissions for the subscriber. */
          public var marketingPermissions: [MarketingPermissions]?

          /** Star rating for this member, between 1 and 5. */
          public var memberRating: Int?

          /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
          public var mergeFields: CodableAny?

          /** The source from which the subscriber was added to this list. */
          public var source: String?

          /** Open and click rates for this subscriber. */
          public var stats: Stats?

          /** Subscriber's current status. */
          public var status: Status?

          /** Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/). */
          public var tags: [Tags]?

          /** The number of tags applied to this member. */
          public var tagsCount: Int?

          /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
          public var timestampOpt: JSONOptionalDate

          /** The date and time the subscriber signed up for the list in ISO 8601 format. */
          public var timestampSignup: JSONOptionalDate

          /** An identifier for the address across all of Mailchimp. */
          public var uniqueEmailId: String?

          /** A subscriber's reason for unsubscribing. */
          public var unsubscribeReason: String?

          /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
          public var vip: Bool?

          /** The ID used in the Mailchimp web application. View this member in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/view?id={web_id}`. */
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

          /** The most recent Note added about this member. */
          public struct LastNote: Model {
            /** The date and time the note was created in ISO 8601 format. */
            public var createdAt: DateTime

            /** The author of the note. */
            public var createdBy: String?

            /** The content of the note. */
            public var note: String?

            /** The note id. */
            public var noteId: Int?

            public init(createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
              self.createdAt = .init(date: createdAt)
              self.createdBy = createdBy
              self.note = note
              self.noteId = noteId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              createdAt = try container.decodeIfPresent("created_at")
              createdBy = try container.decodeIfPresent("created_by")
              note = try container.decodeIfPresent("note")
              noteId = try container.decodeIfPresent("note_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(createdAt, forKey: "created_at")
              try container.encodeIfPresent(createdBy, forKey: "created_by")
              try container.encodeIfPresent(note, forKey: "note")
              try container.encodeIfPresent(noteId, forKey: "note_id")
            }
          }

          /** Subscriber location information. */
          public struct Location: Model {
            /** The unique code for the location country. */
            public var countryCode: String?

            /** The offset for timezones where daylight saving time is observed. */
            public var dstoff: Int?

            /** The time difference in hours from GMT. */
            public var gmtoff: Int?

            /** The location latitude. */
            public var latitude: Double?

            /** The location longitude. */
            public var longitude: Double?

            /** The timezone for the location. */
            public var timezone: String?

            public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, timezone: String? = nil) {
              self.countryCode = countryCode
              self.dstoff = dstoff
              self.gmtoff = gmtoff
              self.latitude = latitude
              self.longitude = longitude
              self.timezone = timezone
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              countryCode = try container.decodeIfPresent("country_code")
              dstoff = try container.decodeIfPresent("dstoff")
              gmtoff = try container.decodeIfPresent("gmtoff")
              latitude = try container.decodeIfPresent("latitude")
              longitude = try container.decodeIfPresent("longitude")
              timezone = try container.decodeIfPresent("timezone")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(countryCode, forKey: "country_code")
              try container.encodeIfPresent(dstoff, forKey: "dstoff")
              try container.encodeIfPresent(gmtoff, forKey: "gmtoff")
              try container.encodeIfPresent(latitude, forKey: "latitude")
              try container.encodeIfPresent(longitude, forKey: "longitude")
              try container.encodeIfPresent(timezone, forKey: "timezone")
            }
          }

          /** A single marketing permission a subscriber has either opted-in to or opted-out of. */
          public struct MarketingPermissions: Model {
            /** If the subscriber has opted-in to the marketing permission. */
            public var enabled: Bool?

            /** The id for the marketing permission on the list */
            public var marketingPermissionId: String?

            /** The text of the marketing permission. */
            public var text: String?

            public init(enabled: Bool? = nil, marketingPermissionId: String? = nil, text: String? = nil) {
              self.enabled = enabled
              self.marketingPermissionId = marketingPermissionId
              self.text = text
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              enabled = try container.decodeIfPresent("enabled")
              marketingPermissionId = try container.decodeIfPresent("marketing_permission_id")
              text = try container.decodeIfPresent("text")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(enabled, forKey: "enabled")
              try container.encodeIfPresent(marketingPermissionId, forKey: "marketing_permission_id")
              try container.encodeIfPresent(text, forKey: "text")
            }
          }

          /** Open and click rates for this subscriber. */
          public struct Stats: Model {
            /** A subscriber's average clickthrough rate. */
            public var avgClickRate: Double?

            /** A subscriber's average open rate. */
            public var avgOpenRate: Double?

            /** Ecommerce stats for the list member if the list is attached to a store. */
            public var ecommerceData: EcommerceData?

            /** Ecommerce stats for the list member if the list is attached to a store. */
            public struct EcommerceData: Model {
              /** The three-letter ISO 4217 code for the currency that the store accepts. */
              public var currencyCode: String?

              /** The total number of orders placed by the list member. */
              public var numberOfOrders: Double?

              /** The total revenue the list member has brought in. */
              public var totalRevenue: Double?

              public init(currencyCode: String? = nil, numberOfOrders: Double? = nil, totalRevenue: Double? = nil) {
                self.currencyCode = currencyCode
                self.numberOfOrders = numberOfOrders
                self.totalRevenue = totalRevenue
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                currencyCode = try container.decodeIfPresent("currency_code")
                numberOfOrders = try container.decodeIfPresent("number_of_orders")
                totalRevenue = try container.decodeIfPresent("total_revenue")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(currencyCode, forKey: "currency_code")
                try container.encodeIfPresent(numberOfOrders, forKey: "number_of_orders")
                try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
              }
            }

            public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil, ecommerceData: EcommerceData? = nil) {
              self.avgClickRate = avgClickRate
              self.avgOpenRate = avgOpenRate
              self.ecommerceData = ecommerceData
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              avgClickRate = try container.decodeIfPresent("avg_click_rate")
              avgOpenRate = try container.decodeIfPresent("avg_open_rate")
              ecommerceData = try container.decodeIfPresent("ecommerce_data")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(avgClickRate, forKey: "avg_click_rate")
              try container.encodeIfPresent(avgOpenRate, forKey: "avg_open_rate")
              try container.encodeIfPresent(ecommerceData, forKey: "ecommerce_data")
            }
          }

          /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
          public struct Tags: Model {
            /** The tag id. */
            public var id: Int?

            /** The name of the tag */
            public var name: String?

            public init(id: Int? = nil, name: String? = nil) {
              self.id = id
              self.name = name
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              id = try container.decodeIfPresent("id")
              name = try container.decodeIfPresent("name")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(name, forKey: "name")
            }
          }

          public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, fullName: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, marketingPermissions: [MarketingPermissions]? = nil, memberRating: Int? = nil, mergeFields: CodableAny? = nil, source: String? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, unsubscribeReason: String? = nil, vip: Bool? = nil, webId: Int? = nil) {
            self.links = links
            self.emailAddress = emailAddress
            self.emailClient = emailClient
            self.emailType = emailType
            self.fullName = fullName
            self.id = id
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.lastChanged = .init(date: lastChanged)
            self.lastNote = lastNote
            self.listId = listId
            self.location = location
            self.marketingPermissions = marketingPermissions
            self.memberRating = memberRating
            self.mergeFields = mergeFields
            self.source = source
            self.stats = stats
            self.status = status
            self.tags = tags
            self.tagsCount = tagsCount
            self.timestampOpt = JSONOptionalDate(date: timestampOpt)
            self.timestampSignup = JSONOptionalDate(date: timestampSignup)
            self.uniqueEmailId = uniqueEmailId
            self.unsubscribeReason = unsubscribeReason
            self.vip = vip
            self.webId = webId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            emailAddress = try container.decodeIfPresent("email_address")
            emailClient = try container.decodeIfPresent("email_client")
            emailType = try container.decodeIfPresent("email_type")
            fullName = try container.decodeIfPresent("full_name")
            id = try container.decodeIfPresent("id")
            interests = try container.decodeIfPresent("interests")
            ipOpt = try container.decodeIfPresent("ip_opt")
            ipSignup = try container.decodeIfPresent("ip_signup")
            language = try container.decodeIfPresent("language")
            lastChanged = try container.decodeIfPresent("last_changed")
            lastNote = try container.decodeIfPresent("last_note")
            listId = try container.decodeIfPresent("list_id")
            location = try container.decodeIfPresent("location")
            marketingPermissions = try container.decodeArrayIfPresent("marketing_permissions")
            memberRating = try container.decodeIfPresent("member_rating")
            mergeFields = try container.decodeIfPresent("merge_fields")
            source = try container.decodeIfPresent("source")
            stats = try container.decodeIfPresent("stats")
            status = try container.decodeIfPresent("status")
            tags = try container.decodeArrayIfPresent("tags")
            tagsCount = try container.decodeIfPresent("tags_count")
            timestampOpt = try container.decodeIfPresent("timestamp_opt") ?? .none
            timestampSignup = try container.decodeIfPresent("timestamp_signup") ?? .none
            uniqueEmailId = try container.decodeIfPresent("unique_email_id")
            unsubscribeReason = try container.decodeIfPresent("unsubscribe_reason")
            vip = try container.decodeIfPresent("vip")
            webId = try container.decodeIfPresent("web_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(emailClient, forKey: "email_client")
            try container.encodeIfPresent(emailType, forKey: "email_type")
            try container.encodeIfPresent(fullName, forKey: "full_name")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(interests, forKey: "interests")
            try container.encodeIfPresent(ipOpt, forKey: "ip_opt")
            try container.encodeIfPresent(ipSignup, forKey: "ip_signup")
            try container.encodeIfPresent(language, forKey: "language")
            try container.encodeIfPresent(lastChanged, forKey: "last_changed")
            try container.encodeIfPresent(lastNote, forKey: "last_note")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(location, forKey: "location")
            try container.encodeIfPresent(marketingPermissions, forKey: "marketing_permissions")
            try container.encodeIfPresent(memberRating, forKey: "member_rating")
            try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
            try container.encodeIfPresent(source, forKey: "source")
            try container.encodeIfPresent(stats, forKey: "stats")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(tags, forKey: "tags")
            try container.encodeIfPresent(tagsCount, forKey: "tags_count")
            try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
            try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
            try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
            try container.encodeIfPresent(unsubscribeReason, forKey: "unsubscribe_reason")
            try container.encodeIfPresent(vip, forKey: "vip")
            try container.encodeIfPresent(webId, forKey: "web_id")
          }
        }

        public init(links: [Links]? = nil, listId: String? = nil, members: [Members]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.listId = listId
          self.members = members
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          listId = try container.decodeIfPresent("list_id")
          members = try container.decodeArrayIfPresent("members")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(members, forKey: "members")
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
