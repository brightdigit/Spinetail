import Foundation

/** The customer&#x27;s address. */

public struct Address1: Codable {
  /** The mailing address of the customer. */
  public var address1: String?
  /** An additional field for the customer&#x27;s mailing address. */
  public var address2: String?
  /** The city the customer is located in. */
  public var city: String?
  /** The customer&#x27;s state name or normalized province. */
  public var province: String?
  /** The two-letter code for the customer&#x27;s province or state. */
  public var provinceCode: String?
  /** The customer&#x27;s postal or zip code. */
  public var postalCode: String?
  /** The customer&#x27;s country. */
  public var country: String?
  /** The two-letter code for the customer&#x27;s country. */
  public var countryCode: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.province = province
    self.provinceCode = provinceCode
    self.postalCode = postalCode
    self.country = country
    self.countryCode = countryCode
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
  }
}
