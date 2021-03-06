import Foundation
import Prch

public extension Lists {
  /**
   List members in segment

   Get information about members in a saved segment.
   */
  enum GetListsIdSegmentsIdMembers {
    public static let service = Service<Response>(id: "getListsIdSegmentsIdMembers", tag: "lists", method: "GET", path: "/lists/{list_id}/segments/{segment_id}/members", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
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

        /** The unique id for the segment. */
        public var segmentId: String

        /** Include cleaned members in response */
        public var includeCleaned: Bool?

        /** Include transactional members in response */
        public var includeTransactional: Bool?

        /** Include unsubscribed members in response */
        public var includeUnsubscribed: Bool?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.listId = listId
          self.segmentId = segmentId
          self.includeCleaned = includeCleaned
          self.includeTransactional = includeTransactional
          self.includeUnsubscribed = includeUnsubscribed
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdSegmentsIdMembers.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, listId: String, segmentId: String, includeCleaned: Bool? = nil, includeTransactional: Bool? = nil, includeUnsubscribed: Bool? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, listId: listId, segmentId: segmentId, includeCleaned: includeCleaned, includeTransactional: includeTransactional, includeUnsubscribed: includeUnsubscribed)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(options.segmentId)")
      }

      public var queryParameters: [String: Any] {
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
        if let includeCleaned = options.includeCleaned {
          params["include_cleaned"] = includeCleaned
        }
        if let includeTransactional = options.includeTransactional {
          params["include_transactional"] = includeTransactional
        }
        if let includeUnsubscribed = options.includeUnsubscribed {
          params["include_unsubscribed"] = includeUnsubscribed
        }
        return params
      }
    }

    public enum Response: Prch.Response {
      public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case let .defaultResponse(statusCode: statusCode, response):
          return .defaultResponse(statusCode, response)

        case let .status200(response):
          return .success(response)
        }
      }

      public typealias APIType = Mailchimp.API
      /** View members in a specific list segment. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

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
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** Email address for a subscriber. */
          public var emailAddress: String?

          /** The list member's email client. */
          public var emailClient: String?

          /** Type of email this member asked to get ('html' or 'text'). */
          public var emailType: String?

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
          public var lastChanged: Date?

          /** The most recent Note added about this member. */
          public var lastNote: LastNote?

          /** The list id. */
          public var listId: String?

          /** Subscriber location information. */
          public var location: Location?

          /** Star rating for this member, between 1 and 5. */
          public var memberRating: Int?

          /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
          public var mergeFields: [String: AnyCodable]?

          /** Open and click rates for this subscriber. */
          public var stats: Stats?

          /** Subscriber's current status. */
          public var status: Status?

          /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
          public var timestampOpt: Date?

          /** The date and time the subscriber signed up for the list in ISO 8601 format. */
          public var timestampSignup: Date?

          /** An identifier for the address across all of Mailchimp. */
          public var uniqueEmailId: String?

          /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
          public var vip: Bool?

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
            public var createdAt: Date?

            /** The author of the note. */
            public var createdBy: String?

            /** The content of the note. */
            public var note: String?

            /** The note id. */
            public var noteId: Int?

            public init(createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
              self.createdAt = createdAt
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

          /** Open and click rates for this subscriber. */
          public struct Stats: Model {
            /** A subscriber's average clickthrough rate. */
            public var avgClickRate: Double?

            /** A subscriber's average open rate. */
            public var avgOpenRate: Double?

            public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil) {
              self.avgClickRate = avgClickRate
              self.avgOpenRate = avgOpenRate
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              avgClickRate = try container.decodeIfPresent("avg_click_rate")
              avgOpenRate = try container.decodeIfPresent("avg_open_rate")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(avgClickRate, forKey: "avg_click_rate")
              try container.encodeIfPresent(avgOpenRate, forKey: "avg_open_rate")
            }
          }

          public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, memberRating: Int? = nil, mergeFields: [String: AnyCodable]? = nil, stats: Stats? = nil, status: Status? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, vip: Bool? = nil) {
            self.links = links
            self.emailAddress = emailAddress
            self.emailClient = emailClient
            self.emailType = emailType
            self.id = id
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.lastChanged = lastChanged
            self.lastNote = lastNote
            self.listId = listId
            self.location = location
            self.memberRating = memberRating
            self.mergeFields = mergeFields
            self.stats = stats
            self.status = status
            self.timestampOpt = timestampOpt
            self.timestampSignup = timestampSignup
            self.uniqueEmailId = uniqueEmailId
            self.vip = vip
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            emailAddress = try container.decodeIfPresent("email_address")
            emailClient = try container.decodeIfPresent("email_client")
            emailType = try container.decodeIfPresent("email_type")
            id = try container.decodeIfPresent("id")
            interests = try container.decodeIfPresent("interests")
            ipOpt = try container.decodeIfPresent("ip_opt")
            ipSignup = try container.decodeIfPresent("ip_signup")
            language = try container.decodeIfPresent("language")
            lastChanged = try container.decodeIfPresent("last_changed")
            lastNote = try container.decodeIfPresent("last_note")
            listId = try container.decodeIfPresent("list_id")
            location = try container.decodeIfPresent("location")
            memberRating = try container.decodeIfPresent("member_rating")
            mergeFields = try container.decodeAnyCodableDictionary("merge_fields")
            stats = try container.decodeIfPresent("stats")
            status = try container.decodeIfPresent("status")
            timestampOpt = try container.decodeIfPresent("timestamp_opt")
            timestampSignup = try container.decodeIfPresent("timestamp_signup")
            uniqueEmailId = try container.decodeIfPresent("unique_email_id")
            vip = try container.decodeIfPresent("vip")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(emailClient, forKey: "email_client")
            try container.encodeIfPresent(emailType, forKey: "email_type")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(interests, forKey: "interests")
            try container.encodeIfPresent(ipOpt, forKey: "ip_opt")
            try container.encodeIfPresent(ipSignup, forKey: "ip_signup")
            try container.encodeIfPresent(language, forKey: "language")
            try container.encodeIfPresent(lastChanged, forKey: "last_changed")
            try container.encodeIfPresent(lastNote, forKey: "last_note")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(location, forKey: "location")
            try container.encodeIfPresent(memberRating, forKey: "member_rating")
            try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
            try container.encodeIfPresent(stats, forKey: "stats")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
            try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
            try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
            try container.encodeIfPresent(vip, forKey: "vip")
          }
        }

        public init(links: [Links]? = nil, members: [Members]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.members = members
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          members = try container.decodeArrayIfPresent("members")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(members, forKey: "members")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }
    }
  }
}
