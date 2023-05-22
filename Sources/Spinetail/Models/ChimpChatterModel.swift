import Foundation

import PrchModel
/** A Chimp Chatter message */
public struct ChimpChatterModel: Codable, Equatable, Content {
  /** The type of activity */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case listsnewSubscriber = "lists:new-subscriber"
    case listsunsubscribes = "lists:unsubscribes"
    case listsprofileUpdates = "lists:profile-updates"
    case campaignsfacebookLikes = "campaigns:facebook-likes"
    case campaignsforwardToFriend = "campaigns:forward-to-friend"
    case listsimports = "lists:imports"
  }

  /** If it exists, campaign ID for the associated campaign */
  public var campaignId: String?

  /** If it exists, list ID for the associated list */
  public var listId: String?

  public var message: String?

  public var title: String?

  /** The type of activity */
  public var type: `Type`?

  /** The date and time this activity was updated. */
  public var updateTime: DateTime?

  /** URL to a report that includes this activity */
  public var url: String?

  public init(campaignId: String? = nil, listId: String? = nil, message: String? = nil, title: String? = nil, type: Type? = nil, updateTime: DateTime? = nil, url: String? = nil) {
    self.campaignId = campaignId
    self.listId = listId
    self.message = message
    self.title = title
    self.type = type
    self.updateTime = updateTime
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case campaignId = "campaign_id"
    case listId = "list_id"
    case message
    case title
    case type
    case updateTime = "update_time"
    case url
  }
}
