import Foundation

public struct ListLocation: Codable {
  /** The name of the country. */
  public var country: String?
  /** The ISO 3166 2 digit country code. */
  public var cc: String?
  /** The percent of subscribers in the country. */
  public var percent: Decimal?
  /** The total number of subscribers in the country. */
  public var total: Int?

  public init(country: String? = nil, cc: String? = nil, percent: Decimal? = nil, total: Int? = nil) {
    self.country = country
    self.cc = cc
    self.percent = percent
    self.total = total
  }
}
