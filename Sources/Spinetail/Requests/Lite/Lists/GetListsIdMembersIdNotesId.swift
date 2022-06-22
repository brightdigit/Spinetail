import Foundation
import Prch

public extension Lists {
  /**
   Get member note

   Get a specific note for a specific list member.
   */
  enum GetListsIdMembersIdNotesId {
    public static let service = Service<Response>(id: "getListsIdMembersIdNotesId", tag: "lists", method: "GET", path: "/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var subscriberHash: String

        /** The id for the note. */
        public var noteId: String

        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        public init(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
          self.listId = listId
          self.subscriberHash = subscriberHash
          self.noteId = noteId
          self.fields = fields
          self.excludeFields = excludeFields
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdMembersIdNotesId.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, subscriberHash: String, noteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) {
        let options = Options(listId: listId, subscriberHash: subscriberHash, noteId: noteId, fields: fields, excludeFields: excludeFields)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(options.subscriberHash)").replacingOccurrences(of: "{" + "note_id" + "}", with: "\(options.noteId)")
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
      /** A specific note for a specific member. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The date and time the note was created in ISO 8601 format. */
        public var createdAt: Date?

        /** The author of the note. */
        public var createdBy: String?

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var emailId: String?

        /** The note id. */
        public var id: Int?

        /** The unique id for the list. */
        public var listId: String?

        /** The content of the note. */
        public var note: String?

        /** The date and time the note was last updated in ISO 8601 format. */
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

        public init(links: [Links]? = nil, createdAt: Date? = nil, createdBy: String? = nil, emailId: String? = nil, id: Int? = nil, listId: String? = nil, note: String? = nil, updatedAt: Date? = nil) {
          self.links = links
          self.createdAt = createdAt
          self.createdBy = createdBy
          self.emailId = emailId
          self.id = id
          self.listId = listId
          self.note = note
          self.updatedAt = updatedAt
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          createdAt = try container.decodeIfPresent("created_at")
          createdBy = try container.decodeIfPresent("created_by")
          emailId = try container.decodeIfPresent("email_id")
          id = try container.decodeIfPresent("id")
          listId = try container.decodeIfPresent("list_id")
          note = try container.decodeIfPresent("note")
          updatedAt = try container.decodeIfPresent("updated_at")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(createdAt, forKey: "created_at")
          try container.encodeIfPresent(createdBy, forKey: "created_by")
          try container.encodeIfPresent(emailId, forKey: "email_id")
          try container.encodeIfPresent(id, forKey: "id")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(note, forKey: "note")
          try container.encodeIfPresent(updatedAt, forKey: "updated_at")
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
