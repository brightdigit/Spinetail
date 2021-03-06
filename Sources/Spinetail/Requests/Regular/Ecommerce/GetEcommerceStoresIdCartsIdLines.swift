import Foundation
import Prch

#if !os(watchOS)
  #if !os(watchOS)
    public extension Ecommerce {
      /**
       List cart line items

       Get information about a cart's line items.
       */
      enum GetEcommerceStoresIdCartsIdLines {
        public static let service = Service<Response>(id: "getEcommerceStoresIdCartsIdLines", tag: "ecommerce", method: "GET", path: "/ecommerce/stores/{store_id}/carts/{cart_id}/lines", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

            /** The store id. */
            public var storeId: String

            /** The id for the cart. */
            public var cartId: String

            public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, cartId: String) {
              self.fields = fields
              self.excludeFields = excludeFields
              self.count = count
              self.offset = offset
              self.storeId = storeId
              self.cartId = cartId
            }
          }

          public var options: Options

          public init(options: Options) {
            self.options = options
          }

          public typealias ResponseType = Response

          public var service: Service<Response> {
            GetEcommerceStoresIdCartsIdLines.service
          }

          /// convenience initialiser so an Option doesn't have to be created
          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, cartId: String) {
            let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, storeId: storeId, cartId: cartId)
            self.init(options: options)
          }

          public var path: String {
            service.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(options.cartId)")
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
          /** A collection of a cart's line items. */
          public struct Status200: Model {
            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** The cart id. */
            public var cartId: String?

            /** An array of objects, each representing a cart's line item. */
            public var lines: [Lines]?

            /** The store id. */
            public var storeId: String?

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

            public init(links: [Links]? = nil, cartId: String? = nil, lines: [Lines]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
              self.links = links
              self.cartId = cartId
              self.lines = lines
              self.storeId = storeId
              self.totalItems = totalItems
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              cartId = try container.decodeIfPresent("cart_id")
              lines = try container.decodeArrayIfPresent("lines")
              storeId = try container.decodeIfPresent("store_id")
              totalItems = try container.decodeIfPresent("total_items")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(cartId, forKey: "cart_id")
              try container.encodeIfPresent(lines, forKey: "lines")
              try container.encodeIfPresent(storeId, forKey: "store_id")
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
