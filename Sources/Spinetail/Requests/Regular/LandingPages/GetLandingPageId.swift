import Foundation
import Prch

#if !os(watchOS)
  public extension LandingPages {
    /**
     Get landing page info

     Get information about a specific page.
     */
    enum GetLandingPageId {
      public static let service = Service<Response>(id: "getLandingPageId", tag: "landingPages", method: "GET", path: "/landing-pages/{page_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
          public var fields: [String]?

          /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
          public var excludeFields: [String]?

          /** The unique id for the page. */
          public var pageId: String

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, pageId: String) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.pageId = pageId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetLandingPageId.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, pageId: String) {
          let options = Options(fields: fields, excludeFields: excludeFields, pageId: pageId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(options.pageId)")
        }

        public var queryParameters: [String: Any] {
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
        /** A summary of an individual landing page's settings and content. */
        public struct Status200: Model {
          /** The status of this landing page. */
          public enum Status: String, Codable, Equatable, CaseIterable {
            case published
            case unpublished
            case draft
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The time this landing page was created. */
          public var createdAt: Date?

          /** Created by mobile or web */
          public var createdBySource: String?

          /** The description of this landing page. */
          public var description: String?

          /** A string that uniquely identifies this landing page. */
          public var id: String?

          /** The list's ID associated with this landing page. */
          public var listId: String?

          /** The name of this landing page. */
          public var name: String?

          /** The time this landing page was published. */
          public var publishedAt: Date?

          /** The status of this landing page. */
          public var status: Status?

          /** The ID of the store associated with this landing page. */
          public var storeId: String?

          /** The template_id of this landing page. */
          public var templateId: Int?

          /** The title of this landing page seen in the browser's title bar. */
          public var title: String?

          /** The tracking settings applied to this landing page. */
          public var tracking: Tracking?

          /** The time this landing page was unpublished. */
          public var unpublishedAt: Date?

          /** The time this landing page was updated at. */
          public var updatedAt: Date?

          /** The url of the published landing page. */
          public var url: String?

          /** The ID used in the Mailchimp web application. */
          public var webId: Int?

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

          /** The tracking settings applied to this landing page. */
          public struct Tracking: Model {
            /** Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google's restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/). */
            public var enableRestrictedDataProcessing: Bool?

            /** Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/). */
            public var trackWithMailchimp: Bool?

            public init(enableRestrictedDataProcessing: Bool? = nil, trackWithMailchimp: Bool? = nil) {
              self.enableRestrictedDataProcessing = enableRestrictedDataProcessing
              self.trackWithMailchimp = trackWithMailchimp
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              enableRestrictedDataProcessing = try container.decodeIfPresent("enable_restricted_data_processing")
              trackWithMailchimp = try container.decodeIfPresent("track_with_mailchimp")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(enableRestrictedDataProcessing, forKey: "enable_restricted_data_processing")
              try container.encodeIfPresent(trackWithMailchimp, forKey: "track_with_mailchimp")
            }
          }

          public init(links: [Links]? = nil, createdAt: Date? = nil, createdBySource: String? = nil, description: String? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, publishedAt: Date? = nil, status: Status? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: Tracking? = nil, unpublishedAt: Date? = nil, updatedAt: Date? = nil, url: String? = nil, webId: Int? = nil) {
            self.links = links
            self.createdAt = createdAt
            self.createdBySource = createdBySource
            self.description = description
            self.id = id
            self.listId = listId
            self.name = name
            self.publishedAt = publishedAt
            self.status = status
            self.storeId = storeId
            self.templateId = templateId
            self.title = title
            self.tracking = tracking
            self.unpublishedAt = unpublishedAt
            self.updatedAt = updatedAt
            self.url = url
            self.webId = webId
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            createdAt = try container.decodeIfPresent("created_at")
            createdBySource = try container.decodeIfPresent("created_by_source")
            description = try container.decodeIfPresent("description")
            id = try container.decodeIfPresent("id")
            listId = try container.decodeIfPresent("list_id")
            name = try container.decodeIfPresent("name")
            publishedAt = try container.decodeIfPresent("published_at")
            status = try container.decodeIfPresent("status")
            storeId = try container.decodeIfPresent("store_id")
            templateId = try container.decodeIfPresent("template_id")
            title = try container.decodeIfPresent("title")
            tracking = try container.decodeIfPresent("tracking")
            unpublishedAt = try container.decodeIfPresent("unpublished_at")
            updatedAt = try container.decodeIfPresent("updated_at")
            url = try container.decodeIfPresent("url")
            webId = try container.decodeIfPresent("web_id")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(createdBySource, forKey: "created_by_source")
            try container.encodeIfPresent(description, forKey: "description")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(publishedAt, forKey: "published_at")
            try container.encodeIfPresent(status, forKey: "status")
            try container.encodeIfPresent(storeId, forKey: "store_id")
            try container.encodeIfPresent(templateId, forKey: "template_id")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(tracking, forKey: "tracking")
            try container.encodeIfPresent(unpublishedAt, forKey: "unpublished_at")
            try container.encodeIfPresent(updatedAt, forKey: "updated_at")
            try container.encodeIfPresent(url, forKey: "url")
            try container.encodeIfPresent(webId, forKey: "web_id")
          }
        }

        public typealias SuccessType = Status200
        public typealias FailureType = DefaultResponse

        /** Landing Pages Instance */
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
