import Foundation
import Prch

#if !os(watchOS)
  public extension VerifiedDomains {
    /**
     List sending domains

     Get all of the sending domains on the account.
     */
    enum GetVerifiedDomains {
      public static let service = Service<Response>(id: "getVerifiedDomains", tag: "verifiedDomains", method: "GET", path: "/verified-domains", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public init() {}

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetVerifiedDomains.service
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
        /** The verified domains currently on the account. */
        public struct Status200: Model {
          /** The domains on the account */
          public var domains: [Domains]?

          /** The total number of items matching the query regardless of pagination. */
          public var totalItems: Int?

          /** The verified domains currently on the account. */
          public struct Domains: Model {
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

          public init(domains: [Domains]? = nil, totalItems: Int? = nil) {
            self.domains = domains
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            domains = try container.decodeArrayIfPresent("domains")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(domains, forKey: "domains")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

        public typealias SuccessType = Status200
        public typealias FailureType = DefaultResponse

        /** The domains on the account. */
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
