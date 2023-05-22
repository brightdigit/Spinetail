import Foundation
import PrchModel

public extension Lists {
  /**
   Add member to segment

   Add a member to a static segment.
   */
  struct PostListsIdSegmentsIdMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}/members"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique id for the segment. */
    public var segmentId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdSegmentsIdMembers", tag: "lists", method: "POST", path: "/lists/{list_id}/segments/{segment_id}/members", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListMembers1Model
    public typealias BodyType = PostListsIdSegmentsIdMembersRequestModel

    public let body: PostListsIdSegmentsIdMembersRequestModel
  }
}
