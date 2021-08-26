import Foundation
import Prch

public extension Lists {
  /**
   Update merge field

   Update a specific merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) in a list.
   */
  enum PatchListsIdMergeFieldsId {
    public static let service = APIService<Response>(id: "patchListsIdMergeFieldsId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/merge-fields/{merge_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list. */
      public struct Body: Model {
        /** The name of the merge field (audience field). */
        public var name: String

        /** The default value for the merge field if `null`. */
        public var defaultValue: String?

        /** The order that the merge field displays on the list signup form. */
        public var displayOrder: Int?

        /** Extra text to help the subscriber fill out the form. */
        public var helpText: String?

        /** Extra options for some merge field types. */
        public var options: Options?

        /** Whether the merge field is displayed on the signup form. */
        public var `public`: Bool?

        /** Whether the merge field is required to import a contact. */
        public var required: Bool?

        /** The merge tag used in Mailchimp campaigns and for the /members endpoint. */
        public var tag: String?

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

          public init(choices: [String]? = nil, dateFormat: String? = nil, defaultCountry: Int? = nil, phoneFormat: String? = nil) {
            self.choices = choices
            self.dateFormat = dateFormat
            self.defaultCountry = defaultCountry
            self.phoneFormat = phoneFormat
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            choices = try container.decodeArrayIfPresent("choices")
            dateFormat = try container.decodeIfPresent("date_format")
            defaultCountry = try container.decodeIfPresent("default_country")
            phoneFormat = try container.decodeIfPresent("phone_format")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(choices, forKey: "choices")
            try container.encodeIfPresent(dateFormat, forKey: "date_format")
            try container.encodeIfPresent(defaultCountry, forKey: "default_country")
            try container.encodeIfPresent(phoneFormat, forKey: "phone_format")
          }
        }

        public init(name: String, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, options: Options? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil) {
          self.name = name
          self.defaultValue = defaultValue
          self.displayOrder = displayOrder
          self.helpText = helpText
          self.options = options
          self.public = `public`
          self.required = required
          self.tag = tag
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          name = try container.decode("name")
          defaultValue = try container.decodeIfPresent("default_value")
          displayOrder = try container.decodeIfPresent("display_order")
          helpText = try container.decodeIfPresent("help_text")
          options = try container.decodeIfPresent("options")
          `public` = try container.decodeIfPresent("public")
          required = try container.decodeIfPresent("required")
          tag = try container.decodeIfPresent("tag")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(name, forKey: "name")
          try container.encodeIfPresent(defaultValue, forKey: "default_value")
          try container.encodeIfPresent(displayOrder, forKey: "display_order")
          try container.encodeIfPresent(helpText, forKey: "help_text")
          try container.encodeIfPresent(options, forKey: "options")
          try container.encodeIfPresent(`public`, forKey: "public")
          try container.encodeIfPresent(required, forKey: "required")
          try container.encodeIfPresent(tag, forKey: "tag")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        /** The id for the merge field. */
        public var mergeId: String

        public init(listId: String, mergeId: String) {
          self.listId = listId
          self.mergeId = mergeId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PatchListsIdMergeFieldsId.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(listId: String, mergeId: String, body: Body) {
        let options = Options(listId: listId, mergeId: mergeId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(options.mergeId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list. */
      public struct Status200: Model {
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
