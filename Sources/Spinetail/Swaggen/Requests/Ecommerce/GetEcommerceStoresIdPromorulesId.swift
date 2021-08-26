import Foundation
import Prch

public extension Ecommerce {
  /**
   Get promo rule

   Get information about a specific promo rule.
   */
  enum GetEcommerceStoresIdPromorulesId {
    public static let service = APIService<Response>(id: "getEcommerceStoresIdPromorulesId", tag: "ecommerce", method: "GET", path: "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The store id. */
        public var storeId: String

        /** The id for the promo rule of a store. */
        public var promoRuleId: String

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, promoRuleId: String) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.storeId = storeId
          self.promoRuleId = promoRuleId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: GetEcommerceStoresIdPromorulesId.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, promoRuleId: String) {
        let options = Options(fields: fields, excludeFields: excludeFields, storeId: storeId, promoRuleId: promoRuleId)
        self.init(options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(self.options.storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(self.options.promoRuleId)")
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
      /** Information about an Ecommerce Store's specific Promo Rule */
      public struct Status200: Model {
        /** The target that the discount applies to. */
        public enum Target: String, Codable, Equatable, CaseIterable {
          case perItem = "per_item"
          case total
          case shipping
        }

        /** Type of discount. For free shipping set type to fixed. */
        public enum `Type`: String, Codable, Equatable, CaseIterable {
          case fixed
          case percentage
        }

        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The amount of the promo code discount. If 'type' is 'fixed', the amount is treated as a monetary value. If 'type' is 'percentage', amount must be a decimal value between 0.0 and 1.0, inclusive. */
        public var amount: Float?

        /** The date and time the promotion was created in ISO 8601 format. */
        public var createdAtForeign: DateTime

        /** The description of a promotion restricted to UTF-8 characters with max length 255. */
        public var description: String?

        /** Whether the promo rule is currently enabled. */
        public var enabled: Bool?

        /** The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format. */
        public var endsAt: String?

        /** A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50. */
        public var id: String?

        /** The date and time when the promotion is in effect in ISO 8601 format. */
        public var startsAt: DateTime

        /** The target that the discount applies to. */
        public var target: Target?

        /** The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes. */
        public var title: String?

        /** Type of discount. For free shipping set type to fixed. */
        public var type: `Type`?

        /** The date and time the promotion was updated in ISO 8601 format. */
        public var updatedAtForeign: DateTime

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

        public init(links: [Links]? = nil, amount: Float? = nil, createdAtForeign: Date? = nil, description: String? = nil, enabled: Bool? = nil, endsAt: String? = nil, id: String? = nil, startsAt: Date? = nil, target: Target? = nil, title: String? = nil, type: Type? = nil, updatedAtForeign: Date? = nil) {
          self.links = links
          self.amount = amount
          self.createdAtForeign = .init(date: createdAtForeign)
          self.description = description
          self.enabled = enabled
          self.endsAt = endsAt
          self.id = id
          self.startsAt = .init(date: startsAt)
          self.target = target
          self.title = title
          self.type = type
          self.updatedAtForeign = .init(date: updatedAtForeign)
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          amount = try container.decodeIfPresent("amount")
          createdAtForeign = try container.decodeIfPresent("created_at_foreign")
          description = try container.decodeIfPresent("description")
          enabled = try container.decodeIfPresent("enabled")
          endsAt = try container.decodeIfPresent("ends_at")
          id = try container.decodeIfPresent("id")
          startsAt = try container.decodeIfPresent("starts_at")
          target = try container.decodeIfPresent("target")
          title = try container.decodeIfPresent("title")
          type = try container.decodeIfPresent("type")
          updatedAtForeign = try container.decodeIfPresent("updated_at_foreign")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(amount, forKey: "amount")
          try container.encodeIfPresent(createdAtForeign, forKey: "created_at_foreign")
          try container.encodeIfPresent(description, forKey: "description")
          try container.encodeIfPresent(enabled, forKey: "enabled")
          try container.encodeIfPresent(endsAt, forKey: "ends_at")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(startsAt, forKey: "starts_at")
          try container.encodeIfPresent(target, forKey: "target")
          try container.encodeIfPresent(title, forKey: "title")
          try container.encodeIfPresent(type, forKey: "type")
          try container.encodeIfPresent(updatedAtForeign, forKey: "updated_at_foreign")
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
