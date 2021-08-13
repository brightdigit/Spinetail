import Foundation

/** The events that can trigger the webhook and whether they are enabled. */

public struct Events2: Codable {
  /** Whether the webhook is triggered when a list subscriber is added. */
  public var subscribe: Bool?
  /** Whether the webhook is triggered when a list member unsubscribes. */
  public var unsubscribe: Bool?
  /** Whether the webhook is triggered when a subscriber&#x27;s profile is updated. */
  public var profile: Bool?
  /** Whether the webhook is triggered when a subscriber&#x27;s email address is cleaned from the list. */
  public var cleaned: Bool?
  /** Whether the webhook is triggered when a subscriber&#x27;s email address is changed. */
  public var upemail: Bool?
  /** Whether the webhook is triggered when a campaign is sent or cancelled. */
  public var campaign: Bool?

  public init(subscribe: Bool? = nil, unsubscribe: Bool? = nil, profile: Bool? = nil, cleaned: Bool? = nil, upemail: Bool? = nil, campaign: Bool? = nil) {
    self.subscribe = subscribe
    self.unsubscribe = unsubscribe
    self.profile = profile
    self.cleaned = cleaned
    self.upemail = upemail
    self.campaign = campaign
  }
}
