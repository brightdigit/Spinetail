import Foundation
import Prch

public extension Lists {
  /**
   List interests in category

   Get a list of this category's interests.
   */
  enum GetListsIdInterestCategoriesIdInterests {
    public static let service = Service<Response>(id: "getListsIdInterestCategoriesIdInterests", tag: "lists", method: "GET", path: "/lists/{list_id}/interest-categories/{interest_category_id}/interests", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The unique ID for the interest category. */
        public var interestCategoryId: String

        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?

        public init(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) {
          self.listId = listId
          self.interestCategoryId = interestCategoryId
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdInterestCategoriesIdInterests.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, interestCategoryId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) {
        let options = Options(listId: listId, interestCategoryId: interestCategoryId, fields: fields, excludeFields: excludeFields, count: count, offset: offset)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(options.interestCategoryId)")
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

    public enum Response: Prch.Response, CustomStringConvertible, CustomDebugStringConvertible {
public var response: ClientResult<Status200, DefaultResponse> {
        switch self {
        case .defaultResponse(statusCode: let statusCode, let response):
          return .defaultResponse(statusCode, response)
        case .status200(let response):
          return .success(response)
        }
      }
      public typealias APIType = Mailchimp.API
      /** A list of this category's interests */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The id for the interest category. */
        public var categoryId: String?

        /** An array of this category's interests */
        public var interests: [Interests]?

        /** The unique list id that the interests belong to. */
        public var listId: String?

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

        /** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
        public struct Interests: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The id for the interest category. */
          public var categoryId: String?

          /** The display order for interests. */
          public var displayOrder: Int?

          /** The ID for the interest. */
          public var id: String?

          /** The ID for the list that this interest belongs to. */
          public var listId: String?

          /** The name of the interest. This can be shown publicly on a subscription form. */
          public var name: String?

          /** The number of subscribers associated with this interest. */
          public var subscriberCount: String?

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

          public init(links: [Links]? = nil, categoryId: String? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, subscriberCount: String? = nil) {
            self.links = links
            self.categoryId = categoryId
            self.displayOrder = displayOrder
            self.id = id
            self.listId = listId
            self.name = name
            self.subscriberCount = subscriberCount
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            categoryId = try container.decodeIfPresent("category_id")
            displayOrder = try container.decodeIfPresent("display_order")
            id = try container.decodeIfPresent("id")
            listId = try container.decodeIfPresent("list_id")
            name = try container.decodeIfPresent("name")
            subscriberCount = try container.decodeIfPresent("subscriber_count")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(categoryId, forKey: "category_id")
            try container.encodeIfPresent(displayOrder, forKey: "display_order")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(subscriberCount, forKey: "subscriber_count")
          }
        }

        public init(links: [Links]? = nil, categoryId: String? = nil, interests: [Interests]? = nil, listId: String? = nil, totalItems: Int? = nil) {
          self.links = links
          self.categoryId = categoryId
          self.interests = interests
          self.listId = listId
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          categoryId = try container.decodeIfPresent("category_id")
          interests = try container.decodeArrayIfPresent("interests")
          listId = try container.decodeIfPresent("list_id")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(categoryId, forKey: "category_id")
          try container.encodeIfPresent(interests, forKey: "interests")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
        }
      }

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

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
