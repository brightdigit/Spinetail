import Foundation
import Prch

#if !os(watchOS)
  #if !os(watchOS)
    public extension Ecommerce {
      /**
       Delete store

       Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
       */
      enum DeleteEcommerceStoresId {
        public static let service = Service<Response>(id: "deleteEcommerceStoresId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public struct Request: ServiceRequest {
          public struct Options {
            /** The store id. */
            public var storeId: String

            public init(storeId: String) {
              self.storeId = storeId
            }
          }

          public var options: Options

          public init(options: Options) {
            self.options = options
          }

          public typealias ResponseType = Response

          public var service: Service<Response> {
            DeleteEcommerceStoresId.service
          }

          /// convenience initialiser so an Option doesn't have to be created
          public init(storeId: String) {
            let options = Options(storeId: storeId)
            self.init(options: options)
          }

          public var path: String {
            service.path.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(options.storeId)")
          }
        }

        public enum Response: Prch.Response {
          public var response: ClientResult<[String: AnyCodable], DefaultResponse> {
            switch self {
            case let .defaultResponse(statusCode: statusCode, response):
              return .defaultResponse(statusCode, response)

            case let .status204(response):
              return .success(response)
            }
          }

          public typealias APIType = Mailchimp.API

          public typealias SuccessType = [String: AnyCodable]
          public typealias FailureType = DefaultResponse

          /** Empty Response */
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
#endif
