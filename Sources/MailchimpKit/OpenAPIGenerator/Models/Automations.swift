import Foundation

/** Details for the automations attached to this store. */

public struct Automations: Codable {
  public var abandonedCart: AbandonedCartAutomation?
  public var abandonedBrowse: AbandonedBrowseAutomation?

  public init(abandonedCart: AbandonedCartAutomation? = nil, abandonedBrowse: AbandonedBrowseAutomation? = nil) {
    self.abandonedCart = abandonedCart
    self.abandonedBrowse = abandonedBrowse
  }

  public enum CodingKeys: String, CodingKey {
    case abandonedCart = "abandoned_cart"
    case abandonedBrowse = "abandoned_browse"
  }
}
