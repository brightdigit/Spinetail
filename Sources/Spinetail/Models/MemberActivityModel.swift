import Foundation

import PrchModel
/** Member activity events. */
public struct MemberActivityModel: Codable, Equatable, Content {
  /** The type of action recorded for the subscriber. */
  public var action: String?

  /** The web-based ID for the campaign. */
  public var campaignId: String?

  /** The ID of the parent campaign. */
  public var parentCampaign: String?

  /** The date and time recorded for the action. */
  public var timestamp: DateTime?

  /** If set, the campaign's title. */
  public var title: String?

  /** The type of campaign that was sent. */
  public var type: String?

  /** For clicks, the URL the subscriber clicked on. */
  public var url: String?

  public init(action: String? = nil, campaignId: String? = nil, parentCampaign: String? = nil, timestamp: DateTime? = nil, title: String? = nil, type: String? = nil, url: String? = nil) {
    self.action = action
    self.campaignId = campaignId
    self.parentCampaign = parentCampaign
    self.timestamp = timestamp
    self.title = title
    self.type = type
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case action
    case campaignId = "campaign_id"
    case parentCampaign = "parent_campaign"
    case timestamp
    case title
    case type
    case url
  }
}
