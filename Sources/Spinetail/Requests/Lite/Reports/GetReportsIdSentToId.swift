import Foundation
import Prch

#if !os(watchOS)
  public extension Reports {
    /**
     Get campaign recipient info

     Get information about a specific campaign recipient.
     */
    enum GetReportsIdSentToId {
      public static let service = Service<Response>(id: "getReportsIdSentToId", tag: "reports", method: "GET", path: "/reports/{campaign_id}/sent-to/{subscriber_hash}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
          public var fields: [String]?

          /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
          public var excludeFields: [String]?

          /** The unique id for the campaign. */
          public var campaignId: String

          /** The MD5 hash of the lowercase version of the list member's email address. */
          public var subscriberHash: String

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, subscriberHash: String) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.campaignId = campaignId
            self.subscriberHash = subscriberHash
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetReportsIdSentToId.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, subscriberHash: String) {
          let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId, subscriberHash: subscriberHash)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(options.subscriberHash)")
        }

        public var queryParameters: [String: Any] {
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

      public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
        public typealias APIType = MailchimpAPI
        /** A subscriber's status for a specific campaign. */
        public struct Status200: Model {
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

        /// either success or failure value. Success is anything in the 200..<300 status code range
        @available(*, unavailable)
        public var _obsolete_responseResult: DeprecatedResponseResult<Status200, DefaultResponse> {
          if let successValue = success {
            return .success(successValue)
          } else if let failureValue = failure {
            return .failure(failureValue)
          } else {
            fatalError("Response does not have success or failure response")
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
