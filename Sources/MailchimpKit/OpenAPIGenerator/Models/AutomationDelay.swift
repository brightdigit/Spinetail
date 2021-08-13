import Foundation

/** The delay settings for an automation email. */

public struct AutomationDelay: Codable {
  public enum ModelType: String, Codable {
    case now
    case day
    case hour
    case week
  }

  public enum Direction: String, Codable {
    case after
  }

  public enum Action: String, Codable {
    case signup
    case ecommAbandonedBrowse = "ecomm_abandoned_browse"
    case ecommAbandonedCart = "ecomm_abandoned_cart"
  }

  /** The delay amount for an automation email. */
  public var amount: Int?
  /** The type of delay for an automation email. */
  public var type: ModelType?
  /** Whether the delay settings describe before or after the delay action of an automation email. */
  public var direction: Direction?
  /** The action that triggers the delay of an automation emails. */
  public var action: Action

  public init(amount: Int? = nil, type: ModelType? = nil, direction: Direction? = nil, action: Action) {
    self.amount = amount
    self.type = type
    self.direction = direction
    self.action = action
  }
}
