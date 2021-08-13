import Foundation

/** Member activity events. */

public struct MemberActivity2: Codable {
  /** The type of action recorded for the subscriber. */
  public var action: String?
  /** The date and time recorded for the action. */
  public var timestamp: Date?
  /** For clicks, the URL the subscriber clicked on. */
  public var url: String?
  /** The type of campaign that was sent. */
  public var type: String?
  /** The web-based ID for the campaign. */
  public var campaignId: String?
  /** If set, the campaign&#x27;s title. */
  public var title: String?
  /** The ID of the parent campaign. */
  public var parentCampaign: String?

  public init(action: String? = nil, timestamp: Date? = nil, url: String? = nil, type: String? = nil, campaignId: String? = nil, title: String? = nil, parentCampaign: String? = nil) {
    self.action = action
    self.timestamp = timestamp
    self.url = url
    self.type = type
    self.campaignId = campaignId
    self.title = title
    self.parentCampaign = parentCampaign
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case timestamp
    case url
    case type
    case campaignId = "campaign_id"
    case title
    case parentCampaign = "parent_campaign"
  }
}
