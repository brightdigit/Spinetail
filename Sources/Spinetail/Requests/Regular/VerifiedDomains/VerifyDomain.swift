import Foundation
import Prch

#if !os(watchOS)
  public extension VerifiedDomains {
    /**
     Verify domain

     Verify a domain for sending.
     */
    enum VerifyDomain {
      public static let service = Service<Response>(id: "verifyDomain", tag: "verifiedDomains", method: "POST", path: "/verified-domains/{domain_name}/actions/verify", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        /** Submit a response to the verification challenge and verify a domain for sending. */
        public struct Body: Model {
          /** The code that was sent to the email address provided when adding a new domain to verify. */
          public var code: String

          public init(code: String) {
            self.code = code
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            code = try container.decode("code")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(code, forKey: "code")
          }
        }

        public struct Options {
          /** The domain name. */
          public var domainName: String

          public init(domainName: String) {
            self.domainName = domainName
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
          VerifyDomain.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(domainName: String, body: Body) {
          let options = Options(domainName: domainName)
          self.init(body: body, options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(options.domainName)")
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
        /** The verified domains currently on the account. */
        public struct Status200: Model {
          /** Whether domain authentication is enabled for this domain. */
          public var authenticated: Bool?

          /** The name of this domain. */
          public var domain: String?

          /** The e-mail address receiving the two-factor challenge for this domain. */
          public var verificationEmail: String?

          /** The date/time that the two-factor challenge was sent to the verification email. */
          public var verificationSent: Date?

          /** Whether the domain has been verified for sending. */
          public var verified: Bool?

          public init(authenticated: Bool? = nil, domain: String? = nil, verificationEmail: String? = nil, verificationSent: Date? = nil, verified: Bool? = nil) {
            self.authenticated = authenticated
            self.domain = domain
            self.verificationEmail = verificationEmail
            self.verificationSent = verificationSent
            self.verified = verified
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            authenticated = try container.decodeIfPresent("authenticated")
            domain = try container.decodeIfPresent("domain")
            verificationEmail = try container.decodeIfPresent("verification_email")
            verificationSent = try container.decodeIfPresent("verification_sent")
            verified = try container.decodeIfPresent("verified")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(authenticated, forKey: "authenticated")
            try container.encodeIfPresent(domain, forKey: "domain")
            try container.encodeIfPresent(verificationEmail, forKey: "verification_email")
            try container.encodeIfPresent(verificationSent, forKey: "verification_sent")
            try container.encodeIfPresent(verified, forKey: "verified")
          }
        }

        public typealias SuccessType = Status200
        public typealias FailureType = DefaultResponse

        /** The domain being verified for sending. */
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
