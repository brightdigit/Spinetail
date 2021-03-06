import Foundation
import Prch

public extension Lists {
  /**
   List merge fields

   Get a list of all merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list.
   */
  enum GetListsIdMergeFields {
    public static let service = Service<Response>(id: "getListsIdMergeFields", tag: "lists", method: "GET", path: "/lists/{list_id}/merge-fields", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?

        /** The merge field type. */
        public var type: String?

        /** Whether it's a required merge field. */
        public var required: Bool?

        public init(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, required: Bool? = nil) {
          self.listId = listId
          self.fields = fields
          self.excludeFields = excludeFields
          self.count = count
          self.offset = offset
          self.type = type
          self.required = required
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetListsIdMergeFields.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, type: String? = nil, required: Bool? = nil) {
        let options = Options(listId: listId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, type: type, required: required)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)")
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
        if let type = options.type {
          params["type"] = type
        }
        if let required = options.required {
          params["required"] = required
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
      /** The merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) for an audience. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The list id. */
        public var listId: String?

        /** An array of objects, each representing a merge field resource. */
        public var mergeFields: [MergeFields]?

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

        /** A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list. */
        public struct MergeFields: Model {
          /** The [type](https://mailchimp.com/help/manage-audience-signup-form-fields/#Audience_field_types) for the merge field. */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case text
            case number
            case address
            case phone
            case date
            case url
            case imageurl
            case radio
            case dropdown
            case birthday
            case zip
          }

          /** A list of link types and descriptions for the API schema documents. */
          public var links: [Links]?

          /** The default value for the merge field if `null`. */
          public var defaultValue: String?

          /** The order that the merge field displays on the list signup form. */
          public var displayOrder: Int?

          /** Extra text to help the subscriber fill out the form. */
          public var helpText: String?

          /** A string that identifies this merge field collections' list. */
          public var listId: String?

          /** An unchanging id for the merge field. */
          public var mergeId: Int?

          /** The name of the merge field (audience field). */
          public var name: String?

          /** Extra options for some merge field types. */
          public var options: Options?

          /** Whether the merge field is displayed on the signup form. */
          public var `public`: Bool?

          /** The boolean value if the merge field is required. */
          public var required: Bool?

          /** The merge tag used in Mailchimp campaigns and for the /members endpoint. */
          public var tag: String?

          /** The [type](https://mailchimp.com/help/manage-audience-signup-form-fields/#Audience_field_types) for the merge field. */
          public var type: `Type`?

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

          /** Extra options for some merge field types. */
          public struct Options: Model {
            /** In a radio or dropdown non-group field, the available options for members to pick from. */
            public var choices: [String]?

            /** In a date or birthday field, the format of the date. */
            public var dateFormat: String?

            /** In an address field, the default country code if none supplied. */
            public var defaultCountry: Int?

            /** In a phone field, the phone number type: US or International. */
            public var phoneFormat: String?

            /** In a text field, the default length of the text field. */
            public var size: Int?

            public init(choices: [String]? = nil, dateFormat: String? = nil, defaultCountry: Int? = nil, phoneFormat: String? = nil, size: Int? = nil) {
              self.choices = choices
              self.dateFormat = dateFormat
              self.defaultCountry = defaultCountry
              self.phoneFormat = phoneFormat
              self.size = size
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              choices = try container.decodeArrayIfPresent("choices")
              dateFormat = try container.decodeIfPresent("date_format")
              defaultCountry = try container.decodeIfPresent("default_country")
              phoneFormat = try container.decodeIfPresent("phone_format")
              size = try container.decodeIfPresent("size")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(choices, forKey: "choices")
              try container.encodeIfPresent(dateFormat, forKey: "date_format")
              try container.encodeIfPresent(defaultCountry, forKey: "default_country")
              try container.encodeIfPresent(phoneFormat, forKey: "phone_format")
              try container.encodeIfPresent(size, forKey: "size")
            }
          }

          public init(links: [Links]? = nil, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, listId: String? = nil, mergeId: Int? = nil, name: String? = nil, options: Options? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil, type: Type? = nil) {
            self.links = links
            self.defaultValue = defaultValue
            self.displayOrder = displayOrder
            self.helpText = helpText
            self.listId = listId
            self.mergeId = mergeId
            self.name = name
            self.options = options
            self.public = `public`
            self.required = required
            self.tag = tag
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            links = try container.decodeArrayIfPresent("_links")
            defaultValue = try container.decodeIfPresent("default_value")
            displayOrder = try container.decodeIfPresent("display_order")
            helpText = try container.decodeIfPresent("help_text")
            listId = try container.decodeIfPresent("list_id")
            mergeId = try container.decodeIfPresent("merge_id")
            name = try container.decodeIfPresent("name")
            options = try container.decodeIfPresent("options")
            `public` = try container.decodeIfPresent("public")
            required = try container.decodeIfPresent("required")
            tag = try container.decodeIfPresent("tag")
            type = try container.decodeIfPresent("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(links, forKey: "_links")
            try container.encodeIfPresent(defaultValue, forKey: "default_value")
            try container.encodeIfPresent(displayOrder, forKey: "display_order")
            try container.encodeIfPresent(helpText, forKey: "help_text")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(mergeId, forKey: "merge_id")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(options, forKey: "options")
            try container.encodeIfPresent(`public`, forKey: "public")
            try container.encodeIfPresent(required, forKey: "required")
            try container.encodeIfPresent(tag, forKey: "tag")
            try container.encodeIfPresent(type, forKey: "type")
          }
        }

        public init(links: [Links]? = nil, listId: String? = nil, mergeFields: [MergeFields]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.listId = listId
          self.mergeFields = mergeFields
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          listId = try container.decodeIfPresent("list_id")
          mergeFields = try container.decodeArrayIfPresent("merge_fields")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(mergeFields, forKey: "merge_fields")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
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
