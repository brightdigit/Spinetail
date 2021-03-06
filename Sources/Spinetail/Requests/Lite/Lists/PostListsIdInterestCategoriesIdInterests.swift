import Foundation
import Prch

public extension Lists {
  /**
   Add interest in category

   Create a new interest or 'group name' for a specific category.
   */
  enum PostListsIdInterestCategoriesIdInterests {
    public static let service = Service<Response>(id: "postListsIdInterestCategoriesIdInterests", tag: "lists", method: "POST", path: "/lists/{list_id}/interest-categories/{interest_category_id}/interests", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: BodyRequest {
      /** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
      public struct Body: Model {
        /** The name of the interest. This can be shown publicly on a subscription form. */
        public var name: String

        /** The display order for interests. */
        public var displayOrder: Int?

        public init(name: String, displayOrder: Int? = nil) {
          self.name = name
          self.displayOrder = displayOrder
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          name = try container.decode("name")
          displayOrder = try container.decodeIfPresent("display_order")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(displayOrder, forKey: "display_order")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The unique ID for the interest category. */
        public var interestCategoryId: String

        public init(listId: String, interestCategoryId: String) {
          self.listId = listId
          self.interestCategoryId = interestCategoryId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder _: RequestEncoder? = nil) {
        self.body = body
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        PostListsIdInterestCategoriesIdInterests.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, interestCategoryId: String, body: Body) {
        let options = Options(listId: listId, interestCategoryId: interestCategoryId)
        self.init(body: body, options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(options.interestCategoryId)")
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
      /** Assign subscribers to interests to group them together. Interests are referred to as 'group names' in the Mailchimp application. */
      public struct Status200: Model {
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

      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }
    }
  }
}
