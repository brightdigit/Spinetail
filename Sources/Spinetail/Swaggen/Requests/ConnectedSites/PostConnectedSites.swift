import Foundation
import Prch

public extension ConnectedSites {
  /**
   Add connected site

   Create a new Mailchimp connected site.
   */
  enum PostConnectedSites {
    public static let service = APIService<Response>(id: "postConnectedSites", tag: "connectedSites", method: "POST", path: "/connected-sites", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Information about a specific connected site. */
      public struct Body: Model {
        /** The connected site domain. */
        public var domain: String

        /** The unique identifier for the site. */
        public var foreignId: String

        public init(domain: String, foreignId: String) {
          self.domain = domain
          self.foreignId = foreignId
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          domain = try container.decode("domain")
          foreignId = try container.decode("foreign_id")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(domain, forKey: "domain")
          try container.encode(foreignId, forKey: "foreign_id")
        }
      }

      public var body: Body

      public init(body: Body, encoder: RequestEncoder? = nil) {
        self.body = body
        super.init(service: PostConnectedSites.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** Information about a specific connected site. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The date and time the connected site was created in ISO 8601 format. */
        public var createdAt: DateTime

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
        public var updatedAt: DateTime

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
          self.createdAt = .init(date: createdAt)
          self.domain = domain
          self.foreignId = foreignId
          self.platform = platform
          self.siteScript = siteScript
          self.storeId = storeId
          self.updatedAt = .init(date: updatedAt)
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
