import Foundation
import Prch

#if !os(watchOS)
  public extension Reports {
    /**
     List campaign recipients

     Get information about campaign recipients.
     */
    enum GetReportsIdSentTo {
      public static let service = Service<Response>(id: "getReportsIdSentTo", tag: "reports", method: "GET", path: "/reports/{campaign_id}/sent-to", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

          /** The unique id for the campaign. */
          public var campaignId: String

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.count = count
            self.offset = offset
            self.campaignId = campaignId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetReportsIdSentTo.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String) {
          let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, campaignId: campaignId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)")
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
        /** A list of subscribers who were sent a specific campaign. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The campaign id. */
          public var campaignId: String?

          /** An array of objects, each representing a campaign recipient. */
          public var sentTo: [SentTo]?

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

          /** A subscriber's status for a specific campaign. */
          public struct SentTo: Model {
            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** For A/B Split Campaigns, the group the member was apart of ('a', 'b', or 'winner'). */
            public var absplitGroup: String?

            /** The campaign id. */
            public var campaignId: String?

            /** Email address for a subscriber. */
            public var emailAddress: String?

            /** The MD5 hash of the lowercase version of the list member's email address. */
            public var emailId: String?

            /** For campaigns sent with timewarp, the time zone group the member is apart of. */
            public var gmtOffset: Int?

            /** The date and time of the last open for this member in ISO 8601 format. */
            public var lastOpen: Date?

            /** The unique list id. */
            public var listId: String?

            /** The status of the list used, namely if it's deleted or disabled. */
            public var listIsActive: Bool?

            /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
            public var mergeFields: [String: AnyCodable]?

            /** The number of times a campaign was opened by this member. */
            public var openCount: Int?

            /** The status of the member ('sent', 'hard' for hard bounce, or 'soft' for soft bounce). */
            public var status: String?

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

            public init(links: [Links]? = nil, absplitGroup: String? = nil, campaignId: String? = nil, emailAddress: String? = nil, emailId: String? = nil, gmtOffset: Int? = nil, lastOpen: Date? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: AnyCodable]? = nil, openCount: Int? = nil, status: String? = nil, vip: Bool? = nil) {
              self.links = links
              self.absplitGroup = absplitGroup
              self.campaignId = campaignId
              self.emailAddress = emailAddress
              self.emailId = emailId
              self.gmtOffset = gmtOffset
              self.lastOpen = lastOpen
              self.listId = listId
              self.listIsActive = listIsActive
              self.mergeFields = mergeFields
              self.openCount = openCount
              self.status = status
              self.vip = vip
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              absplitGroup = try container.decodeIfPresent("absplit_group")
              campaignId = try container.decodeIfPresent("campaign_id")
              emailAddress = try container.decodeIfPresent("email_address")
              emailId = try container.decodeIfPresent("email_id")
              gmtOffset = try container.decodeIfPresent("gmt_offset")
              lastOpen = try container.decodeIfPresent("last_open")
              listId = try container.decodeIfPresent("list_id")
              listIsActive = try container.decodeIfPresent("list_is_active")
              mergeFields = try container.decodeAnyCodableDictionary("merge_fields")
              openCount = try container.decodeIfPresent("open_count")
              status = try container.decodeIfPresent("status")
              vip = try container.decodeIfPresent("vip")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(absplitGroup, forKey: "absplit_group")
              try container.encodeIfPresent(campaignId, forKey: "campaign_id")
              try container.encodeIfPresent(emailAddress, forKey: "email_address")
              try container.encodeIfPresent(emailId, forKey: "email_id")
              try container.encodeIfPresent(gmtOffset, forKey: "gmt_offset")
              try container.encodeIfPresent(lastOpen, forKey: "last_open")
              try container.encodeIfPresent(listId, forKey: "list_id")
              try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
              try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
              try container.encodeIfPresent(openCount, forKey: "open_count")
              try container.encodeIfPresent(status, forKey: "status")
              try container.encodeIfPresent(vip, forKey: "vip")
            }
          }

          public init(links: [Links]? = nil, campaignId: String? = nil, sentTo: [SentTo]? = nil, totalItems: Int? = nil) {
            self.links = links
            self.campaignId = campaignId
            self.sentTo = sentTo
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            campaignId = try container.decodeIfPresent("campaign_id")
            sentTo = try container.decodeArrayIfPresent("sent_to")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(campaignId, forKey: "campaign_id")
            try container.encodeIfPresent(sentTo, forKey: "sent_to")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

        public typealias SuccessType = Status200
        public typealias FailureType = DefaultResponse
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

        public var anyResponse: Any {
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
          let responseString = "\(anyResponse)"
          if responseString != "()" {
            string += "\n\(responseString)"
          }
          return string
        }
      }
    }
  }
#endif
