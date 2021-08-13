import Foundation

/** Members to subscribe to or unsubscribe from a list. */

public struct MembersToSubscribeUnsubscribeTofromAListInBatch: Codable {
  /** An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call. */
  public var members: [AddListMembers]
  /** Whether this batch operation will change existing members&#x27; subscription status. */
  public var updateExisting: Bool?

  public init(members: [AddListMembers], updateExisting: Bool? = nil) {
    self.members = members
    self.updateExisting = updateExisting
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case updateExisting = "update_existing"
  }
}
