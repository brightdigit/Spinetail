import Foundation

import PrchModel
/** A folder used to organize campaigns. */
public struct CampaignFolder1Model: Codable, Equatable, Content {
  /** Name to associate with the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
  }
}
