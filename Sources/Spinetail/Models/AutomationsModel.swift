import Foundation

import PrchModel
/** Details for the automations attached to this store. */
public struct AutomationsModel: Codable, Equatable, Content {
  public var abandonedBrowse: AbandonedBrowseAutomationModel?

  public var abandonedCart: AbandonedCartAutomationModel?

  public init(abandonedBrowse: AbandonedBrowseAutomationModel? = nil, abandonedCart: AbandonedCartAutomationModel? = nil) {
    self.abandonedBrowse = abandonedBrowse
    self.abandonedCart = abandonedCart
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case abandonedBrowse = "abandoned_browse"
    case abandonedCart = "abandoned_cart"
  }
}
