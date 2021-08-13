import Foundation

/** Deprecated */

public struct SalesforceCRMTracking: Codable {
  /** Create a campaign in a connected Salesforce account. */
  public var campaign: Bool?
  /** Update contact notes for a campaign based on subscriber email addresses. */
  public var notes: Bool?

  public init(campaign: Bool? = nil, notes: Bool? = nil) {
    self.campaign = campaign
    self.notes = notes
  }
}
