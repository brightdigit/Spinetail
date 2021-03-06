import Foundation
import Prch

#if !os(watchOS)
  public extension ConnectedSites {
    /**
     Get connected site

     Get information about a specific connected site.
     */
    enum GetConnectedSitesId {
      public static let service = Service<Response>(id: "getConnectedSitesId", tag: "connectedSites", method: "GET", path: "/connected-sites/{connected_site_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
          public var fields: [String]?

          /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
          public var excludeFields: [String]?

          /** The unique identifier for the site. */
          public var connectedSiteId: String

          public init(fields: [String]? = nil, excludeFields: [String]? = nil, connectedSiteId: String) {
            self.fields = fields
            self.excludeFields = excludeFields
            self.connectedSiteId = connectedSiteId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetConnectedSitesId.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(fields: [String]? = nil, excludeFields: [String]? = nil, connectedSiteId: String) {
          let options = Options(fields: fields, excludeFields: excludeFields, connectedSiteId: connectedSiteId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(options.connectedSiteId)")
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
        /** Information about a specific connected site. */
        public struct Status200: Model {
          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The date and time the connected site was created in ISO 8601 format. */
          public var createdAt: Date?

          /** The connected site domain. */
          public var domain: String?

          /** The unique identifier for the site. */
          public var foreignId: String?

          /** The platform of the connected site. */
          public var platform: String?

          /** The script used to connect your site with Mailchimp. */
          public var siteScript: SiteScript?

          /** The unique identifier for the ecommerce store that's associated with the connected site (if any). The store_id for a specific connected site can't change. */
          public var storeId: String?

          /** The date and time the connected site was last updated in ISO 8601 format. */
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

          /** The script used to connect your site with Mailchimp. */
          public struct SiteScript: Model {
            /** A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp. */
            public var fragment: String?

            /** The URL used for any integrations that offer built-in support for connected sites. */
            public var url: String?

            public init(fragment: String? = nil, url: String? = nil) {
              self.fragment = fragment
              self.url = url
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              fragment = try container.decodeIfPresent("fragment")
              url = try container.decodeIfPresent("url")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(fragment, forKey: "fragment")
              try container.encodeIfPresent(url, forKey: "url")
            }
          }

          public init(links: [Links]? = nil, createdAt: Date? = nil, domain: String? = nil, foreignId: String? = nil, platform: String? = nil, siteScript: SiteScript? = nil, storeId: String? = nil, updatedAt: Date? = nil) {
            self.links = links
            self.createdAt = createdAt
            self.domain = domain
            self.foreignId = foreignId
            self.platform = platform
            self.siteScript = siteScript
            self.storeId = storeId
            self.updatedAt = updatedAt
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            createdAt = try container.decodeIfPresent("created_at")
            domain = try container.decodeIfPresent("domain")
            foreignId = try container.decodeIfPresent("foreign_id")
            platform = try container.decodeIfPresent("platform")
            siteScript = try container.decodeIfPresent("site_script")
            storeId = try container.decodeIfPresent("store_id")
            updatedAt = try container.decodeIfPresent("updated_at")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(createdAt, forKey: "created_at")
            try container.encodeIfPresent(domain, forKey: "domain")
            try container.encodeIfPresent(foreignId, forKey: "foreign_id")
            try container.encodeIfPresent(platform, forKey: "platform")
            try container.encodeIfPresent(siteScript, forKey: "site_script")
            try container.encodeIfPresent(storeId, forKey: "store_id")
            try container.encodeIfPresent(updatedAt, forKey: "updated_at")
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
