import Foundation
import Prch

public extension Ecommerce {
  /**
   Add cart

   Add a new cart to a store.
   */
  enum PostEcommerceStoresIdCarts {
    public static let service = APIService<Response>(id: "postEcommerceStoresIdCarts", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/carts", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Information about a specific cart. */
      public struct Body: Model {
        /** The three-letter ISO 4217 code for the currency that the cart uses. */
        public var currencyCode: String

        /** Information about a specific customer. For existing customers include only the `id` parameter in the `customer` object body. */
        public var customer: Customer

        /** A unique identifier for the cart. */
        public var id: String

        /** An array of the cart's line items. */
        public var lines: [Lines]

        /** The order total for the cart. */
        public var orderTotal: Double

        /** A string that uniquely identifies the campaign for a cart. */
        public var campaignId: String?

        /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
        public var checkoutURL: String?

        /** The total tax for the cart. */
        public var taxTotal: Double?

        /** Information about a specific customer. For existing customers include only the `id` parameter in the `customer` object body. */
        public struct Customer: Model {
          /** A unique identifier for the customer. Limited to 50 characters. */
          public var id: String

          /** The customer's address. */
          public var address: Address?

          /** The customer's company. */
          public var company: String?

          /** The customer's email address. */
          public var emailAddress: String?

          /** The customer's first name. */
          public var firstName: String?

          /** The customer's last name. */
          public var lastName: String?

          /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
          public var optInStatus: Bool?

          /** The customer's address. */
          public struct Address: Model {
            /** The mailing address of the customer. */
            public var address1: String?

            /** An additional field for the customer's mailing address. */
            public var address2: String?

            /** The city the customer is located in. */
            public var city: String?

            /** The customer's country. */
            public var country: String?

            /** The two-letter code for the customer's country. */
            public var countryCode: String?

            /** The customer's postal or zip code. */
            public var postalCode: String?

            /** The customer's state name or normalized province. */
            public var province: String?

            /** The two-letter code for the customer's province or state. */
            public var provinceCode: String?

            public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
              self.address1 = address1
              self.address2 = address2
              self.city = city
              self.country = country
              self.countryCode = countryCode
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
              try container.encodeIfPresent(postalCode, forKey: "postal_code")
              try container.encodeIfPresent(province, forKey: "province")
              try container.encodeIfPresent(provinceCode, forKey: "province_code")
            }
          }

          public init(id: String, address: Address? = nil, company: String? = nil, emailAddress: String? = nil, firstName: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil) {
            self.id = id
            self.address = address
            self.company = company
            self.emailAddress = emailAddress
            self.firstName = firstName
            self.lastName = lastName
            self.optInStatus = optInStatus
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            address = try container.decodeIfPresent("address")
            company = try container.decodeIfPresent("company")
            emailAddress = try container.decodeIfPresent("email_address")
            firstName = try container.decodeIfPresent("first_name")
            lastName = try container.decodeIfPresent("last_name")
            optInStatus = try container.decodeIfPresent("opt_in_status")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
            try container.encodeIfPresent(address, forKey: "address")
            try container.encodeIfPresent(company, forKey: "company")
            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(firstName, forKey: "first_name")
            try container.encodeIfPresent(lastName, forKey: "last_name")
            try container.encodeIfPresent(optInStatus, forKey: "opt_in_status")
          }
        }

        /** Information about a specific cart line item. */
        public struct Lines: Model {
          /** A unique identifier for the cart line item. */
          public var id: String

          /** The price of a cart line item. */
          public var price: Double

          /** A unique identifier for the product associated with the cart line item. */
          public var productId: String

          /** A unique identifier for the product variant associated with the cart line item. */
          public var productVariantId: String

          /** The quantity of a cart line item. */
          public var quantity: Int

          public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int) {
            self.id = id
            self.price = price
            self.productId = productId
            self.productVariantId = productVariantId
            self.quantity = quantity
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            price = try container.decode("price")
            productId = try container.decode("product_id")
            productVariantId = try container.decode("product_variant_id")
            quantity = try container.decode("quantity")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
            try container.encode(price, forKey: "price")
            try container.encode(productId, forKey: "product_id")
            try container.encode(productVariantId, forKey: "product_variant_id")
            try container.encode(quantity, forKey: "quantity")
          }
        }

        public init(currencyCode: String, customer: Customer, id: String, lines: [Lines], orderTotal: Double, campaignId: String? = nil, checkoutURL: String? = nil, taxTotal: Double? = nil) {
          self.currencyCode = currencyCode
          self.customer = customer
          self.id = id
          self.lines = lines
          self.orderTotal = orderTotal
          self.campaignId = campaignId
          self.checkoutURL = checkoutURL
          self.taxTotal = taxTotal
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          currencyCode = try container.decode("currency_code")
          customer = try container.decode("customer")
          id = try container.decode("id")
          lines = try container.decodeArray("lines")
          orderTotal = try container.decode("order_total")
          campaignId = try container.decodeIfPresent("campaign_id")
          checkoutURL = try container.decodeIfPresent("checkout_url")
          taxTotal = try container.decodeIfPresent("tax_total")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(currencyCode, forKey: "currency_code")
          try container.encode(customer, forKey: "customer")
          try container.encode(id, forKey: "id")
          try container.encode(lines, forKey: "lines")
          try container.encode(orderTotal, forKey: "order_total")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(checkoutURL, forKey: "checkout_url")
          try container.encodeIfPresent(taxTotal, forKey: "tax_total")
        }
      }

      public struct Options {
        /** The store id. */
        public var storeId: String

        public init(storeId: String) {
          self.storeId = storeId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostEcommerceStoresIdCarts.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(storeId: String, body: Body) {
        let options = Options(storeId: storeId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific cart. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** A string that uniquely identifies the campaign associated with a cart. */
        public var campaignId: String?

        /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
        public var checkoutURL: String?

        /** The date and time the cart was created in ISO 8601 format. */
        public var createdAt: DateTime

        /** The three-letter ISO 4217 code for the currency that the cart uses. */
        public var currencyCode: String?

        /** Information about a specific customer. */
        public var customer: Customer?

        /** A unique identifier for the cart. */
        public var id: String?

        /** An array of the cart's line items. */
        public var lines: [Lines]?

        /** The order total for the cart. */
        public var orderTotal: Double?

        /** The total tax for the cart. */
        public var taxTotal: Double?

        /** The date and time the cart was last updated in ISO 8601 format. */
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

        /** Information about a specific customer. */
        public struct Customer: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The customer's address. */
          public var address: Address?

          /** The customer's company. */
          public var company: String?

          /** The date and time the customer was created in ISO 8601 format. */
          public var createdAt: DateTime

          /** The customer's email address. */
          public var emailAddress: String?

          /** The customer's first name. */
          public var firstName: String?

          /** A unique identifier for the customer. */
          public var id: String?

          /** The customer's last name. */
          public var lastName: String?

          /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
          public var optInStatus: Bool?

          /** The customer's total order count. */
          public var ordersCount: Int?

          /** The total amount the customer has spent. */
          public var totalSpent: Double?

          /** The date and time the customer was last updated in ISO 8601 format. */
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

          /** The customer's address. */
          public struct Address: Model {
            /** The mailing address of the customer. */
            public var address1: String?

            /** An additional field for the customer's mailing address. */
            public var address2: String?

            /** The city the customer is located in. */
            public var city: String?

            /** The customer's country. */
            public var country: String?

            /** The two-letter code for the customer's country. */
            public var countryCode: String?

            /** The customer's postal or zip code. */
            public var postalCode: String?

            /** The customer's state name or normalized province. */
            public var province: String?

            /** The two-letter code for the customer's province or state. */
            public var provinceCode: String?

            public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
              self.address1 = address1
              self.address2 = address2
              self.city = city
              self.country = country
              self.countryCode = countryCode
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
              try container.encodeIfPresent(postalCode, forKey: "postal_code")
              try container.encodeIfPresent(province, forKey: "province")
              try container.encodeIfPresent(provinceCode, forKey: "province_code")
            }
          }

          public init(links: [Links]? = nil, address: Address? = nil, company: String? = nil, createdAt: Date? = nil, emailAddress: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil, ordersCount: Int? = nil, totalSpent: Double? = nil, updatedAt: Date? = nil) {
            self.links = links
            self.address = address
            self.company = company
            self.createdAt = .init(date: createdAt)
            self.emailAddress = emailAddress
            self.firstName = firstName
            self.id = id
            self.lastName = lastName
            self.optInStatus = optInStatus
            self.ordersCount = ordersCount
            self.totalSpent = totalSpent
            self.updatedAt = .init(date: updatedAt)
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            address = try container.decodeIfPresent("address")
            company = try container.decodeIfPresent("company")
            createdAt = try container.decodeIfPresent("created_at")
            emailAddress = try container.decodeIfPresent("email_address")
            firstName = try container.decodeIfPresent("first_name")
            id = try container.decodeIfPresent("id")
            lastName = try container.decodeIfPresent("last_name")
            optInStatus = try container.decodeIfPresent("opt_in_status")
            ordersCount = try container.decodeIfPresent("orders_count")
            totalSpent = try container.decodeIfPresent("total_spent")
            updatedAt = try container.decodeIfPresent("updated_at")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(address, forKey: "address")
            try container.encodeIfPresent(company, forKey: "company")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(emailAddress, forKey: "email_address")
            try container.encodeIfPresent(firstName, forKey: "first_name")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(lastName, forKey: "last_name")
            try container.encodeIfPresent(optInStatus, forKey: "opt_in_status")
            try container.encodeIfPresent(ordersCount, forKey: "orders_count")
            try container.encodeIfPresent(totalSpent, forKey: "total_spent")
            try container.encodeIfPresent(updatedAt, forKey: "updated_at")
          }
        }

        /** Information about a specific cart line item. */
        public struct Lines: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A unique identifier for the cart line item. */
          public var id: String?

          /** The price of a cart line item. */
          public var price: Double?

          /** A unique identifier for the product associated with the cart line item. */
          public var productId: String?

          /** The name of the product for the cart line item. */
          public var productTitle: String?

          /** A unique identifier for the product variant associated with the cart line item. */
          public var productVariantId: String?

          /** The name of the product variant for the cart line item. */
          public var productVariantTitle: String?

          /** The quantity of a cart line item. */
          public var quantity: Int?

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

          public init(links: [Links]? = nil, id: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
            self.links = links
            self.id = id
            self.price = price
            self.productId = productId
            self.productTitle = productTitle
            self.productVariantId = productVariantId
            self.productVariantTitle = productVariantTitle
            self.quantity = quantity
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            id = try container.decodeIfPresent("id")
            price = try container.decodeIfPresent("price")
            productId = try container.decodeIfPresent("product_id")
            productTitle = try container.decodeIfPresent("product_title")
            productVariantId = try container.decodeIfPresent("product_variant_id")
            productVariantTitle = try container.decodeIfPresent("product_variant_title")
            quantity = try container.decodeIfPresent("quantity")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(price, forKey: "price")
            try container.encodeIfPresent(productId, forKey: "product_id")
            try container.encodeIfPresent(productTitle, forKey: "product_title")
            try container.encodeIfPresent(productVariantId, forKey: "product_variant_id")
            try container.encodeIfPresent(productVariantTitle, forKey: "product_variant_title")
            try container.encodeIfPresent(quantity, forKey: "quantity")
          }
        }

        public init(links: [Links]? = nil, campaignId: String? = nil, checkoutURL: String? = nil, createdAt: Date? = nil, currencyCode: String? = nil, customer: Customer? = nil, id: String? = nil, lines: [Lines]? = nil, orderTotal: Double? = nil, taxTotal: Double? = nil, updatedAt: Date? = nil) {
          self.links = links
          self.campaignId = campaignId
          self.checkoutURL = checkoutURL
          self.createdAt = .init(date: createdAt)
          self.currencyCode = currencyCode
          self.customer = customer
          self.id = id
          self.lines = lines
          self.orderTotal = orderTotal
          self.taxTotal = taxTotal
          self.updatedAt = .init(date: updatedAt)
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          campaignId = try container.decodeIfPresent("campaign_id")
          checkoutURL = try container.decodeIfPresent("checkout_url")
          createdAt = try container.decodeIfPresent("created_at")
          currencyCode = try container.decodeIfPresent("currency_code")
          customer = try container.decodeIfPresent("customer")
          id = try container.decodeIfPresent("id")
          lines = try container.decodeArrayIfPresent("lines")
          orderTotal = try container.decodeIfPresent("order_total")
          taxTotal = try container.decodeIfPresent("tax_total")
          updatedAt = try container.decodeIfPresent("updated_at")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(campaignId, forKey: "campaign_id")
          try container.encodeIfPresent(checkoutURL, forKey: "checkout_url")
          try container.encodeIfPresent(createdAt, forKey: "created_at")
          try container.encodeIfPresent(currencyCode, forKey: "currency_code")
          try container.encodeIfPresent(customer, forKey: "customer")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(lines, forKey: "lines")
          try container.encodeIfPresent(orderTotal, forKey: "order_total")
          try container.encodeIfPresent(taxTotal, forKey: "tax_total")
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
