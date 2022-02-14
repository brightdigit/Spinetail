import Foundation
import Prch

#if !os(watchOS)
  public extension CustomerJourneys {
    /**
     Customer Journeys API trigger for a contact

     A step trigger in a Customer Journey. To use it, create a starting point or step from the Customer Journey builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for the posted contact.
     */
    enum PostCustomerJourneysJourneysIdStepsIdActionsTrigger {
      public static let service = Service<Response>(id: "postCustomerJourneysJourneysIdStepsIdActionsTrigger", tag: "customerJourneys", method: "POST", path: "/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        /** Information about subscribers in a Customer Journey's audience. */
        public struct Body: Model {
          /** The list member's email address. */
          public var emailAddress: String

          public init(emailAddress: String) {
            self.emailAddress = emailAddress
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            emailAddress = try container.decode("email_address")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(emailAddress, forKey: "email_address")
          }
        }

        public struct Options {
          /** The id for the Journey. */
          public var journeyId: Int

          /** The id for the Step. */
          public var stepId: Int

          public init(journeyId: Int, stepId: Int) {
            self.journeyId = journeyId
            self.stepId = stepId
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
          PostCustomerJourneysJourneysIdStepsIdActionsTrigger.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(journeyId: Int, stepId: Int, body: Body) {
          let options = Options(journeyId: journeyId, stepId: stepId)
          self.init(body: body, options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "journey_id" + "}", with: "\(options.journeyId)").replacingOccurrences(of: "{" + "step_id" + "}", with: "\(options.stepId)")
        }
      }

      public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
        public typealias APIType = MailchimpAPI

        public typealias SuccessType = [String: AnyCodable]
        public typealias FailureType = DefaultResponse

        /** An empty response */
        case status204([String: AnyCodable])

        /** An error generated by the Mailchimp API. */
        case defaultResponse(statusCode: Int, DefaultResponse)

        public var success: [String: AnyCodable]? {
          switch self {
          case let .status204(response): return response
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
        @available(*, unavailable)
        public var _obsolete_responseResult: DeprecatedResponseResult<[String: AnyCodable], DefaultResponse> {
          if let successValue = success {
            return .success(successValue)
          } else if let failureValue = failure {
            return .failure(failureValue)
          } else {
            fatalError("Response does not have success or failure response")
          }
        }

        public var anyResponse: Any {
          switch self {
          case let .status204(response): return response
          case let .defaultResponse(_, response): return response
          }
        }

        public var statusCode: Int {
          switch self {
          case .status204: return 204
          case let .defaultResponse(statusCode, _): return statusCode
          }
        }

        public var successful: Bool {
          switch self {
          case .status204: return true
          case .defaultResponse: return false
          }
        }

        public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
          switch statusCode {
          case 204: self = try .status204(decoder.decodeAny([String: AnyCodable].self, from: data))
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
