import Foundation

/** The store address. */

public struct Address: Codable {
  /** The store&#x27;s mailing address. */
  public var address1: String?
  /** An additional field for the store&#x27;s mailing address. */
  public var address2: String?
  /** The city the store is located in. */
  public var city: String?
  /** The store&#x27;s state name or normalized province. */
  public var province: String?
  /** The two-letter code for the store&#x27;s province or state. */
  public var provinceCode: String?
  /** The store&#x27;s postal or zip code. */
  public var postalCode: String?
  /** The store&#x27;s country. */
  public var country: String?
  /** The two-letter code for to the store&#x27;s country. */
  public var countryCode: String?
  /** The longitude of the store location. */
  public var longitude: Decimal?
  /** The latitude of the store location. */
  public var latitude: Decimal?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil, longitude: Decimal? = nil, latitude: Decimal? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.province = province
    self.provinceCode = provinceCode
    self.postalCode = postalCode
    self.country = country
    self.countryCode = countryCode
    self.longitude = longitude
    self.latitude = latitude
  }

  public enum CodingKeys: String, CodingKey {
    case address1
    case address2
    case city
    case province
    case provinceCode = "province_code"
    case postalCode = "postal_code"
    case country
    case countryCode = "country_code"
    case longitude
    case latitude
  }
}
