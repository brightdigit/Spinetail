import Foundation
import Prch

#if !os(watchOS)
  public extension Reports {
    /**
     List campaign product activity

     Get breakdown of product activity for a campaign
     */
    enum GetReportsIdEcommerceProductActivity {
      public static let service = Service<Response>(id: "getReportsIdEcommerceProductActivity", tag: "reports", method: "GET", path: "/reports/{campaign_id}/ecommerce-product-activity", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      /** Returns files sorted by the specified field. */
      public enum SortField: String, Codable, Equatable, CaseIterable {
        case title
        case totalRevenue = "total_revenue"
        case totalPurchased = "total_purchased"
      }

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

          /** Returns files sorted by the specified field. */
          public var sortField: SortField?

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String, sortField: SortField? = nil) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.count = count
            self.offset = offset
            self.campaignId = campaignId
            self.sortField = sortField
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetReportsIdEcommerceProductActivity.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String, sortField: SortField? = nil) {
          let options = Options(fields: fields, excludeFields: excludeFields, count: count, offset: offset, campaignId: campaignId, sortField: sortField)
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
          if let sortField = options.sortField?.encode() {
            params["sort_field"] = sortField
          }
          return params
        }
      }

      public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
        public var response: ClientResult<Status200, DefaultResponse> {
          switch self {
          case let .defaultResponse(statusCode: statusCode, response):
            return .defaultResponse(statusCode, response)

          case let .status200(response):
            return .success(response)
          }
        }

        public typealias APIType = Mailchimp.API
        /** A collection of ecommerce products. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          public var products: [Products]?

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

          /** A collection of ecommerce products. */
          public struct Products: Model {
            public var currencyCode: String?

            public var imageURL: String?

            public var recommendationPurchased: Int?

            public var recommendationTotal: Int?

            public var sku: String?

            public var title: String?

            public var totalPurchased: Double?

            public var totalRevenue: Double?

            public init(currencyCode: String? = nil, imageURL: String? = nil, recommendationPurchased: Int? = nil, recommendationTotal: Int? = nil, sku: String? = nil, title: String? = nil, totalPurchased: Double? = nil, totalRevenue: Double? = nil) {
              self.currencyCode = currencyCode
              self.imageURL = imageURL
              self.recommendationPurchased = recommendationPurchased
              self.recommendationTotal = recommendationTotal
              self.sku = sku
              self.title = title
              self.totalPurchased = totalPurchased
              self.totalRevenue = totalRevenue
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              currencyCode = try container.decodeIfPresent("currency_code")
              imageURL = try container.decodeIfPresent("image_url")
              recommendationPurchased = try container.decodeIfPresent("recommendation_purchased")
              recommendationTotal = try container.decodeIfPresent("recommendation_total")
              sku = try container.decodeIfPresent("sku")
              title = try container.decodeIfPresent("title")
              totalPurchased = try container.decodeIfPresent("total_purchased")
              totalRevenue = try container.decodeIfPresent("total_revenue")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(currencyCode, forKey: "currency_code")
              try container.encodeIfPresent(imageURL, forKey: "image_url")
              try container.encodeIfPresent(recommendationPurchased, forKey: "recommendation_purchased")
              try container.encodeIfPresent(recommendationTotal, forKey: "recommendation_total")
              try container.encodeIfPresent(sku, forKey: "sku")
              try container.encodeIfPresent(title, forKey: "title")
              try container.encodeIfPresent(totalPurchased, forKey: "total_purchased")
              try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
            }
          }

          public init(links: [Links]? = nil, products: [Products]? = nil, totalItems: Int? = nil) {
            self.links = links
            self.products = products
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            products = try container.decodeArrayIfPresent("products")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(products, forKey: "products")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

        public typealias SuccessType = Status200
        public typealias FailureType = DefaultResponse

        /** Ecommerce Product Activity Instance */
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
