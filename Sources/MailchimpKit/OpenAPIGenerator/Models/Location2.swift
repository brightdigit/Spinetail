import Foundation

/** An individual click location. */

public struct Location2: Codable {
  /** The two-digit country code for a recorded click. */
  public var country: String?
  /** If available, a specific region where the click was recorded. */
  public var region: String?

  public init(country: String? = nil, region: String? = nil) {
    self.country = country
    self.region = region
  }
}
