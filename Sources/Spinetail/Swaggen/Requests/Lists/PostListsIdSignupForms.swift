import Foundation
import Prch

public extension Lists {
  /**
   Customize signup form

   Customize a list's default signup form.
   */
  enum PostListsIdSignupForms {
    public static let service = APIService<Response>(id: "postListsIdSignupForms", tag: "lists", method: "POST", path: "/lists/{list_id}/signup-forms", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** List signup form. */
      public struct Body: Model {
        /** The signup form body content. */
        public var contents: [Contents]?

        /** Options for customizing your signup form header. */
        public var header: Header?

        /** An array of objects, each representing an element style for the signup form. */
        public var styles: [Styles]?

        /** Collection of Content for List Signup Forms. */
        public struct Contents: Model {
          /** The content section name. */
          public enum Section: String, Codable, Equatable, CaseIterable {
            case signupMessage = "signup_message"
            case unsubMessage = "unsub_message"
            case signupThankYouTitle = "signup_thank_you_title"
          }

          /** The content section name. */
          public var section: Section?

          /** The content section text. */
          public var value: String?

          public init(section: Section? = nil, value: String? = nil) {
            self.section = section
            self.value = value
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            section = try container.decodeIfPresent("section")
            value = try container.decodeIfPresent("value")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(section, forKey: "section")
            try container.encodeIfPresent(value, forKey: "value")
          }
        }

        /** Options for customizing your signup form header. */
        public struct Header: Model {
          /** Image alignment. */
          public enum ImageAlign: String, Codable, Equatable, CaseIterable {
            case none
            case left
            case center
            case right
          }

          /** Image border style. */
          public enum ImageBorderStyle: String, Codable, Equatable, CaseIterable {
            case none
            case solid
            case dotted
            case dashed
            case double
            case groove
            case outset
            case inset
            case ridge
          }

          /** Image link target. */
          public enum ImageTarget: String, Codable, Equatable, CaseIterable {
            case blank = "_blank"
            case lessThannullgreaterThan = "<null>"
          }

          /** Image alignment. */
          public var imageAlign: ImageAlign?

          /** Alt text for the image. */
          public var imageAlt: String?

          /** Image border color. */
          public var imageBorderColor: String?

          /** Image border style. */
          public var imageBorderStyle: ImageBorderStyle?

          /** Image border width. */
          public var imageBorderWidth: String?

          /** Image height, in pixels. */
          public var imageHeight: String?

          /** The URL that the header image will link to. */
          public var imageLink: String?

          /** Image link target. */
          public var imageTarget: ImageTarget?

          /** Header image URL. */
          public var imageURL: String?

          /** Image width, in pixels. */
          public var imageWidth: String?

          /** Header text. */
          public var text: String?

          public init(imageAlign: ImageAlign? = nil, imageAlt: String? = nil, imageBorderColor: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderWidth: String? = nil, imageHeight: String? = nil, imageLink: String? = nil, imageTarget: ImageTarget? = nil, imageURL: String? = nil, imageWidth: String? = nil, text: String? = nil) {
            self.imageAlign = imageAlign
            self.imageAlt = imageAlt
            self.imageBorderColor = imageBorderColor
            self.imageBorderStyle = imageBorderStyle
            self.imageBorderWidth = imageBorderWidth
            self.imageHeight = imageHeight
            self.imageLink = imageLink
            self.imageTarget = imageTarget
            self.imageURL = imageURL
            self.imageWidth = imageWidth
            self.text = text
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            imageAlign = try container.decodeIfPresent("image_align")
            imageAlt = try container.decodeIfPresent("image_alt")
            imageBorderColor = try container.decodeIfPresent("image_border_color")
            imageBorderStyle = try container.decodeIfPresent("image_border_style")
            imageBorderWidth = try container.decodeIfPresent("image_border_width")
            imageHeight = try container.decodeIfPresent("image_height")
            imageLink = try container.decodeIfPresent("image_link")
            imageTarget = try container.decodeIfPresent("image_target")
            imageURL = try container.decodeIfPresent("image_url")
            imageWidth = try container.decodeIfPresent("image_width")
            text = try container.decodeIfPresent("text")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(imageAlign, forKey: "image_align")
            try container.encodeIfPresent(imageAlt, forKey: "image_alt")
            try container.encodeIfPresent(imageBorderColor, forKey: "image_border_color")
            try container.encodeIfPresent(imageBorderStyle, forKey: "image_border_style")
            try container.encodeIfPresent(imageBorderWidth, forKey: "image_border_width")
            try container.encodeIfPresent(imageHeight, forKey: "image_height")
            try container.encodeIfPresent(imageLink, forKey: "image_link")
            try container.encodeIfPresent(imageTarget, forKey: "image_target")
            try container.encodeIfPresent(imageURL, forKey: "image_url")
            try container.encodeIfPresent(imageWidth, forKey: "image_width")
            try container.encodeIfPresent(text, forKey: "text")
          }
        }

        /** Collection of Element style for List Signup Forms. */
        public struct Styles: Model {
          /** A string that identifies the element selector. */
          public enum Selector: String, Codable, Equatable, CaseIterable {
            case pageBackground = "page_background"
            case pageHeader = "page_header"
            case pageOuterWrapper = "page_outer_wrapper"
            case bodyBackground = "body_background"
            case bodyLinkStyle = "body_link_style"
            case formsButtons = "forms_buttons"
            case formsButtonsHovered = "forms_buttons_hovered"
            case formsFieldLabel = "forms_field_label"
            case formsFieldText = "forms_field_text"
            case formsRequired = "forms_required"
            case formsRequiredLegend = "forms_required_legend"
            case formsHelpText = "forms_help_text"
            case formsErrors = "forms_errors"
            case monkeyRewardsBadge = "monkey_rewards_badge"
          }

          /** A collection of options for a selector. */
          public var options: [Options]?

          /** A string that identifies the element selector. */
          public var selector: Selector?

          /** An option for Signup Form Styles. */
          public struct Options: Model {
            /** A string that identifies the property. */
            public var property: String?

            /** A string that identifies value of the property. */
            public var value: String?

            public init(property: String? = nil, value: String? = nil) {
              self.property = property
              self.value = value
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              property = try container.decodeIfPresent("property")
              value = try container.decodeIfPresent("value")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(property, forKey: "property")
              try container.encodeIfPresent(value, forKey: "value")
            }
          }

          public init(options: [Options]? = nil, selector: Selector? = nil) {
            self.options = options
            self.selector = selector
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            options = try container.decodeArrayIfPresent("options")
            selector = try container.decodeIfPresent("selector")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(options, forKey: "options")
            try container.encodeIfPresent(selector, forKey: "selector")
          }
        }

        public init(contents: [Contents]? = nil, header: Header? = nil, styles: [Styles]? = nil) {
          self.contents = contents
          self.header = header
          self.styles = styles
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          contents = try container.decodeArrayIfPresent("contents")
          header = try container.decodeIfPresent("header")
          styles = try container.decodeArrayIfPresent("styles")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(contents, forKey: "contents")
          try container.encodeIfPresent(header, forKey: "header")
          try container.encodeIfPresent(styles, forKey: "styles")
        }
      }

      public struct Options {
        /** The unique ID for the list. */
        public var listId: String

        public init(listId: String) {
          self.listId = listId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostListsIdSignupForms.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(listId: String, body: Body) {
        let options = Options(listId: listId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** List signup form. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The signup form body content. */
        public var contents: [Contents]?

        /** Options for customizing your signup form header. */
        public var header: Header?

        /** The signup form's list id. */
        public var listId: String?

        /** Signup form URL. */
        public var signupFormURL: String?

        /** An array of objects, each representing an element style for the signup form. */
        public var styles: [Styles]?

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

        /** Collection of Content for List Signup Forms. */
        public struct Contents: Model {
          /** The content section name. */
          public enum Section: String, Codable, Equatable, CaseIterable {
            case signupMessage = "signup_message"
            case unsubMessage = "unsub_message"
            case signupThankYouTitle = "signup_thank_you_title"
          }

          /** The content section name. */
          public var section: Section?

          /** The content section text. */
          public var value: String?

          public init(section: Section? = nil, value: String? = nil) {
            self.section = section
            self.value = value
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            section = try container.decodeIfPresent("section")
            value = try container.decodeIfPresent("value")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(section, forKey: "section")
            try container.encodeIfPresent(value, forKey: "value")
          }
        }

        /** Options for customizing your signup form header. */
        public struct Header: Model {
          /** Image alignment. */
          public enum ImageAlign: String, Codable, Equatable, CaseIterable {
            case none
            case left
            case center
            case right
          }

          /** Image border style. */
          public enum ImageBorderStyle: String, Codable, Equatable, CaseIterable {
            case none
            case solid
            case dotted
            case dashed
            case double
            case groove
            case outset
            case inset
            case ridge
          }

          /** Image link target. */
          public enum ImageTarget: String, Codable, Equatable, CaseIterable {
            case blank = "_blank"
            case lessThannullgreaterThan = "<null>"
          }

          /** Image alignment. */
          public var imageAlign: ImageAlign?

          /** Alt text for the image. */
          public var imageAlt: String?

          /** Image border color. */
          public var imageBorderColor: String?

          /** Image border style. */
          public var imageBorderStyle: ImageBorderStyle?

          /** Image border width. */
          public var imageBorderWidth: String?

          /** Image height, in pixels. */
          public var imageHeight: String?

          /** The URL that the header image will link to. */
          public var imageLink: String?

          /** Image link target. */
          public var imageTarget: ImageTarget?

          /** Header image URL. */
          public var imageURL: String?

          /** Image width, in pixels. */
          public var imageWidth: String?

          /** Header text. */
          public var text: String?

          public init(imageAlign: ImageAlign? = nil, imageAlt: String? = nil, imageBorderColor: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderWidth: String? = nil, imageHeight: String? = nil, imageLink: String? = nil, imageTarget: ImageTarget? = nil, imageURL: String? = nil, imageWidth: String? = nil, text: String? = nil) {
            self.imageAlign = imageAlign
            self.imageAlt = imageAlt
            self.imageBorderColor = imageBorderColor
            self.imageBorderStyle = imageBorderStyle
            self.imageBorderWidth = imageBorderWidth
            self.imageHeight = imageHeight
            self.imageLink = imageLink
            self.imageTarget = imageTarget
            self.imageURL = imageURL
            self.imageWidth = imageWidth
            self.text = text
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            imageAlign = try container.decodeIfPresent("image_align")
            imageAlt = try container.decodeIfPresent("image_alt")
            imageBorderColor = try container.decodeIfPresent("image_border_color")
            imageBorderStyle = try container.decodeIfPresent("image_border_style")
            imageBorderWidth = try container.decodeIfPresent("image_border_width")
            imageHeight = try container.decodeIfPresent("image_height")
            imageLink = try container.decodeIfPresent("image_link")
            imageTarget = try container.decodeIfPresent("image_target")
            imageURL = try container.decodeIfPresent("image_url")
            imageWidth = try container.decodeIfPresent("image_width")
            text = try container.decodeIfPresent("text")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(imageAlign, forKey: "image_align")
            try container.encodeIfPresent(imageAlt, forKey: "image_alt")
            try container.encodeIfPresent(imageBorderColor, forKey: "image_border_color")
            try container.encodeIfPresent(imageBorderStyle, forKey: "image_border_style")
            try container.encodeIfPresent(imageBorderWidth, forKey: "image_border_width")
            try container.encodeIfPresent(imageHeight, forKey: "image_height")
            try container.encodeIfPresent(imageLink, forKey: "image_link")
            try container.encodeIfPresent(imageTarget, forKey: "image_target")
            try container.encodeIfPresent(imageURL, forKey: "image_url")
            try container.encodeIfPresent(imageWidth, forKey: "image_width")
            try container.encodeIfPresent(text, forKey: "text")
          }
        }

        /** Collection of Element style for List Signup Forms. */
        public struct Styles: Model {
          /** A string that identifies the element selector. */
          public enum Selector: String, Codable, Equatable, CaseIterable {
            case pageBackground = "page_background"
            case pageHeader = "page_header"
            case pageOuterWrapper = "page_outer_wrapper"
            case bodyBackground = "body_background"
            case bodyLinkStyle = "body_link_style"
            case formsButtons = "forms_buttons"
            case formsButtonsHovered = "forms_buttons_hovered"
            case formsFieldLabel = "forms_field_label"
            case formsFieldText = "forms_field_text"
            case formsRequired = "forms_required"
            case formsRequiredLegend = "forms_required_legend"
            case formsHelpText = "forms_help_text"
            case formsErrors = "forms_errors"
            case monkeyRewardsBadge = "monkey_rewards_badge"
          }

          /** A collection of options for a selector. */
          public var options: [Options]?

          /** A string that identifies the element selector. */
          public var selector: Selector?

          /** An option for Signup Form Styles. */
          public struct Options: Model {
            /** A string that identifies the property. */
            public var property: String?

            /** A string that identifies value of the property. */
            public var value: String?

            public init(property: String? = nil, value: String? = nil) {
              self.property = property
              self.value = value
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              property = try container.decodeIfPresent("property")
              value = try container.decodeIfPresent("value")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(property, forKey: "property")
              try container.encodeIfPresent(value, forKey: "value")
            }
          }

          public init(options: [Options]? = nil, selector: Selector? = nil) {
            self.options = options
            self.selector = selector
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            options = try container.decodeArrayIfPresent("options")
            selector = try container.decodeIfPresent("selector")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(options, forKey: "options")
            try container.encodeIfPresent(selector, forKey: "selector")
          }
        }

        public init(links: [Links]? = nil, contents: [Contents]? = nil, header: Header? = nil, listId: String? = nil, signupFormURL: String? = nil, styles: [Styles]? = nil) {
          self.links = links
          self.contents = contents
          self.header = header
          self.listId = listId
          self.signupFormURL = signupFormURL
          self.styles = styles
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          contents = try container.decodeArrayIfPresent("contents")
          header = try container.decodeIfPresent("header")
          listId = try container.decodeIfPresent("list_id")
          signupFormURL = try container.decodeIfPresent("signup_form_url")
          styles = try container.decodeArrayIfPresent("styles")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(contents, forKey: "contents")
          try container.encodeIfPresent(header, forKey: "header")
          try container.encodeIfPresent(listId, forKey: "list_id")
          try container.encodeIfPresent(signupFormURL, forKey: "signup_form_url")
          try container.encodeIfPresent(styles, forKey: "styles")
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
