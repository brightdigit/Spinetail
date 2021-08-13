import Foundation

/** A folder used to organize campaigns. */

public struct CampaignFolder2: Codable {
  /** Name to associate with the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }
}
