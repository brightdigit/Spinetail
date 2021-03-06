import Foundation
import Prch

#if !os(watchOS)
  public extension Batches {
    /**
     Delete batch request

     Stops a batch request from running. Since only one batch request is run at a time, this can be used to cancel a long running request. The results of any completed operations will not be available after this call.
     */
    enum DeleteBatchesId {
      public static let service = Service<Response>(id: "deleteBatchesId", tag: "batches", method: "DELETE", path: "/batches/{batch_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** The unique id for the batch operation. */
          public var batchId: String

          public init(batchId: String) {
            self.batchId = batchId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          DeleteBatchesId.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(batchId: String) {
          let options = Options(batchId: batchId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "batch_id" + "}", with: "\(options.batchId)")
        }
      }

      public enum Response: Prch.Response {
        public var response: ClientResult<Void, DefaultResponse> {
          switch self {
          case let .defaultResponse(statusCode: statusCode, response):
            return .defaultResponse(statusCode, response)

          case .status204:
            return .success(())
          }
        }

        public typealias APIType = Mailchimp.API

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
