import Foundation

import PrchModel
/** Deprecated */
public struct SalesforceCRMTrackingModel: Codable, Equatable, Content {
  /** Create a campaign in a connected Salesforce account. */
  public var campaign: Bool?

  /** Update contact notes for a campaign based on a subscriber's email address. */
  public var notes: Bool?

  public init(campaign: Bool? = nil, notes: Bool? = nil) {
    self.campaign = campaign
    self.notes = notes
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case campaign
    case notes
  }
}
