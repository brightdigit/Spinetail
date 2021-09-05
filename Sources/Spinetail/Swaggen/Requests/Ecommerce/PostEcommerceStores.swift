import Foundation
import Prch

public extension Ecommerce {
  /**
   Add store

   Add a new store to your Mailchimp account.
   */
  enum PostEcommerceStores {
    public static let service = APIService<Response>(id: "postEcommerceStores", tag: "ecommerce", method: "POST", path: "/ecommerce/stores", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** An individual store in an account. */
      public struct Body: Model {
        /** The three-letter ISO 4217 code for the currency that the store accepts. */
        public var currencyCode: String

        /** The unique identifier for the store. */
        public var id: String

        /** The unique identifier for the list associated with the store. The `list_id` for a specific store cannot change. */
        public var listId: String

        /** The name of the store. */
        public var name: String

        /** The store address. */
        public var address: Address?

        /** The store domain. This parameter is required for Connected Sites and Google Ads. */
        public var domain: String?

        /** The email address for the store. */
        public var emailAddress: String?

        /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
        public var isSyncing: Bool?

        /** The currency format for the store. For example: `$`, `£`, etc. */
        public var moneyFormat: String?

        /** The store phone number. */
        public var phone: String?

        /** The e-commerce platform of the store. */
        public var platform: String?

        /** The primary locale for the store. For example: `en`, `de`, etc. */
        public var primaryLocale: String?

        /** The timezone for the store. */
        public var timezone: String?

        /** The store address. */
        public struct Address: Model {
          /** The store's mailing address. */
          public var address1: String?

          /** An additional field for the store's mailing address. */
          public var address2: String?

          /** The city the store is located in. */
          public var city: String?

          /** The store's country. */
          public var country: String?

          /** The two-letter code for to the store's country. */
          public var countryCode: String?

          /** The latitude of the store location. */
          public var latitude: Double?

          /** The longitude of the store location. */
          public var longitude: Double?

          /** The store's postal or zip code. */
          public var postalCode: String?

          /** The store's state name or normalized province. */
          public var province: String?

          /** The two-letter code for the store's province or state. */
          public var provinceCode: String?

          public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
            self.address1 = address1
            self.address2 = address2
            self.city = city
            self.country = country
            self.countryCode = countryCode
            self.latitude = latitude
            self.longitude = longitude
            self.postalCode = postalCode
            self.province = province
            self.provinceCode = provinceCode
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            address1 = try container.decodeIfPresent("address1")
            address2 = try container.decodeIfPresent("address2")
            city = try container.decodeIfPresent("city")
            country = try container.decodeIfPresent("country")
            countryCode = try container.decodeIfPresent("country_code")
            latitude = try container.decodeIfPresent("latitude")
            longitude = try container.decodeIfPresent("longitude")
            postalCode = try container.decodeIfPresent("postal_code")
            province = try container.decodeIfPresent("province")
            provinceCode = try container.decodeIfPresent("province_code")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(address1, forKey: "address1")
            try container.encodeIfPresent(address2, forKey: "address2")
            try container.encodeIfPresent(city, forKey: "city")
            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(countryCode, forKey: "country_code")
            try container.encodeIfPresent(latitude, forKey: "latitude")
            try container.encodeIfPresent(longitude, forKey: "longitude")
            try container.encodeIfPresent(postalCode, forKey: "postal_code")
            try container.encodeIfPresent(province, forKey: "province")
            try container.encodeIfPresent(provinceCode, forKey: "province_code")
          }
        }

        public init(currencyCode: String, id: String, listId: String, name: String, address: Address? = nil, domain: String? = nil, emailAddress: String? = nil, isSyncing: Bool? = nil, moneyFormat: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil) {
          self.currencyCode = currencyCode
          self.id = id
          self.listId = listId
          self.name = name
          self.address = address
          self.domain = domain
          self.emailAddress = emailAddress
          self.isSyncing = isSyncing
          self.moneyFormat = moneyFormat
          self.phone = phone
          self.platform = platform
          self.primaryLocale = primaryLocale
          self.timezone = timezone
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          currencyCode = try container.decode("currency_code")
          id = try container.decode("id")
          listId = try container.decode("list_id")
          name = try container.decode("name")
          address = try container.decodeIfPresent("address")
          domain = try container.decodeIfPresent("domain")
          emailAddress = try container.decodeIfPresent("email_address")
          isSyncing = try container.decodeIfPresent("is_syncing")
          moneyFormat = try container.decodeIfPresent("money_format")
          phone = try container.decodeIfPresent("phone")
          platform = try container.decodeIfPresent("platform")
          primaryLocale = try container.decodeIfPresent("primary_locale")
          timezone = try container.decodeIfPresent("timezone")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(currencyCode, forKey: "currency_code")
          try container.encode(id, forKey: "id")
          try container.encode(listId, forKey: "list_id")
          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(address, forKey: "address")
          try container.encodeIfPresent(domain, forKey: "domain")
          try container.encodeIfPresent(emailAddress, forKey: "email_address")
          try container.encodeIfPresent(isSyncing, forKey: "is_syncing")
          try container.encodeIfPresent(moneyFormat, forKey: "money_format")
          try container.encodeIfPresent(phone, forKey: "phone")
          try container.encodeIfPresent(platform, forKey: "platform")
          try container.encodeIfPresent(primaryLocale, forKey: "primary_locale")
          try container.encodeIfPresent(timezone, forKey: "timezone")
        }
      }

      public var body: Body

      public init(body: Body, encoder: RequestEncoder? = nil) {
        self.body = body
        super.init(service: PostEcommerceStores.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** An individual store in an account. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The store address. */
        public var address: Address?

        /** Details for the automations attached to this store. */
        public var automations: Automations?

        /** The Connected Site associated with the store. */
        public var connectedSite: ConnectedSite?

        /** The date and time the store was created in ISO 8601 format. */
        public var createdAt: DateTime

        /** The three-letter ISO 4217 code for the currency that the store accepts. */
        public var currencyCode: String?

        /** The store domain.  The store domain must be unique within a user account. */
        public var domain: String?

        /** The email address for the store. */
        public var emailAddress: String?

        /** The unique identifier for the store. */
        public var id: String?

        /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
        public var isSyncing: Bool?

        /** The unique identifier for the list that's associated with the store. The `list_id` for a specific store can't change. */
        public var listId: String?

        /** The status of the list connected to the store, namely if it's deleted or disabled. */
        public var listIsActive: Bool?

        /** The currency format for the store. For example: `$`, `£`, etc. */
        public var moneyFormat: String?

        /** The name of the store. */
        public var name: String?

        /** The store phone number. */
        public var phone: String?

        /** The e-commerce platform of the store. */
        public var platform: String?

        /** The primary locale for the store. For example: `en`, `de`, etc. */
        public var primaryLocale: String?

        /** The timezone for the store. */
        public var timezone: String?

        /** The date and time the store was last updated in ISO 8601 format. */
        public var updatedAt: DateTime

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

        /** The store address. */
        public struct Address: Model {
          /** The store's mailing address. */
          public var address1: String?

          /** An additional field for the store's mailing address. */
          public var address2: String?

          /** The city the store is located in. */
          public var city: String?

          /** The store's country. */
          public var country: String?

          /** The two-letter code for to the store's country. */
          public var countryCode: String?

          /** The latitude of the store location. */
          public var latitude: Double?

          /** The longitude of the store location. */
          public var longitude: Double?

          /** The store's postal or zip code. */
          public var postalCode: String?

          /** The store's state name or normalized province. */
          public var province: String?

          /** The two-letter code for the store's province or state. */
          public var provinceCode: String?

          public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
            self.address1 = address1
            self.address2 = address2
            self.city = city
            self.country = country
            self.countryCode = countryCode
            self.latitude = latitude
            self.longitude = longitude
            self.postalCode = postalCode
            self.province = province
            self.provinceCode = provinceCode
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            address1 = try container.decodeIfPresent("address1")
            address2 = try container.decodeIfPresent("address2")
            city = try container.decodeIfPresent("city")
            country = try container.decodeIfPresent("country")
            countryCode = try container.decodeIfPresent("country_code")
            latitude = try container.decodeIfPresent("latitude")
            longitude = try container.decodeIfPresent("longitude")
            postalCode = try container.decodeIfPresent("postal_code")
            province = try container.decodeIfPresent("province")
            provinceCode = try container.decodeIfPresent("province_code")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(address1, forKey: "address1")
            try container.encodeIfPresent(address2, forKey: "address2")
            try container.encodeIfPresent(city, forKey: "city")
            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(countryCode, forKey: "country_code")
            try container.encodeIfPresent(latitude, forKey: "latitude")
            try container.encodeIfPresent(longitude, forKey: "longitude")
            try container.encodeIfPresent(postalCode, forKey: "postal_code")
            try container.encodeIfPresent(province, forKey: "province")
            try container.encodeIfPresent(provinceCode, forKey: "province_code")
          }
        }

        /** Details for the automations attached to this store. */
        public struct Automations: Model {
          /** abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web. */
          public var abandonedBrowse: AbandonedBrowse?

          /** abandonedCart automation details. */
          public var abandonedCart: AbandonedCart?

          /** abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web. */
          public struct AbandonedBrowse: Model {
            /** Status of the abandonedBrowse automation. */
            public enum Status: String, Codable, Equatable, CaseIterable {
              case save
              case sending
              case paused
            }

            /** Unique ID of automation parent campaign. */
            public var id: String?

            /** Whether this store supports the abandonedBrowse automation. */
            public var isSupported: Bool?

            /** Status of the abandonedBrowse automation. */
            public var status: Status?

            public init(id: String? = nil, isSupported: Bool? = nil, status: Status? = nil) {
              self.id = id
              self.isSupported = isSupported
              self.status = status
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              id = try container.decodeIfPresent("id")
              isSupported = try container.decodeIfPresent("is_supported")
              status = try container.decodeIfPresent("status")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(isSupported, forKey: "is_supported")
              try container.encodeIfPresent(status, forKey: "status")
            }
          }

          /** abandonedCart automation details. */
          public struct AbandonedCart: Model {
            /** Status of the abandonedCart automation. */
            public enum Status: String, Codable, Equatable, CaseIterable {
              case save
              case sending
              case paused
            }

            /** Unique ID of automation parent campaign. */
            public var id: String?

            /** Whether this store supports the abandonedCart automation. */
            public var isSupported: Bool?

            /** Status of the abandonedCart automation. */
            public var status: Status?

            public init(id: String? = nil, isSupported: Bool? = nil, status: Status? = nil) {
              self.id = id
              self.isSupported = isSupported
              self.status = status
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              id = try container.decodeIfPresent("id")
              isSupported = try container.decodeIfPresent("is_supported")
              status = try container.decodeIfPresent("status")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(isSupported, forKey: "is_supported")
              try container.encodeIfPresent(status, forKey: "status")
            }
          }

          public init(abandonedBrowse: AbandonedBrowse? = nil, abandonedCart: AbandonedCart? = nil) {
            self.abandonedBrowse = abandonedBrowse
            self.abandonedCart = abandonedCart
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            abandonedBrowse = try container.decodeIfPresent("abandoned_browse")
            abandonedCart = try container.decodeIfPresent("abandoned_cart")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(abandonedBrowse, forKey: "abandoned_browse")
            try container.encodeIfPresent(abandonedCart, forKey: "abandoned_cart")
          }
        }

        /** The Connected Site associated with the store. */
        public struct ConnectedSite: Model {
          /** The unique identifier for the connected site. */
          public var siteForeignId: String?

          /** The script used to connect your site with Mailchimp. */
          public var siteScript: SiteScript?

          /** The script used to connect your site with Mailchimp. */
          public struct SiteScript: Model {
            /** A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp. */
            public var fragment: String?

            /** The URL used for any integrations that offer built-in support for connected sites. */
            public var url: String?

            public init(fragment: String? = nil, url: String? = nil) {
              self.fragment = fragment
              self.url = url
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              fragment = try container.decodeIfPresent("fragment")
              url = try container.decodeIfPresent("url")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(fragment, forKey: "fragment")
              try container.encodeIfPresent(url, forKey: "url")
            }
          }

          public init(siteForeignId: String? = nil, siteScript: SiteScript? = nil) {
            self.siteForeignId = siteForeignId
            self.siteScript = siteScript
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            siteForeignId = try container.decodeIfPresent("site_foreign_id")
            siteScript = try container.decodeIfPresent("site_script")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(siteForeignId, forKey: "site_foreign_id")
            try container.encodeIfPresent(siteScript, forKey: "site_script")
          }
        }

        public init(links: [Links]? = nil, address: Address? = nil, automations: Automations? = nil, connectedSite: ConnectedSite? = nil, createdAt: Date? = nil, currencyCode: String? = nil, domain: String? = nil, emailAddress: String? = nil, id: String? = nil, isSyncing: Bool? = nil, listId: String? = nil, listIsActive: Bool? = nil, moneyFormat: String? = nil, name: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, updatedAt: Date? = nil) {
          self.links = links
          self.address = address
          self.automations = automations
          self.connectedSite = connectedSite
          self.createdAt = .init(date: createdAt)
          self.currencyCode = currencyCode
          self.domain = domain
          self.emailAddress = emailAddress
          self.id = id
          self.isSyncing = isSyncing
          self.listId = listId
          self.listIsActive = listIsActive
          self.moneyFormat = moneyFormat
          self.name = name
          self.phone = phone
          self.platform = platform
          self.primaryLocale = primaryLocale
          self.timezone = timezone
          self.updatedAt = .init(date: updatedAt)
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          address = try container.decodeIfPresent("address")
          automations = try container.decodeIfPresent("automations")
          connectedSite = try container.decodeIfPresent("connected_site")
          createdAt = try container.decodeIfPresent("created_at")
          currencyCode = try container.decodeIfPresent("currency_code")
          domain = try container.decodeIfPresent("domain")
          emailAddress = try container.decodeIfPresent("email_address")
          id = try container.decodeIfPresent("id")
          isSyncing = try container.decodeIfPresent("is_syncing")
          listId = try container.decodeIfPresent("list_id")
          listIsActive = try container.decodeIfPresent("list_is_active")
          moneyFormat = try container.decodeIfPresent("money_format")
          name = try container.decodeIfPresent("name")
          phone = try container.decodeIfPresent("phone")
          platform = try container.decodeIfPresent("platform")
          primaryLocale = try container.decodeIfPresent("primary_locale")
          timezone = try container.decodeIfPresent("timezone")
          updatedAt = try container.decodeIfPresent("updated_at")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(address, forKey: "address")
          try container.encodeIfPresent(automations, forKey: "automations")
          try container.encodeIfPresent(connectedSite, forKey: "connected_site")
          try container.encodeIfPresent(createdAt, forKey: "created_at")
          try container.encodeIfPresent(currencyCode, forKey: "currency_code")
          try container.encodeIfPresent(domain, forKey: "domain")
          try container.encodeIfPresent(emailAddress, forKey: "email_address")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(isSyncing, forKey: "is_syncing")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(listIsActive, forKey: "list_is_active")
          try container.encodeIfPresent(moneyFormat, forKey: "money_format")
          try container.encodeIfPresent(name, forKey: "name")
          try container.encodeIfPresent(phone, forKey: "phone")
          try container.encodeIfPresent(platform, forKey: "platform")
          try container.encodeIfPresent(primaryLocale, forKey: "primary_locale")
          try container.encodeIfPresent(timezone, forKey: "timezone")
          try container.encodeIfPresent(updatedAt, forKey: "updated_at")
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
