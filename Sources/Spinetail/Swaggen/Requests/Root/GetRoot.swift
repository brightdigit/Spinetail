import Foundation
import Prch

public extension Root {
  /**
   List api root resources

   Get links to all other resources available in the API.
   */
  enum GetRoot {
    public static let service = APIService<Response>(id: "getRoot", tag: "root", method: "GET", path: "/", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetRoot.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields)
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
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** The API root resource links to all other resources available in the API. */
      public struct Status200: Model {
        /** The type of pricing plan the account is on. */
        public enum PricingPlanType: String, Codable, Equatable, CaseIterable {
          case monthly
          case payAsYouGo = "pay_as_you_go"
          case foreverFree = "forever_free"
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The Mailchimp account ID. */
        public var accountId: String?

        /** The user-specified industry associated with the account. */
        public var accountIndustry: String?

        /** The name of the account. */
        public var accountName: String?

        /** The timezone currently set for the account. */
        public var accountTimezone: String?

        /** URL of the avatar for the user. */
        public var avatarURL: String?

        /** Information about the account contact. */
        public var contact: Contact?

        /** The account email address. */
        public var email: String?

        /** The first name tied to the account. */
        public var firstName: String?

        /** Date of first payment for monthly plans. */
        public var firstPayment: DateTime

        /** The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry. */
        public var industryStats: IndustryStats?

        /** The date and time of the last login for this account in ISO 8601 format. */
        public var lastLogin: DateTime

        /** The last name tied to the account. */
        public var lastName: String?

        /** The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account. */
        public var loginId: String?

        /** The date and time that the account was created in ISO 8601 format. */
        public var memberSince: DateTime

        /** The type of pricing plan the account is on. */
        public var pricingPlanType: PricingPlanType?

        /** Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-mailchimp-pro/). */
        public var proEnabled: Bool?

        /** The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account. */
        public var role: String?

        /** The total number of subscribers across all lists in the account. */
        public var totalSubscribers: Int?

        /** The username tied to the account. */
        public var username: String?

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

        /** Information about the account contact. */
        public struct Contact: Model {
          /** The street address for the account contact. */
          public var addr1: String?

          /** The street address for the account contact. */
          public var addr2: String?

          /** The city for the account contact. */
          public var city: String?

          /** The company name for the account. */
          public var company: String?

          /** The country for the account contact. */
          public var country: String?

          /** The state for the account contact. */
          public var state: String?

          /** The zip code for the account contact. */
          public var zip: String?

          public init(addr1: String? = nil, addr2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, state: String? = nil, zip: String? = nil) {
            self.addr1 = addr1
            self.addr2 = addr2
            self.city = city
            self.company = company
            self.country = country
            self.state = state
            self.zip = zip
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            addr1 = try container.decodeIfPresent("addr1")
            addr2 = try container.decodeIfPresent("addr2")
            city = try container.decodeIfPresent("city")
            company = try container.decodeIfPresent("company")
            country = try container.decodeIfPresent("country")
            state = try container.decodeIfPresent("state")
            zip = try container.decodeIfPresent("zip")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(addr1, forKey: "addr1")
            try container.encodeIfPresent(addr2, forKey: "addr2")
            try container.encodeIfPresent(city, forKey: "city")
            try container.encodeIfPresent(company, forKey: "company")
            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(state, forKey: "state")
            try container.encodeIfPresent(zip, forKey: "zip")
          }
        }

        /** The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs) for all campaigns in the account's specified industry. */
        public struct IndustryStats: Model {
          /** The average bounce rate for all campaigns in the account's specified industry. */
          public var bounceRate: Double?

          /** The average unique click rate for all campaigns in the account's specified industry. */
          public var clickRate: Double?

          /** The average unique open rate for all campaigns in the account's specified industry. */
          public var openRate: Double?

          public init(bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil) {
            self.bounceRate = bounceRate
            self.clickRate = clickRate
            self.openRate = openRate
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            bounceRate = try container.decodeIfPresent("bounce_rate")
            clickRate = try container.decodeIfPresent("click_rate")
            openRate = try container.decodeIfPresent("open_rate")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(bounceRate, forKey: "bounce_rate")
            try container.encodeIfPresent(clickRate, forKey: "click_rate")
            try container.encodeIfPresent(openRate, forKey: "open_rate")
          }
        }

        public init(links: [Links]? = nil, accountId: String? = nil, accountIndustry: String? = nil, accountName: String? = nil, accountTimezone: String? = nil, avatarURL: String? = nil, contact: Contact? = nil, email: String? = nil, firstName: String? = nil, firstPayment: Date? = nil, industryStats: IndustryStats? = nil, lastLogin: Date? = nil, lastName: String? = nil, loginId: String? = nil, memberSince: Date? = nil, pricingPlanType: PricingPlanType? = nil, proEnabled: Bool? = nil, role: String? = nil, totalSubscribers: Int? = nil, username: String? = nil) {
          self.links = links
          self.accountId = accountId
          self.accountIndustry = accountIndustry
          self.accountName = accountName
          self.accountTimezone = accountTimezone
          self.avatarURL = avatarURL
          self.contact = contact
          self.email = email
          self.firstName = firstName
          self.firstPayment = .init(date: firstPayment)
          self.industryStats = industryStats
          self.lastLogin = .init(date: lastLogin)
          self.lastName = lastName
          self.loginId = loginId
          self.memberSince = .init(date: memberSince)
          self.pricingPlanType = pricingPlanType
          self.proEnabled = proEnabled
          self.role = role
          self.totalSubscribers = totalSubscribers
          self.username = username
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          accountId = try container.decodeIfPresent("account_id")
          accountIndustry = try container.decodeIfPresent("account_industry")
          accountName = try container.decodeIfPresent("account_name")
          accountTimezone = try container.decodeIfPresent("account_timezone")
          avatarURL = try container.decodeIfPresent("avatar_url")
          contact = try container.decodeIfPresent("contact")
          email = try container.decodeIfPresent("email")
          firstName = try container.decodeIfPresent("first_name")
          firstPayment = try container.decodeIfPresent("first_payment")
          industryStats = try container.decodeIfPresent("industry_stats")
          lastLogin = try container.decodeIfPresent("last_login")
          lastName = try container.decodeIfPresent("last_name")
          loginId = try container.decodeIfPresent("login_id")
          memberSince = try container.decodeIfPresent("member_since")
          pricingPlanType = try container.decodeIfPresent("pricing_plan_type")
          proEnabled = try container.decodeIfPresent("pro_enabled")
          role = try container.decodeIfPresent("role")
          totalSubscribers = try container.decodeIfPresent("total_subscribers")
          username = try container.decodeIfPresent("username")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(accountId, forKey: "account_id")
          try container.encodeIfPresent(accountIndustry, forKey: "account_industry")
          try container.encodeIfPresent(accountName, forKey: "account_name")
          try container.encodeIfPresent(accountTimezone, forKey: "account_timezone")
          try container.encodeIfPresent(avatarURL, forKey: "avatar_url")
          try container.encodeIfPresent(contact, forKey: "contact")
          try container.encodeIfPresent(email, forKey: "email")
          try container.encodeIfPresent(firstName, forKey: "first_name")
          try container.encodeIfPresent(firstPayment, forKey: "first_payment")
          try container.encodeIfPresent(industryStats, forKey: "industry_stats")
          try container.encodeIfPresent(lastLogin, forKey: "last_login")
          try container.encodeIfPresent(lastName, forKey: "last_name")
          try container.encodeIfPresent(loginId, forKey: "login_id")
          try container.encodeIfPresent(memberSince, forKey: "member_since")
          try container.encodeIfPresent(pricingPlanType, forKey: "pricing_plan_type")
          try container.encodeIfPresent(proEnabled, forKey: "pro_enabled")
          try container.encodeIfPresent(role, forKey: "role")
          try container.encodeIfPresent(totalSubscribers, forKey: "total_subscribers")
          try container.encodeIfPresent(username, forKey: "username")
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
