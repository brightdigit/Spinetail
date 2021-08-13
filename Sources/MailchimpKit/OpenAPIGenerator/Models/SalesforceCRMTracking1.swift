import Foundation

/** Deprecated */

public struct SalesforceCRMTracking1: Codable {
  /** Create a campaign in a connected Salesforce account. */
  public var campaign: Bool?
  /** Update contact notes for a campaign based on a subscriber&#x27;s email address. */
  public var notes: Bool?

  public init(campaign: Bool? = nil, notes: Bool? = nil) {
    self.campaign = campaign
    self.notes = notes
  }
}
