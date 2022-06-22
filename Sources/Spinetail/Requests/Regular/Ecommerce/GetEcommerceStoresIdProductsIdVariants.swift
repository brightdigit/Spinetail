import Foundation
import Prch

#if !os(watchOS)
  #if !os(watchOS)
    public extension Ecommerce {
      /**
       List product variants

       Get information about a product's variants.
       */
      enum GetEcommerceStoresIdProductsIdVariants {
        public static let service = Service<Response>(id: "getEcommerceStoresIdProductsIdVariants", tag: "ecommerce", method: "GET", path: "/ecommerce/stores/{store_id}/products/{product_id}/variants", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

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

            /** The id for the product of a store. */
            public var productId: String

            public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, productId: String) {
              self.fields = fields
              self.excludeFields = excludeFields
              self.count = count
              self.offset = offset
              self.storeId = storeId
              self.productId = productId
            }
          }

          public var options: Options

          public init(options: Options) {
            self.options = options
          }

          public typealias ResponseType = Response

          public var service: Service<Response> {
            GetEcommerceStoresIdProductsIdVariants.service
          }

          /// convenience initialiser so an Option doesn't have to be created
          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, productId: String) {
            let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, storeId: storeId, productId: productId)
            self.init(options: options)
          }

          public var path: String {
            service.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(options.productId)")
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
          /** A collection of a product's variants. */
          public struct Status200: Model {
            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** The product id. */
            public var productId: String?

            /** The store id. */
            public var storeId: String?

            /** The total number of items matching the query regardless of pagination. */
            public var totalItems: Int?

            /** An array of objects, each representing a product's variants. */
            public var variants: [Variants]?

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

            /** Information about a specific product variant. */
            public struct Variants: Model {
              /** A list of link types and descriptions for the API schema documents. */
              public var links: [Links]?

              /** The backorders of a product variant. */
              public var backorders: String?

              /** The date and time the product was created in ISO 8601 format. */
              public var createdAt: Date?

              /** A unique identifier for the product variant. */
              public var id: String?

              /** The image URL for a product variant. */
              public var imageURL: String?

              /** The inventory quantity of a product variant. */
              public var inventoryQuantity: Int?

              /** The price of a product variant. */
              public var price: Double?

              /** The stock keeping unit (SKU) of a product variant. */
              public var sku: String?

              /** The title of a product variant. */
              public var title: String?

              /** The date and time the product was last updated in ISO 8601 format. */
              public var updatedAt: Date?

              /** The URL for a product variant. */
              public var url: String?

              /** The visibility of a product variant. */
              public var visibility: String?

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

              public init(links: [Links]? = nil, backorders: String? = nil, createdAt: Date? = nil, id: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, updatedAt: Date? = nil, url: String? = nil, visibility: String? = nil) {
                self.links = links
                self.backorders = backorders
                self.createdAt = createdAt
                self.id = id
                self.imageURL = imageURL
                self.inventoryQuantity = inventoryQuantity
                self.price = price
                self.sku = sku
                self.title = title
                self.updatedAt = updatedAt
                self.url = url
                self.visibility = visibility
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                links = try container.decodeArrayIfPresent("_links")
                backorders = try container.decodeIfPresent("backorders")
                createdAt = try container.decodeIfPresent("created_at")
                id = try container.decodeIfPresent("id")
                imageURL = try container.decodeIfPresent("image_url")
                inventoryQuantity = try container.decodeIfPresent("inventory_quantity")
                price = try container.decodeIfPresent("price")
                sku = try container.decodeIfPresent("sku")
                title = try container.decodeIfPresent("title")
                updatedAt = try container.decodeIfPresent("updated_at")
                url = try container.decodeIfPresent("url")
                visibility = try container.decodeIfPresent("visibility")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(links, forKey: "_links")
                try container.encodeIfPresent(backorders, forKey: "backorders")
                try container.encodeIfPresent(createdAt, forKey: "created_at")
                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(imageURL, forKey: "image_url")
                try container.encodeIfPresent(inventoryQuantity, forKey: "inventory_quantity")
                try container.encodeIfPresent(price, forKey: "price")
                try container.encodeIfPresent(sku, forKey: "sku")
                try container.encodeIfPresent(title, forKey: "title")
                try container.encodeIfPresent(updatedAt, forKey: "updated_at")
                try container.encodeIfPresent(url, forKey: "url")
                try container.encodeIfPresent(visibility, forKey: "visibility")
              }
            }

            public init(links: [Links]? = nil, productId: String? = nil, storeId: String? = nil, totalItems: Int? = nil, variants: [Variants]? = nil) {
              self.links = links
              self.productId = productId
              self.storeId = storeId
              self.totalItems = totalItems
              self.variants = variants
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              productId = try container.decodeIfPresent("product_id")
              storeId = try container.decodeIfPresent("store_id")
              totalItems = try container.decodeIfPresent("total_items")
              variants = try container.decodeArrayIfPresent("variants")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(productId, forKey: "product_id")
              try container.encodeIfPresent(storeId, forKey: "store_id")
              try container.encodeIfPresent(totalItems, forKey: "total_items")
              try container.encodeIfPresent(variants, forKey: "variants")
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
