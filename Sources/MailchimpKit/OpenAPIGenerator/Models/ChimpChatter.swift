import Foundation

/** A Chimp Chatter message */

public struct ChimpChatter: Codable {
  public enum ModelType: String, Codable {
    case listsNewSubscriber = "lists:new-subscriber"
    case listsUnsubscribes = "lists:unsubscribes"
    case listsProfileUpdates = "lists:profile-updates"
    case campaignsFacebookLikes = "campaigns:facebook-likes"
    case campaignsForwardToFriend = "campaigns:forward-to-friend"
    case listsImports = "lists:imports"
  }

  public var title: String?
  public var message: String?
  /** The type of activity */
  public var type: ModelType?
  /** The date and time this activity was updated. */
  public var updateTime: Date?
  /** URL to a report that includes this activity */
  public var url: String?
  /** If it exists, list ID for the associated list */
  public var listId: String?
  /** If it exists, campaign ID for the associated campaign */
  public var campaignId: String?

  public init(title: String? = nil, message: String? = nil, type: ModelType? = nil, updateTime: Date? = nil, url: String? = nil, listId: String? = nil, campaignId: String? = nil) {
    self.title = title
    self.message = message
    self.type = type
    self.updateTime = updateTime
    self.url = url
    self.listId = listId
    self.campaignId = campaignId
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case message
    case type
    case updateTime = "update_time"
    case url
    case listId = "list_id"
    case campaignId = "campaign_id"
  }
}
