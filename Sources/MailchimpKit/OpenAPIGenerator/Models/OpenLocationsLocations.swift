import Foundation

public struct OpenLocationsLocations: Codable {
  /** The ISO 3166 2 digit country code. */
  public var countryCode: String?
  /** An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region. */
  public var region: String?
  /** The name of the region, if we have one. For blank \&quot;region\&quot; values, this will be \&quot;Rest of Country\&quot;. */
  public var regionName: String?
  /** The number of unique campaign opens for a region. */
  public var opens: Int?

  public init(countryCode: String? = nil, region: String? = nil, regionName: String? = nil, opens: Int? = nil) {
    self.countryCode = countryCode
    self.region = region
    self.regionName = regionName
    self.opens = opens
  }

  public enum CodingKeys: String, CodingKey {
    case countryCode = "country_code"
    case region
    case regionName = "region_name"
    case opens
  }
}
