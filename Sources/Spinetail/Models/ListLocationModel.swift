import Foundation

import PrchModel
public struct ListLocationModel: Codable, Equatable, Content {
  /** The ISO 3166 2 digit country code. */
  public var cc: String?

  /** The name of the country. */
  public var country: String?

  /** The percent of subscribers in the country. */
  public var percent: Double?

  /** The total number of subscribers in the country. */
  public var total: Int?

  public init(cc: String? = nil, country: String? = nil, percent: Double? = nil, total: Int? = nil) {
    self.cc = cc
    self.country = country
    self.percent = percent
    self.total = total
  }

  public enum CodingKeys: String, CodingKey {
    case cc
    case country
    case percent
    case total
  }
}
