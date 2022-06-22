import Foundation
import Prch

public extension Campaigns {
  /**
   Set campaign content

   Set the content for a campaign.
   */
  enum PutCampaignsIdContent {
    public static let service = Service<Response>(id: "putCampaignsIdContent", tag: "campaigns", method: "PUT", path: "/campaigns/{campaign_id}/content", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: BodyRequest {
      /** The HTML and plain-text content for a campaign */
      public struct Body: Model {
        /** Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/). */
        public var archive: Archive?

        /** The raw HTML for the campaign. */
        public var html: String?

        /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
        public var plainText: String?

        /** Use this template to generate the HTML content of the campaign */
        public var template: Template?

        /** When importing a campaign, the URL where the HTML lives. */
        public var url: String?

        /** Content options for [Multivariate Campaigns](https://mailchimp.com/help/about-multivariate-campaigns/). Each content option must provide HTML content and may optionally provide plain text. For campaigns not testing content, only one object should be provided. */
        public var variateContents: [VariateContents]?

        /** Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/). */
        public struct Archive: Model {
          /** The type of encoded file. Defaults to zip. */
          public enum ArchiveType: String, Codable, Equatable, CaseIterable {
            case zip
            case tarGz = "tar.gz"
            case tarBz2 = "tar.bz2"
            case tar
            case tgz
            case tbz
          }

          /** The base64-encoded representation of the archive file. */
          public var archiveContent: String

          /** The type of encoded file. Defaults to zip. */
          public var archiveType: ArchiveType?

          public init(archiveContent: String, archiveType: ArchiveType? = nil) {
            self.archiveContent = archiveContent
            self.archiveType = archiveType
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            archiveContent = try container.decode("archive_content")
            archiveType = try container.decodeIfPresent("archive_type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(archiveContent, forKey: "archive_content")
            try container.encodeIfPresent(archiveType, forKey: "archive_type")
          }
        }

        /** Use this template to generate the HTML content of the campaign */
        public struct Template: Model {
          /** The id of the template to use. */
          public var id: Int

          /** Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template. */
          public var sections: [String: AnyCodable]?

          public init(id: Int, sections: [String: AnyCodable]? = nil) {
            self.id = id
            self.sections = sections
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            sections = try container.decodeAnyIfPresent("sections")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
            try container.encodeAnyIfPresent(sections, forKey: "sections")
          }
        }

        /** The HTML and plain-text content for a campaign */
        public struct VariateContents: Model {
          /** The label used to identify the content option. */
          public var contentLabel: String

          /** Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/). */
          public var archive: Archive?

          /** The raw HTML for the campaign. */
          public var html: String?

          /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
          public var plainText: String?

          /** Use this template to generate the HTML content for the campaign. */
          public var template: Template?

          /** When importing a campaign, the URL for the HTML. */
          public var url: String?

          /** Available when uploading an archive to create campaign content. The archive should include all campaign content and images. [Learn more](https://mailchimp.com/help/import-a-custom-html-template/). */
          public struct Archive: Model {
            /** The type of encoded file. Defaults to zip. */
            public enum ArchiveType: String, Codable, Equatable, CaseIterable {
              case zip
              case tarGz = "tar.gz"
              case tarBz2 = "tar.bz2"
              case tar
              case tgz
              case tbz
            }

            /** The base64-encoded representation of the archive file. */
            public var archiveContent: String

            /** The type of encoded file. Defaults to zip. */
            public var archiveType: ArchiveType?

            public init(archiveContent: String, archiveType: ArchiveType? = nil) {
              self.archiveContent = archiveContent
              self.archiveType = archiveType
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              archiveContent = try container.decode("archive_content")
              archiveType = try container.decodeIfPresent("archive_type")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encode(archiveContent, forKey: "archive_content")
              try container.encodeIfPresent(archiveType, forKey: "archive_type")
            }
          }

          /** Use this template to generate the HTML content for the campaign. */
          public struct Template: Model {
            /** The id of the template to use. */
            public var id: Int

            /** Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template. */
            public var sections: [String: AnyCodable]?

            public init(id: Int, sections: [String: AnyCodable]? = nil) {
              self.id = id
              self.sections = sections
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              id = try container.decode("id")
              sections = try container.decodeAnyIfPresent("sections")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encode(id, forKey: "id")
              try container.encodeAnyIfPresent(sections, forKey: "sections")
            }
          }

          public init(contentLabel: String, archive: Archive? = nil, html: String? = nil, plainText: String? = nil, template: Template? = nil, url: String? = nil) {
            self.contentLabel = contentLabel
            self.archive = archive
            self.html = html
            self.plainText = plainText
            self.template = template
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            contentLabel = try container.decode("content_label")
            archive = try container.decodeIfPresent("archive")
            html = try container.decodeIfPresent("html")
            plainText = try container.decodeIfPresent("plain_text")
            template = try container.decodeIfPresent("template")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(contentLabel, forKey: "content_label")
            try container.encodeIfPresent(archive, forKey: "archive")
            try container.encodeIfPresent(html, forKey: "html")
            try container.encodeIfPresent(plainText, forKey: "plain_text")
            try container.encodeIfPresent(template, forKey: "template")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(archive: Archive? = nil, html: String? = nil, plainText: String? = nil, template: Template? = nil, url: String? = nil, variateContents: [VariateContents]? = nil) {
          self.archive = archive
          self.html = html
          self.plainText = plainText
          self.template = template
          self.url = url
          self.variateContents = variateContents
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          archive = try container.decodeIfPresent("archive")
          html = try container.decodeIfPresent("html")
          plainText = try container.decodeIfPresent("plain_text")
          template = try container.decodeIfPresent("template")
          url = try container.decodeIfPresent("url")
          variateContents = try container.decodeArrayIfPresent("variate_contents")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(archive, forKey: "archive")
          try container.encodeIfPresent(html, forKey: "html")
          try container.encodeIfPresent(plainText, forKey: "plain_text")
          try container.encodeIfPresent(template, forKey: "template")
          try container.encodeIfPresent(url, forKey: "url")
          try container.encodeIfPresent(variateContents, forKey: "variate_contents")
        }
      }

      public struct Options {
        /** The unique id for the campaign. */
        public var campaignId: String

        public init(campaignId: String) {
          self.campaignId = campaignId
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
        PutCampaignsIdContent.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(campaignId: String, body: Body) {
        let options = Options(campaignId: campaignId)
        self.init(body: body, options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)")
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
      /** The HTML and plain-text content for a campaign. */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** The Archive HTML for the campaign. */
        public var archiveHtml: String?

        /** The raw HTML for the campaign. */
        public var html: String?

        /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
        public var plainText: String?

        /** Content options for multivariate campaigns. */
        public var variateContents: [VariateContents]?

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

        /** The HTML and plain-text content for a campaign. */
        public struct VariateContents: Model {
          /** Label used to identify the content option. */
          public var contentLabel: String?

          /** The raw HTML for the campaign. */
          public var html: String?

          /** The plain-text portion of the campaign. If left unspecified, we'll generate this automatically. */
          public var plainText: String?

          public init(contentLabel: String? = nil, html: String? = nil, plainText: String? = nil) {
            self.contentLabel = contentLabel
            self.html = html
            self.plainText = plainText
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            contentLabel = try container.decodeIfPresent("content_label")
            html = try container.decodeIfPresent("html")
            plainText = try container.decodeIfPresent("plain_text")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(contentLabel, forKey: "content_label")
            try container.encodeIfPresent(html, forKey: "html")
            try container.encodeIfPresent(plainText, forKey: "plain_text")
          }
        }

        public init(links: [Links]? = nil, archiveHtml: String? = nil, html: String? = nil, plainText: String? = nil, variateContents: [VariateContents]? = nil) {
          self.links = links
          self.archiveHtml = archiveHtml
          self.html = html
          self.plainText = plainText
          self.variateContents = variateContents
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          archiveHtml = try container.decodeIfPresent("archive_html")
          html = try container.decodeIfPresent("html")
          plainText = try container.decodeIfPresent("plain_text")
          variateContents = try container.decodeArrayIfPresent("variate_contents")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(archiveHtml, forKey: "archive_html")
          try container.encodeIfPresent(html, forKey: "html")
          try container.encodeIfPresent(plainText, forKey: "plain_text")
          try container.encodeIfPresent(variateContents, forKey: "variate_contents")
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
