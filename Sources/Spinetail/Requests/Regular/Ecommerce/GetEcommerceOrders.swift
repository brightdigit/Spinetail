import Foundation
import Prch

#if !os(watchOS)
  #if !os(watchOS)
    public extension Ecommerce {
      /**
       List account orders

       Get information about an account's orders.
       */
      enum GetEcommerceOrders {
        public static let service = Service<Response>(id: "getEcommerceOrders", tag: "ecommerce", method: "GET", path: "/ecommerce/orders", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

            /** Restrict results to orders with a specific `campaign_id` value. */
            public var campaignId: String?

            /** Restrict results to orders with a specific `outreach_id` value. */
            public var outreachId: String?

            /** Restrict results to orders made by a specific customer. */
            public var customerId: String?

            /** Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. */
            public var hasOutreach: Bool?

            public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil) {
              self.fields = fields
              self.excludeFields = excludeFields
              self.count = count
              self.offset = offset
              self.campaignId = campaignId
              self.outreachId = outreachId
              self.customerId = customerId
              self.hasOutreach = hasOutreach
            }
          }

          public var options: Options

          public init(options: Options) {
            self.options = options
          }

          public typealias ResponseType = Response

          public var service: Service<Response> {
            GetEcommerceOrders.service
          }

          /// convenience initialiser so an Option doesn't have to be created
          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil) {
            let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, campaignId: campaignId, outreachId: outreachId, customerId: customerId, hasOutreach: hasOutreach)
            self.init(options: options)
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
            if let campaignId = options.campaignId {
              params["campaign_id"] = campaignId
            }
            if let outreachId = options.outreachId {
              params["outreach_id"] = outreachId
            }
            if let customerId = options.customerId {
              params["customer_id"] = customerId
            }
            if let hasOutreach = options.hasOutreach {
              params["has_outreach"] = hasOutreach
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
          /** A collection of orders in an account. */
          public struct Status200: Model {
            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** An array of objects, each representing an order resource. */
            public var orders: [Orders]?

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

            /** Information about a specific order. */
            public struct Orders: Model {
              /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
              public enum TrackingCode: String, Codable, Equatable, CaseIterable {
                case prec
              }

              /** A list of link types and descriptions for the API schema documents. */
              public var links: [Links]?

              /** The billing address for the order. */
              public var billingAddress: BillingAddress?

              /** A string that uniquely identifies the campaign associated with an order. */
              public var campaignId: String?

              /** The date and time the order was cancelled in ISO 8601 format. */
              public var cancelledAtForeign: Date?

              /** The three-letter ISO 4217 code for the currency that the store accepts. */
              public var currencyCode: String?

              /** Information about a specific customer. */
              public var customer: Customer?

              /** The total amount of the discounts to be applied to the price of the order. */
              public var discountTotal: Double?

              /** The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
              public var financialStatus: String?

              /** The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
              public var fulfillmentStatus: String?

              /** A unique identifier for the order. */
              public var id: String?

              /** The URL for the page where the buyer landed when entering the shop. */
              public var landingSite: String?

              /** An array of the order's line items. */
              public var lines: [Lines]?

              /** The order total associated with an order. */
              public var orderTotal: Double?

              /** The URL for the order. */
              public var orderURL: String?

              /** The outreach associated with this order. For example, an email campaign or Facebook ad. */
              public var outreach: Outreach?

              /** The date and time the order was processed in ISO 8601 format. */
              public var processedAtForeign: Date?

              /** The promo codes applied on the order */
              public var promos: [Promos]?

              /** The shipping address for the order. */
              public var shippingAddress: ShippingAddress?

              /** The shipping total for the order. */
              public var shippingTotal: Double?

              /** The unique identifier for the store. */
              public var storeId: String?

              /** The tax total associated with an order. */
              public var taxTotal: Double?

              /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
              public var trackingCode: TrackingCode?

              /** The date and time the order was updated in ISO 8601 format. */
              public var updatedAtForeign: Date?

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

              /** The billing address for the order. */
              public struct BillingAddress: Model {
                /** The billing address for the order. */
                public var address1: String?

                /** An additional field for the billing address. */
                public var address2: String?

                /** The city in the billing address. */
                public var city: String?

                /** The company associated with the billing address. */
                public var company: String?

                /** The country in the billing address. */
                public var country: String?

                /** The two-letter code for the country in the billing address. */
                public var countryCode: String?

                /** The latitude for the billing address location. */
                public var latitude: Double?

                /** The longitude for the billing address location. */
                public var longitude: Double?

                /** The name associated with an order's billing address. */
                public var name: String?

                /** The phone number for the billing address. */
                public var phone: String?

                /** The postal or zip code in the billing address. */
                public var postalCode: String?

                /** The state or normalized province in the billing address. */
                public var province: String?

                /** The two-letter code for the province or state in the billing address. */
                public var provinceCode: String?

                public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
                  self.address1 = address1
                  self.address2 = address2
                  self.city = city
                  self.company = company
                  self.country = country
                  self.countryCode = countryCode
                  self.latitude = latitude
                  self.longitude = longitude
                  self.name = name
                  self.phone = phone
                  self.postalCode = postalCode
                  self.province = province
                  self.provinceCode = provinceCode
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  address1 = try container.decodeIfPresent("address1")
                  address2 = try container.decodeIfPresent("address2")
                  city = try container.decodeIfPresent("city")
                  company = try container.decodeIfPresent("company")
                  country = try container.decodeIfPresent("country")
                  countryCode = try container.decodeIfPresent("country_code")
                  latitude = try container.decodeIfPresent("latitude")
                  longitude = try container.decodeIfPresent("longitude")
                  name = try container.decodeIfPresent("name")
                  phone = try container.decodeIfPresent("phone")
                  postalCode = try container.decodeIfPresent("postal_code")
                  province = try container.decodeIfPresent("province")
                  provinceCode = try container.decodeIfPresent("province_code")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(address1, forKey: "address1")
                  try container.encodeIfPresent(address2, forKey: "address2")
                  try container.encodeIfPresent(city, forKey: "city")
                  try container.encodeIfPresent(company, forKey: "company")
                  try container.encodeIfPresent(country, forKey: "country")
                  try container.encodeIfPresent(countryCode, forKey: "country_code")
                  try container.encodeIfPresent(latitude, forKey: "latitude")
                  try container.encodeIfPresent(longitude, forKey: "longitude")
                  try container.encodeIfPresent(name, forKey: "name")
                  try container.encodeIfPresent(phone, forKey: "phone")
                  try container.encodeIfPresent(postalCode, forKey: "postal_code")
                  try container.encodeIfPresent(province, forKey: "province")
                  try container.encodeIfPresent(provinceCode, forKey: "province_code")
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
                public var createdAt: Date?

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
                public var updatedAt: Date?

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
                  self.createdAt = createdAt
                  self.emailAddress = emailAddress
                  self.firstName = firstName
                  self.id = id
                  self.lastName = lastName
                  self.optInStatus = optInStatus
                  self.ordersCount = ordersCount
                  self.totalSpent = totalSpent
                  self.updatedAt = updatedAt
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

              /** Information about a specific order line. */
              public struct Lines: Model {
                /** A list of link types and descriptions for the API schema documents. */
                public var links: [Links]?

                /** The total discount amount applied to a line item. */
                public var discount: Double?

                /** A unique identifier for an order line item. */
                public var id: String?

                /** The image URL for a product. */
                public var imageURL: String?

                /** The order line item price. */
                public var price: Double?

                /** A unique identifier for the product associated with an order line item. */
                public var productId: String?

                /** The name of the product for an order line item. */
                public var productTitle: String?

                /** A unique identifier for the product variant associated with an order line item. */
                public var productVariantId: String?

                /** The name of the product variant for an order line item. */
                public var productVariantTitle: String?

                /** The order line item quantity. */
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

                public init(links: [Links]? = nil, discount: Double? = nil, id: String? = nil, imageURL: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
                  self.links = links
                  self.discount = discount
                  self.id = id
                  self.imageURL = imageURL
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
                  discount = try container.decodeIfPresent("discount")
                  id = try container.decodeIfPresent("id")
                  imageURL = try container.decodeIfPresent("image_url")
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
                  try container.encodeIfPresent(discount, forKey: "discount")
                  try container.encodeIfPresent(id, forKey: "id")
                  try container.encodeIfPresent(imageURL, forKey: "image_url")
                  try container.encodeIfPresent(price, forKey: "price")
                  try container.encodeIfPresent(productId, forKey: "product_id")
                  try container.encodeIfPresent(productTitle, forKey: "product_title")
                  try container.encodeIfPresent(productVariantId, forKey: "product_variant_id")
                  try container.encodeIfPresent(productVariantTitle, forKey: "product_variant_title")
                  try container.encodeIfPresent(quantity, forKey: "quantity")
                }
              }

              /** The outreach associated with this order. For example, an email campaign or Facebook ad. */
              public struct Outreach: Model {
                /** A unique identifier for the outreach. Can be an email campaign ID. */
                public var id: String?

                /** The name for the outreach. */
                public var name: String?

                /** The date and time the Outreach was published in ISO 8601 format. */
                public var publishedTime: Date?

                /** The type of the outreach. */
                public var type: String?

                public init(id: String? = nil, name: String? = nil, publishedTime: Date? = nil, type: String? = nil) {
                  self.id = id
                  self.name = name
                  self.publishedTime = publishedTime
                  self.type = type
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  id = try container.decodeIfPresent("id")
                  name = try container.decodeIfPresent("name")
                  publishedTime = try container.decodeIfPresent("published_time")
                  type = try container.decodeIfPresent("type")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(id, forKey: "id")
                  try container.encodeIfPresent(name, forKey: "name")
                  try container.encodeIfPresent(publishedTime, forKey: "published_time")
                  try container.encodeIfPresent(type, forKey: "type")
                }
              }

              /** Information about a specific order. */
              public struct Promos: Model {
                /** Type of discount. For free shipping set type to fixed */
                public enum `Type`: String, Codable, Equatable, CaseIterable {
                  case fixed
                  case percentage
                }

                /** The amount of discount applied on the total price. For example if the total cost was $100 and the customer paid $95.5, amount_discounted will be 4.5 For free shipping set amount_discounted to 0 */
                public var amountDiscounted: Double?

                /** The Promo Code */
                public var code: String?

                /** Type of discount. For free shipping set type to fixed */
                public var type: `Type`?

                public init(amountDiscounted: Double? = nil, code: String? = nil, type: Type? = nil) {
                  self.amountDiscounted = amountDiscounted
                  self.code = code
                  self.type = type
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  amountDiscounted = try container.decodeIfPresent("amount_discounted")
                  code = try container.decodeIfPresent("code")
                  type = try container.decodeIfPresent("type")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(amountDiscounted, forKey: "amount_discounted")
                  try container.encodeIfPresent(code, forKey: "code")
                  try container.encodeIfPresent(type, forKey: "type")
                }
              }

              /** The shipping address for the order. */
              public struct ShippingAddress: Model {
                /** The shipping address for the order. */
                public var address1: String?

                /** An additional field for the shipping address. */
                public var address2: String?

                /** The city in the order's shipping address. */
                public var city: String?

                /** The company associated with an order's shipping address. */
                public var company: String?

                /** The country in the order's shipping address. */
                public var country: String?

                /** The two-letter code for the country in the shipping address. */
                public var countryCode: String?

                /** The latitude for the shipping address location. */
                public var latitude: Double?

                /** The longitude for the shipping address location. */
                public var longitude: Double?

                /** The name associated with an order's shipping address. */
                public var name: String?

                /** The phone number for the order's shipping address */
                public var phone: String?

                /** The postal or zip code in the order's shipping address. */
                public var postalCode: String?

                /** The state or normalized province in the order's shipping address. */
                public var province: String?

                /** The two-letter code for the province or state the order's shipping address is located in. */
                public var provinceCode: String?

                public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
                  self.address1 = address1
                  self.address2 = address2
                  self.city = city
                  self.company = company
                  self.country = country
                  self.countryCode = countryCode
                  self.latitude = latitude
                  self.longitude = longitude
                  self.name = name
                  self.phone = phone
                  self.postalCode = postalCode
                  self.province = province
                  self.provinceCode = provinceCode
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  address1 = try container.decodeIfPresent("address1")
                  address2 = try container.decodeIfPresent("address2")
                  city = try container.decodeIfPresent("city")
                  company = try container.decodeIfPresent("company")
                  country = try container.decodeIfPresent("country")
                  countryCode = try container.decodeIfPresent("country_code")
                  latitude = try container.decodeIfPresent("latitude")
                  longitude = try container.decodeIfPresent("longitude")
                  name = try container.decodeIfPresent("name")
                  phone = try container.decodeIfPresent("phone")
                  postalCode = try container.decodeIfPresent("postal_code")
                  province = try container.decodeIfPresent("province")
                  provinceCode = try container.decodeIfPresent("province_code")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(address1, forKey: "address1")
                  try container.encodeIfPresent(address2, forKey: "address2")
                  try container.encodeIfPresent(city, forKey: "city")
                  try container.encodeIfPresent(company, forKey: "company")
                  try container.encodeIfPresent(country, forKey: "country")
                  try container.encodeIfPresent(countryCode, forKey: "country_code")
                  try container.encodeIfPresent(latitude, forKey: "latitude")
                  try container.encodeIfPresent(longitude, forKey: "longitude")
                  try container.encodeIfPresent(name, forKey: "name")
                  try container.encodeIfPresent(phone, forKey: "phone")
                  try container.encodeIfPresent(postalCode, forKey: "postal_code")
                  try container.encodeIfPresent(province, forKey: "province")
                  try container.encodeIfPresent(provinceCode, forKey: "province_code")
                }
              }

              public init(links: [Links]? = nil, billingAddress: BillingAddress? = nil, campaignId: String? = nil, cancelledAtForeign: Date? = nil, currencyCode: String? = nil, customer: Customer? = nil, discountTotal: Double? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, id: String? = nil, landingSite: String? = nil, lines: [Lines]? = nil, orderTotal: Double? = nil, orderURL: String? = nil, outreach: Outreach? = nil, processedAtForeign: Date? = nil, promos: [Promos]? = nil, shippingAddress: ShippingAddress? = nil, shippingTotal: Double? = nil, storeId: String? = nil, taxTotal: Double? = nil, trackingCode: TrackingCode? = nil, updatedAtForeign: Date? = nil) {
                self.links = links
                self.billingAddress = billingAddress
                self.campaignId = campaignId
                self.cancelledAtForeign = cancelledAtForeign
                self.currencyCode = currencyCode
                self.customer = customer
                self.discountTotal = discountTotal
                self.financialStatus = financialStatus
                self.fulfillmentStatus = fulfillmentStatus
                self.id = id
                self.landingSite = landingSite
                self.lines = lines
                self.orderTotal = orderTotal
                self.orderURL = orderURL
                self.outreach = outreach
                self.processedAtForeign = processedAtForeign
                self.promos = promos
                self.shippingAddress = shippingAddress
                self.shippingTotal = shippingTotal
                self.storeId = storeId
                self.taxTotal = taxTotal
                self.trackingCode = trackingCode
                self.updatedAtForeign = updatedAtForeign
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                links = try container.decodeArrayIfPresent("_links")
                billingAddress = try container.decodeIfPresent("billing_address")
                campaignId = try container.decodeIfPresent("campaign_id")
                cancelledAtForeign = try container.decodeIfPresent("cancelled_at_foreign")
                currencyCode = try container.decodeIfPresent("currency_code")
                customer = try container.decodeIfPresent("customer")
                discountTotal = try container.decodeIfPresent("discount_total")
                financialStatus = try container.decodeIfPresent("financial_status")
                fulfillmentStatus = try container.decodeIfPresent("fulfillment_status")
                id = try container.decodeIfPresent("id")
                landingSite = try container.decodeIfPresent("landing_site")
                lines = try container.decodeArrayIfPresent("lines")
                orderTotal = try container.decodeIfPresent("order_total")
                orderURL = try container.decodeIfPresent("order_url")
                outreach = try container.decodeIfPresent("outreach")
                processedAtForeign = try container.decodeIfPresent("processed_at_foreign")
                promos = try container.decodeArrayIfPresent("promos")
                shippingAddress = try container.decodeIfPresent("shipping_address")
                shippingTotal = try container.decodeIfPresent("shipping_total")
                storeId = try container.decodeIfPresent("store_id")
                taxTotal = try container.decodeIfPresent("tax_total")
                trackingCode = try container.decodeIfPresent("tracking_code")
                updatedAtForeign = try container.decodeIfPresent("updated_at_foreign")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(links, forKey: "_links")
                try container.encodeIfPresent(billingAddress, forKey: "billing_address")
                try container.encodeIfPresent(campaignId, forKey: "campaign_id")
                try container.encodeIfPresent(cancelledAtForeign, forKey: "cancelled_at_foreign")
                try container.encodeIfPresent(currencyCode, forKey: "currency_code")
                try container.encodeIfPresent(customer, forKey: "customer")
                try container.encodeIfPresent(discountTotal, forKey: "discount_total")
                try container.encodeIfPresent(financialStatus, forKey: "financial_status")
                try container.encodeIfPresent(fulfillmentStatus, forKey: "fulfillment_status")
                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(landingSite, forKey: "landing_site")
                try container.encodeIfPresent(lines, forKey: "lines")
                try container.encodeIfPresent(orderTotal, forKey: "order_total")
                try container.encodeIfPresent(orderURL, forKey: "order_url")
                try container.encodeIfPresent(outreach, forKey: "outreach")
                try container.encodeIfPresent(processedAtForeign, forKey: "processed_at_foreign")
                try container.encodeIfPresent(promos, forKey: "promos")
                try container.encodeIfPresent(shippingAddress, forKey: "shipping_address")
                try container.encodeIfPresent(shippingTotal, forKey: "shipping_total")
                try container.encodeIfPresent(storeId, forKey: "store_id")
                try container.encodeIfPresent(taxTotal, forKey: "tax_total")
                try container.encodeIfPresent(trackingCode, forKey: "tracking_code")
                try container.encodeIfPresent(updatedAtForeign, forKey: "updated_at_foreign")
              }
            }

            public init(links: [Links]? = nil, orders: [Orders]? = nil, totalItems: Int? = nil) {
              self.links = links
              self.orders = orders
              self.totalItems = totalItems
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              orders = try container.decodeArrayIfPresent("orders")
              totalItems = try container.decodeIfPresent("total_items")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(orders, forKey: "orders")
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
#endif
