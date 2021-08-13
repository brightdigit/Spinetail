import Foundation

public extension MailchimpKit.Ecommerce {
  /**
   Update product

   Update a specific product.
   */
  enum PatchEcommerceStoresIdProductsId {
    public static let service = APIService<Response>(id: "patchEcommerceStoresIdProductsId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/products/{product_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Information about a specific product. */
      public struct Body: MailchimpModel {
        /** The description of a product. */
        public var description: String?

        /** The handle of a product. */
        public var handle: String?

        /** The image URL for a product. */
        public var imageURL: String?

        /** An array of the product's images. */
        public var images: [Images]?

        /** The date and time the product was published in ISO 8601 format. */
        public var publishedAtForeign: DateTime?

        /** The title of a product. */
        public var title: String?

        /** The type of product. */
        public var type: String?

        /** The URL for a product. */
        public var url: String?

        /** An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product. */
        public var variants: [Variants]?

        /** The vendor for a product. */
        public var vendor: String?

        /** Information about a specific product image. */
        public struct Images: MailchimpModel {
          /** A unique identifier for the product image. */
          public var id: String?

          /** The URL for a product image. */
          public var url: String?

          /** The list of product variants using the image. */
          public var variantIds: [String]?

          public init(id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
            self.id = id
            self.url = url
            self.variantIds = variantIds
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decodeIfPresent("id")
            url = try container.decodeIfPresent("url")
            variantIds = try container.decodeArrayIfPresent("variant_ids")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(variantIds, forKey: "variant_ids")
          }
        }

        /** Information about a specific product variant. */
        public struct Variants: MailchimpModel {
          /** The backorders of a product variant. */
          public var backorders: String?

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

          /** The URL for a product variant. */
          public var url: String?

          /** The visibility of a product variant. */
          public var visibility: String?

          public init(backorders: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, url: String? = nil, visibility: String? = nil) {
            self.backorders = backorders
            self.imageURL = imageURL
            self.inventoryQuantity = inventoryQuantity
            self.price = price
            self.sku = sku
            self.title = title
            self.url = url
            self.visibility = visibility
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            backorders = try container.decodeIfPresent("backorders")
            imageURL = try container.decodeIfPresent("image_url")
            inventoryQuantity = try container.decodeIfPresent("inventory_quantity")
            price = try container.decodeIfPresent("price")
            sku = try container.decodeIfPresent("sku")
            title = try container.decodeIfPresent("title")
            url = try container.decodeIfPresent("url")
            visibility = try container.decodeIfPresent("visibility")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(backorders, forKey: "backorders")
            try container.encodeIfPresent(imageURL, forKey: "image_url")
            try container.encodeIfPresent(inventoryQuantity, forKey: "inventory_quantity")
            try container.encodeIfPresent(price, forKey: "price")
            try container.encodeIfPresent(sku, forKey: "sku")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(visibility, forKey: "visibility")
          }
        }

        public init(description: String? = nil, handle: String? = nil, imageURL: String? = nil, images: [Images]? = nil, publishedAtForeign: DateTime? = nil, title: String? = nil, type: String? = nil, url: String? = nil, variants: [Variants]? = nil, vendor: String? = nil) {
          self.description = description
          self.handle = handle
          self.imageURL = imageURL
          self.images = images
          self.publishedAtForeign = publishedAtForeign
          self.title = title
          self.type = type
          self.url = url
          self.variants = variants
          self.vendor = vendor
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          description = try container.decodeIfPresent("description")
          handle = try container.decodeIfPresent("handle")
          imageURL = try container.decodeIfPresent("image_url")
          images = try container.decodeArrayIfPresent("images")
          publishedAtForeign = try container.decodeIfPresent("published_at_foreign")
          title = try container.decodeIfPresent("title")
          type = try container.decodeIfPresent("type")
          url = try container.decodeIfPresent("url")
          variants = try container.decodeArrayIfPresent("variants")
          vendor = try container.decodeIfPresent("vendor")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(description, forKey: "description")
          try container.encodeIfPresent(handle, forKey: "handle")
          try container.encodeIfPresent(imageURL, forKey: "image_url")
          try container.encodeIfPresent(images, forKey: "images")
          try container.encodeIfPresent(publishedAtForeign, forKey: "published_at_foreign")
          try container.encodeIfPresent(title, forKey: "title")
          try container.encodeIfPresent(type, forKey: "type")
          try container.encodeIfPresent(url, forKey: "url")
          try container.encodeIfPresent(variants, forKey: "variants")
          try container.encodeIfPresent(vendor, forKey: "vendor")
        }
      }

      public struct Options {
        /** The store id. */
        public var storeId: String

        /** The id for the product of a store. */
        public var productId: String

        public init(storeId: String, productId: String) {
          self.storeId = storeId
          self.productId = productId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PatchEcommerceStoresIdProductsId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(storeId: String, productId: String, body: Body) {
        let options = Options(storeId: storeId, productId: productId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(options.productId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific product. */
      public struct Status200: MailchimpModel {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The currency code */
        public var currencyCode: String?

        /** The description of a product. */
        public var description: String?

        /** The handle of a product. */
        public var handle: String?

        /** A unique identifier for the product. */
        public var id: String?

        /** The image URL for a product. */
        public var imageURL: String?

        /** An array of the product's images. */
        public var images: [Images]?

        /** The date and time the product was published in ISO 8601 format. */
        public var publishedAtForeign: DateTime?

        /** The title of a product. */
        public var title: String?

        /** The type of product. */
        public var type: String?

        /** The URL for a product. */
        public var url: String?

        /** Returns up to 50 of the product's variants. To retrieve all variants use [Product Variants](https://mailchimp.com/developer/marketing/api/ecommerce-product-variants/). */
        public var variants: [Variants]?

        /** The vendor for a product. */
        public var vendor: String?

        /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
        public struct Links: MailchimpModel {
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

        /** Information about a specific product image. */
        public struct Images: MailchimpModel {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** A unique identifier for the product image. */
          public var id: String?

          /** The URL for a product image. */
          public var url: String?

          /** The list of product variants using the image. */
          public var variantIds: [String]?

          /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
          public struct Links: MailchimpModel {
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

          public init(links: [Links]? = nil, id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
            self.links = links
            self.id = id
            self.url = url
            self.variantIds = variantIds
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            id = try container.decodeIfPresent("id")
            url = try container.decodeIfPresent("url")
            variantIds = try container.decodeArrayIfPresent("variant_ids")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(variantIds, forKey: "variant_ids")
          }
        }

        /** Information about a specific product variant. */
        public struct Variants: MailchimpModel {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The backorders of a product variant. */
          public var backorders: String?

          /** The date and time the product was created in ISO 8601 format. */
          public var createdAt: DateTime?

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
          public var updatedAt: DateTime?

          /** The URL for a product variant. */
          public var url: String?

          /** The visibility of a product variant. */
          public var visibility: String?

          /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
          public struct Links: MailchimpModel {
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

          public init(links: [Links]? = nil, backorders: String? = nil, createdAt: DateTime? = nil, id: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, updatedAt: DateTime? = nil, url: String? = nil, visibility: String? = nil) {
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

        public init(links: [Links]? = nil, currencyCode: String? = nil, description: String? = nil, handle: String? = nil, id: String? = nil, imageURL: String? = nil, images: [Images]? = nil, publishedAtForeign: DateTime? = nil, title: String? = nil, type: String? = nil, url: String? = nil, variants: [Variants]? = nil, vendor: String? = nil) {
          self.links = links
          self.currencyCode = currencyCode
          self.description = description
          self.handle = handle
          self.id = id
          self.imageURL = imageURL
          self.images = images
          self.publishedAtForeign = publishedAtForeign
          self.title = title
          self.type = type
          self.url = url
          self.variants = variants
          self.vendor = vendor
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          currencyCode = try container.decodeIfPresent("currency_code")
          description = try container.decodeIfPresent("description")
          handle = try container.decodeIfPresent("handle")
          id = try container.decodeIfPresent("id")
          imageURL = try container.decodeIfPresent("image_url")
          images = try container.decodeArrayIfPresent("images")
          publishedAtForeign = try container.decodeIfPresent("published_at_foreign")
          title = try container.decodeIfPresent("title")
          type = try container.decodeIfPresent("type")
          url = try container.decodeIfPresent("url")
          variants = try container.decodeArrayIfPresent("variants")
          vendor = try container.decodeIfPresent("vendor")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(currencyCode, forKey: "currency_code")
          try container.encodeIfPresent(description, forKey: "description")
          try container.encodeIfPresent(handle, forKey: "handle")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(imageURL, forKey: "image_url")
          try container.encodeIfPresent(images, forKey: "images")
          try container.encodeIfPresent(publishedAtForeign, forKey: "published_at_foreign")
          try container.encodeIfPresent(title, forKey: "title")
          try container.encodeIfPresent(type, forKey: "type")
          try container.encodeIfPresent(url, forKey: "url")
          try container.encodeIfPresent(variants, forKey: "variants")
          try container.encodeIfPresent(vendor, forKey: "vendor")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
      public struct DefaultResponse: MailchimpModel {
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
