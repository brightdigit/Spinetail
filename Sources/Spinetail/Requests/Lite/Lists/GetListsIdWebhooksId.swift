import Foundation
import Prch

public extension Lists {
  /**
   Get webhook info

   Get information about a specific webhook.
   */
  enum GetListsIdWebhooksId {
    public static let service = Service<Response>(id: "getListsIdWebhooksId", tag: "lists", method: "GET", path: "/lists/{list_id}/webhooks/{webhook_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The webhook's id. */
        public var webhookId: String

        public init(listId: String, webhookId: String) {
          self.listId = listId
          self.webhookId = webhookId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdWebhooksId.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, webhookId: String) {
        let options = Options(listId: listId, webhookId: webhookId)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(options.webhookId)")
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
      /** Webhook configured for the given list. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The events that can trigger the webhook and whether they are enabled. */
        public var events: Events?

        /** An string that uniquely identifies this webhook. */
        public var id: String?

        /** The unique id for the list. */
        public var listId: String?

        /** The possible sources of any events that can trigger the webhook and whether they are enabled. */
        public var sources: Sources?

        /** A valid URL for the Webhook. */
        public var url: String?

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

        /** The events that can trigger the webhook and whether they are enabled. */
        public struct Events: Model {
          /** Whether the webhook is triggered when a campaign is sent or cancelled. */
          public var campaign: Bool?

          /** Whether the webhook is triggered when a subscriber's email address is cleaned from the list. */
          public var cleaned: Bool?

          /** Whether the webhook is triggered when a subscriber's profile is updated. */
          public var profile: Bool?

          /** Whether the webhook is triggered when a list subscriber is added. */
          public var subscribe: Bool?

          /** Whether the webhook is triggered when a list member unsubscribes. */
          public var unsubscribe: Bool?

          /** Whether the webhook is triggered when a subscriber's email address is changed. */
          public var upemail: Bool?

          public init(campaign: Bool? = nil, cleaned: Bool? = nil, profile: Bool? = nil, subscribe: Bool? = nil, unsubscribe: Bool? = nil, upemail: Bool? = nil) {
            self.campaign = campaign
            self.cleaned = cleaned
            self.profile = profile
            self.subscribe = subscribe
            self.unsubscribe = unsubscribe
            self.upemail = upemail
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            campaign = try container.decodeIfPresent("campaign")
            cleaned = try container.decodeIfPresent("cleaned")
            profile = try container.decodeIfPresent("profile")
            subscribe = try container.decodeIfPresent("subscribe")
            unsubscribe = try container.decodeIfPresent("unsubscribe")
            upemail = try container.decodeIfPresent("upemail")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(campaign, forKey: "campaign")
            try container.encodeIfPresent(cleaned, forKey: "cleaned")
            try container.encodeIfPresent(profile, forKey: "profile")
            try container.encodeIfPresent(subscribe, forKey: "subscribe")
            try container.encodeIfPresent(unsubscribe, forKey: "unsubscribe")
            try container.encodeIfPresent(upemail, forKey: "upemail")
          }
        }

        /** The possible sources of any events that can trigger the webhook and whether they are enabled. */
        public struct Sources: Model {
          /** Whether the webhook is triggered by admin-initiated actions in the web interface. */
          public var admin: Bool?

          /** Whether the webhook is triggered by actions initiated via the API. */
          public var api: Bool?

          /** Whether the webhook is triggered by subscriber-initiated actions. */
          public var user: Bool?

          public init(admin: Bool? = nil, api: Bool? = nil, user: Bool? = nil) {
            self.admin = admin
            self.api = api
            self.user = user
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            admin = try container.decodeIfPresent("admin")
            api = try container.decodeIfPresent("api")
            user = try container.decodeIfPresent("user")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(admin, forKey: "admin")
            try container.encodeIfPresent(api, forKey: "api")
            try container.encodeIfPresent(user, forKey: "user")
          }
        }

        public init(links: [Links]? = nil, events: Events? = nil, id: String? = nil, listId: String? = nil, sources: Sources? = nil, url: String? = nil) {
          self.links = links
          self.events = events
          self.id = id
          self.listId = listId
          self.sources = sources
          self.url = url
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          events = try container.decodeIfPresent("events")
          id = try container.decodeIfPresent("id")
          listId = try container.decodeIfPresent("list_id")
          sources = try container.decodeIfPresent("sources")
          url = try container.decodeIfPresent("url")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(events, forKey: "events")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(sources, forKey: "sources")
          try container.encodeIfPresent(url, forKey: "url")
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
