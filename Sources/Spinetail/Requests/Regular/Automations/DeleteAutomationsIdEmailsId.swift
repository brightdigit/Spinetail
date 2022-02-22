import Foundation
import Prch

#if !os(watchOS)
  public extension Automations {
    /**
     Delete workflow email

     Removes an individual classic automation workflow email. Emails from certain workflow types, including the Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be deleted.
     */
    enum DeleteAutomationsIdEmailsId {
      public static let service = Service<Response>(id: "deleteAutomationsIdEmailsId", tag: "automations", method: "DELETE", path: "/automations/{workflow_id}/emails/{workflow_email_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** The unique id for the Automation workflow. */
          public var workflowId: String

          /** The unique id for the Automation workflow email. */
          public var workflowEmailId: String

          public init(workflowId: String, workflowEmailId: String) {
            self.workflowId = workflowId
            self.workflowEmailId = workflowEmailId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          DeleteAutomationsIdEmailsId.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(workflowId: String, workflowEmailId: String) {
          let options = Options(workflowId: workflowId, workflowEmailId: workflowEmailId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "workflow_id" + "}", with: "\(options.workflowId)").replacingOccurrences(of: "{" + "workflow_email_id" + "}", with: "\(options.workflowEmailId)")
        }
      }

      public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
        public typealias APIType = MailchimpAPI

        public typealias SuccessType = Void
        public typealias FailureType = DefaultResponse

        /** Empty Response */
        case status204

        /** An error generated by the Mailchimp API. */
        case defaultResponse(statusCode: Int, DefaultResponse)

        public var success: Void? {
          switch self {
          case .status204: return ()
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
        public var _obsolete_responseResult: DeprecatedResponseResult<Void, DefaultResponse> {
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
          case let .defaultResponse(_, response): return response
          default: return ()
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
          case 204: self = .status204
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