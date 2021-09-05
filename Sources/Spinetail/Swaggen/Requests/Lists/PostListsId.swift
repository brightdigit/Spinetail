import Foundation
import Prch

public extension Lists {
  /**
   Batch subscribe or unsubscribe

   Batch subscribe or unsubscribe list members.
   */
  enum PostListsId {
    public static let service = APIService<Response>(id: "postListsId", tag: "lists", method: "POST", path: "/lists/{list_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Members to subscribe to or unsubscribe from a list. */
      public struct Body: Model {
        /** An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call. */
        public var members: [Members]

        /** Whether this batch operation will change existing members' subscription status. */
        public var updateExisting: Bool?

        /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
        public struct Members: Model {
          /** Subscriber's current status. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case subscribed
            case unsubscribed
            case cleaned
            case pending
          }

          /** Email address for a subscriber. */
          public var emailAddress: String?

          /** Type of email this member asked to get ('html' or 'text'). */
          public var emailType: String?

          /** The key of this object's properties is the ID of the interest in question. */
          public var interests: [String: Bool]?

          /** The IP address the subscriber used to confirm their opt-in status. */
          public var ipOpt: String?

          /** IP address the subscriber signed up from. */
          public var ipSignup: String?

          /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
          public var language: String?

          /** Subscriber location information. */
          public var location: Location?

          /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
          public var mergeFields: [String: [String: CodableAny]]?

          /** Subscriber's current status. */
          public var status: Status?

          /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
          public var timestampOpt: DateTime

          /** The date and time the subscriber signed up for the list in ISO 8601 format. */
          public var timestampSignup: DateTime

          /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
          public var vip: Bool?

          /** Subscriber location information. */
          public struct Location: Model {
            /** The location latitude. */
            public var latitude: Double?

            /** The location longitude. */
            public var longitude: Double?

            public init(latitude: Double? = nil, longitude: Double? = nil) {
              self.latitude = latitude
              self.longitude = longitude
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              latitude = try container.decodeIfPresent("latitude")
              longitude = try container.decodeIfPresent("longitude")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(latitude, forKey: "latitude")
              try container.encodeIfPresent(longitude, forKey: "longitude")
            }
          }

          public init(emailAddress: String? = nil, emailType: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, location: Location? = nil, mergeFields: [String: [String: CodableAny]]? = nil, status: Status? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, vip: Bool? = nil) {
            self.emailAddress = emailAddress
            self.emailType = emailType
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.location = location
            self.mergeFields = mergeFields
            self.status = status
            self.timestampOpt = .init(date: timestampOpt)
            self.timestampSignup = .init(date: timestampSignup)
            self.vip = vip
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            emailAddress = try container.decodeIfPresent("email_address")
            emailType = try container.decodeIfPresent("email_type")
            interests = try container.decodeIfPresent("interests")
            ipOpt = try container.decodeIfPresent("ip_opt")
            ipSignup = try container.decodeIfPresent("ip_signup")
            language = try container.decodeIfPresent("language")
            location = try container.decodeIfPresent("location")
            mergeFields = try container.decodeAnyIfPresent("merge_fields")
            status = try container.decodeIfPresent("status")
            timestampOpt = try container.decodeIfPresent("timestamp_opt")
            timestampSignup = try container.decodeIfPresent("timestamp_signup")
            vip = try container.decodeIfPresent("vip")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(emailType, forKey: "email_type")
            try container.encodeIfPresent(interests, forKey: "interests")
            try container.encodeIfPresent(ipOpt, forKey: "ip_opt")
            try container.encodeIfPresent(ipSignup, forKey: "ip_signup")
            try container.encodeIfPresent(language, forKey: "language")
            try container.encodeIfPresent(location, forKey: "location")
            try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
            try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
            try container.encodeIfPresent(vip, forKey: "vip")
          }
        }

        public init(members: [Members], updateExisting: Bool? = nil) {
          self.members = members
          self.updateExisting = updateExisting
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          members = try container.decodeArray("members")
          updateExisting = try container.decodeIfPresent("update_existing")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(members, forKey: "members")
          try container.encodeIfPresent(updateExisting, forKey: "update_existing")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. */
        public var skipMergeValidation: Bool?

        /** If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. */
        public var skipDuplicateCheck: Bool?

        public init(listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil) {
          self.listId = listId
          self.skipMergeValidation = skipMergeValidation
          self.skipDuplicateCheck = skipDuplicateCheck
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostListsId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(listId: String, skipMergeValidation: Bool? = nil, skipDuplicateCheck: Bool? = nil, body: Body) {
        let options = Options(listId: listId, skipMergeValidation: skipMergeValidation, skipDuplicateCheck: skipDuplicateCheck)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.options.listId)")
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let skipMergeValidation = options.skipMergeValidation {
          params["skip_merge_validation"] = skipMergeValidation
        }
        if let skipDuplicateCheck = options.skipDuplicateCheck {
          params["skip_duplicate_check"] = skipDuplicateCheck
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Batch update list members. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The total number of items matching the query, irrespective of pagination. */
        public var errorCount: Int?

        /** An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details. */
        public var errors: [Errors]?

        /** An array of objects, each representing a new member that was added to the list. */
        public var newMembers: [NewMembers]?

        /** The total number of items matching the query, irrespective of pagination. */
        public var totalCreated: Int?

        /** The total number of items matching the query, irrespective of pagination. */
        public var totalUpdated: Int?

        /** An array of objects, each representing an existing list member whose subscription status was updated. */
        public var updatedMembers: [UpdatedMembers]?

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

        /** Batch update list members. */
        public struct Errors: Model {
          /** A unique code that identifies this specifc error. */
          public enum ErrorCode: String, Codable, Equatable, CaseIterable {
            case errorContactExists = "ERROR_CONTACT_EXISTS"
            case errorGeneric = "ERROR_GENERIC"
          }

          /** The email address that could not be added or updated. */
          public var emailAddress: String?

          /** The error message indicating why the email address could not be added or updated. */
          public var error: String?

          /** A unique code that identifies this specifc error. */
          public var errorCode: ErrorCode?

          public init(emailAddress: String? = nil, error: String? = nil, errorCode: ErrorCode? = nil) {
            self.emailAddress = emailAddress
            self.error = error
            self.errorCode = errorCode
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            emailAddress = try container.decodeIfPresent("email_address")
            error = try container.decodeIfPresent("error")
            errorCode = try container.decodeIfPresent("error_code")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(error, forKey: "error")
            try container.encodeIfPresent(errorCode, forKey: "error_code")
          }
        }

        /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
        public struct NewMembers: Model {
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
          public var lastChanged: DateTime

          /** The most recent Note added about this member. */
          public var lastNote: LastNote?

          /** The list id. */
          public var listId: String?

          /** Subscriber location information. */
          public var location: Location?

          /** Star rating for this member, between 1 and 5. */
          public var memberRating: Int?

          /** An individual merge var and value for a member. */
          public var mergeFields: [String: [String: CodableAny]]?

          /** Open and click rates for this subscriber. */
          public var stats: Stats?

          /** Subscriber's current status. */
          public var status: Status?

          /** The tags applied to this member. */
          public var tags: [Tags]?

          /** The number of tags applied to this member. */
          public var tagsCount: Int?

          /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
          public var timestampOpt: DateTime

          /** The date and time the subscriber signed up for the list in ISO 8601 format. */
          public var timestampSignup: DateTime

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

          public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, memberRating: Int? = nil, mergeFields: [String: [String: CodableAny]]? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, vip: Bool? = nil) {
            self.links = links
            self.emailAddress = emailAddress
            self.emailClient = emailClient
            self.emailType = emailType
            self.id = id
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.lastChanged = .init(date: lastChanged)
            self.lastNote = lastNote
            self.listId = listId
            self.location = location
            self.memberRating = memberRating
            self.mergeFields = mergeFields
            self.stats = stats
            self.status = status
            self.tags = tags
            self.tagsCount = tagsCount
            self.timestampOpt = .init(date: timestampOpt)
            self.timestampSignup = .init(date: timestampSignup)
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
            mergeFields = try container.decodeAnyIfPresent("merge_fields")
            stats = try container.decodeIfPresent("stats")
            status = try container.decodeIfPresent("status")
            tags = try container.decodeArrayIfPresent("tags")
            tagsCount = try container.decodeIfPresent("tags_count")
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
            try container.encodeIfPresent(tags, forKey: "tags")
            try container.encodeIfPresent(tagsCount, forKey: "tags_count")
            try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
            try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
            try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
            try container.encodeIfPresent(vip, forKey: "vip")
          }
        }

        /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
        public struct UpdatedMembers: Model {
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
          public var lastChanged: DateTime

          /** The most recent Note added about this member. */
          public var lastNote: LastNote?

          /** The list id. */
          public var listId: String?

          /** Subscriber location information. */
          public var location: Location?

          /** Star rating for this member, between 1 and 5. */
          public var memberRating: Int?

          /** An individual merge var and value for a member. */
          public var mergeFields: [String: [String: CodableAny]]?

          /** Open and click rates for this subscriber. */
          public var stats: Stats?

          /** Subscriber's current status. */
          public var status: Status?

          /** The tags applied to this member. */
          public var tags: [Tags]?

          /** The number of tags applied to this member. */
          public var tagsCount: Int?

          /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
          public var timestampOpt: DateTime

          /** The date and time the subscriber signed up for the list in ISO 8601 format. */
          public var timestampSignup: DateTime

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

          public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, memberRating: Int? = nil, mergeFields: [String: [String: CodableAny]]? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, vip: Bool? = nil) {
            self.links = links
            self.emailAddress = emailAddress
            self.emailClient = emailClient
            self.emailType = emailType
            self.id = id
            self.interests = interests
            self.ipOpt = ipOpt
            self.ipSignup = ipSignup
            self.language = language
            self.lastChanged = .init(date: lastChanged)
            self.lastNote = lastNote
            self.listId = listId
            self.location = location
            self.memberRating = memberRating
            self.mergeFields = mergeFields
            self.stats = stats
            self.status = status
            self.tags = tags
            self.tagsCount = tagsCount
            self.timestampOpt = .init(date: timestampOpt)
            self.timestampSignup = .init(date: timestampSignup)
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
            mergeFields = try container.decodeAnyIfPresent("merge_fields")
            stats = try container.decodeIfPresent("stats")
            status = try container.decodeIfPresent("status")
            tags = try container.decodeArrayIfPresent("tags")
            tagsCount = try container.decodeIfPresent("tags_count")
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
            try container.encodeIfPresent(tags, forKey: "tags")
            try container.encodeIfPresent(tagsCount, forKey: "tags_count")
            try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
            try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
            try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
            try container.encodeIfPresent(vip, forKey: "vip")
          }
        }

        public init(links: [Links]? = nil, errorCount: Int? = nil, errors: [Errors]? = nil, newMembers: [NewMembers]? = nil, totalCreated: Int? = nil, totalUpdated: Int? = nil, updatedMembers: [UpdatedMembers]? = nil) {
          self.links = links
          self.errorCount = errorCount
          self.errors = errors
          self.newMembers = newMembers
          self.totalCreated = totalCreated
          self.totalUpdated = totalUpdated
          self.updatedMembers = updatedMembers
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          errorCount = try container.decodeIfPresent("error_count")
          errors = try container.decodeArrayIfPresent("errors")
          newMembers = try container.decodeArrayIfPresent("new_members")
          totalCreated = try container.decodeIfPresent("total_created")
          totalUpdated = try container.decodeIfPresent("total_updated")
          updatedMembers = try container.decodeArrayIfPresent("updated_members")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(errorCount, forKey: "error_count")
          try container.encodeIfPresent(errors, forKey: "errors")
          try container.encodeIfPresent(newMembers, forKey: "new_members")
          try container.encodeIfPresent(totalCreated, forKey: "total_created")
          try container.encodeIfPresent(totalUpdated, forKey: "total_updated")
          try container.encodeIfPresent(updatedMembers, forKey: "updated_members")
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
