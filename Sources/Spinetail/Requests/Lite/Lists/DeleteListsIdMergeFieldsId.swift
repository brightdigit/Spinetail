import Foundation
import Prch

public extension Lists {
  /**
   Delete merge field

   Delete a specific merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) in a list.
   */
  enum DeleteListsIdMergeFieldsId {
    public static let service = Service<Response>(id: "deleteListsIdMergeFieldsId", tag: "lists", method: "DELETE", path: "/lists/{list_id}/merge-fields/{merge_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
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

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        DeleteListsIdMergeFieldsId.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(listId: String, mergeId: String) {
        let options = Options(listId: listId, mergeId: mergeId)
        self.init(options: options)
      }

      public var path: String {
        service.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(options.listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(options.mergeId)")
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
      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */

      public typealias SuccessType = Void
      public typealias FailureType = DefaultResponse

      /** Empty Response */
      case status204

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var statusCode: Int {
        switch self {
        case .status204: return 204
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 204: self = .status204
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }
    }
  }
}
