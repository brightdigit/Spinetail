import Foundation

/** The possible sources of any events that can trigger the webhook and whether they are enabled. */

public struct Sources1: Codable {
  /** Whether the webhook is triggered by subscriber-initiated actions. */
  public var user: Bool?
  /** Whether the webhook is triggered by admin-initiated actions in the web interface. */
  public var admin: Bool?
  /** Whether the webhook is triggered by actions initiated via the API. */
  public var api: Bool?

  public init(user: Bool? = nil, admin: Bool? = nil, api: Bool? = nil) {
    self.user = user
    self.admin = admin
    self.api = api
  }
}
