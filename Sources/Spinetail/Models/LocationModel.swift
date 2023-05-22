import Foundation

import PrchModel
/** Subscriber location information. */
public struct LocationModel: Codable, Equatable, Content {
  /** The location latitude. */
  public var latitude: Double?

  /** The location longitude. */
  public var longitude: Double?

  public init(latitude: Double? = nil, longitude: Double? = nil) {
    self.latitude = latitude
    self.longitude = longitude
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case latitude
    case longitude
  }
}
