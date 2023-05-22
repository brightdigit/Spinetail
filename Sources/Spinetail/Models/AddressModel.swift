import Foundation

import PrchModel
/** The customer's address. */
public struct AddressModel: Codable, Equatable, Content {
  /** The mailing address of the customer. */
  public var address1: String?

  /** An additional field for the customer's mailing address. */
  public var address2: String?

  /** The city the customer is located in. */
  public var city: String?

  /** The customer's country. */
  public var country: String?

  /** The two-letter code for the customer's country. */
  public var countryCode: String?

  /** The customer's postal or zip code. */
  public var postalCode: String?

  /** The customer's state name or normalized province. */
  public var province: String?

  /** The two-letter code for the customer's province or state. */
  public var provinceCode: String?

  public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, postalCode: String? = nil, province: String? = nil, provinceCode: String? = nil) {
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.country = country
    self.countryCode = countryCode
    self.postalCode = postalCode
    self.province = province
    self.provinceCode = provinceCode
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case address1
    case address2
    case city
    case country
    case countryCode = "country_code"
    case postalCode = "postal_code"
    case province
    case provinceCode = "province_code"
  }
}
