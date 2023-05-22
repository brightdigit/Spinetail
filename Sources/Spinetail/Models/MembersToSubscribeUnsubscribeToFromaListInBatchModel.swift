import Foundation

import PrchModel
/** Members to subscribe to or unsubscribe from a list. */
public struct MembersToSubscribeUnsubscribeToFromaListInBatchModel: Codable, Equatable, Content {
  /** An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call. */
  public var members: [AddListMembersModel]

  /** Whether this batch operation will replace all existing tags with tags in request. */
  public var syncTags: Bool?

  /** Whether this batch operation will change existing members' subscription status. */
  public var updateExisting: Bool?

  public init(members: [AddListMembersModel], syncTags: Bool? = nil, updateExisting: Bool? = nil) {
    self.members = members
    self.syncTags = syncTags
    self.updateExisting = updateExisting
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case syncTags = "sync_tags"
    case updateExisting = "update_existing"
  }
}
