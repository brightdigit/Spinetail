import Foundation

/** The delay settings for an Automation email. */

public struct AutomationDelay1: Codable {
  public enum ModelType: String, Codable {
    case now
    case day
    case hour
    case week
  }

  public enum Direction: String, Codable {
    case before
    case after
  }

  public enum Action: String, Codable {
    case previousCampaignSent = "previous_campaign_sent"
    case previousCampaignOpened = "previous_campaign_opened"
    case previousCampaignNotOpened = "previous_campaign_not_opened"
    case previousCampaignClickedAny = "previous_campaign_clicked_any"
    case previousCampaignNotClickedAny = "previous_campaign_not_clicked_any"
    case previousCampaignSpecificClicked = "previous_campaign_specific_clicked"
    case ecommBoughtAny = "ecomm_bought_any"
    case ecommBoughtProduct = "ecomm_bought_product"
    case ecommBoughtCategory = "ecomm_bought_category"
    case ecommNotBoughtAny = "ecomm_not_bought_any"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
    case campaignSent = "campaign_sent"
    case openedEmail = "opened_email"
    case notOpenedEmail = "not_opened_email"
    case clickedEmail = "clicked_email"
    case notClickedEmail = "not_clicked_email"
    case campaignSpecificClicked = "campaign_specific_clicked"
    case manual
    case signup
    case mergeChanged = "merge_changed"
    case groupAdd = "group_add"
    case groupRemove = "group_remove"
    case mandrillSent = "mandrill_sent"
    case mandrillOpened = "mandrill_opened"
    case mandrillClicked = "mandrill_clicked"
    case mandrillAny = "mandrill_any"
    case api
    case goal
    case annual
    case birthday
    case date
    case dateAdded = "date_added"
    case tagAdd = "tag_add"
  }

  /** The delay amount for an Automation email. */
  public var amount: Int?
  /** The type of delay for an Automation email. */
  public var type: ModelType?
  /** Whether the delay settings describe before or after the delay action of an Automation email. */
  public var direction: Direction?
  /** The action that triggers the delay of an Automation email. */
  public var action: Action?
  /** The user-friendly description of the action that triggers an Automation email. */
  public var actionDescription: String?
  /** The user-friendly description of the delay and trigger action settings for an Automation email. */
  public var fullDescription: String?

  public init(amount: Int? = nil, type: ModelType? = nil, direction: Direction? = nil, action: Action? = nil, actionDescription: String? = nil, fullDescription: String? = nil) {
    self.amount = amount
    self.type = type
    self.direction = direction
    self.action = action
    self.actionDescription = actionDescription
    self.fullDescription = fullDescription
  }

  public enum CodingKeys: String, CodingKey {
    case amount
    case type
    case direction
    case action
    case actionDescription = "action_description"
    case fullDescription = "full_description"
  }
}
