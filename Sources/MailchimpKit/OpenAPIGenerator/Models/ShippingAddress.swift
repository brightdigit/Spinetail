import Foundation

/** The shipping address for the order. */

public struct ShippingAddress: Codable {
  /** The name associated with an order&#x27;s shipping address. */
  public var name: String?
  /** The shipping address for the order. */
  public var address1: String?
  /** An additional field for the shipping address. */
  public var address2: String?
  /** The city in the order&#x27;s shipping address. */
  public var city: String?
  /** The state or normalized province in the order&#x27;s shipping address. */
  public var province: String?
  /** The two-letter code for the province or state in the shipping address. */
  public var provinceCode: String?
  /** The postal or zip code in the shipping address. */
  public var postalCode: String?
  /** The country in the shipping address. */
  public var country: String?
  /** The two-letter code for the country in the shipping address. */
  public var countryCode: String?
  /** The longitude for the shipping address location. */
  public var longitude: Decimal?
  /** The latitude for the shipping address location. */
  public var latitude: Decimal?
  /** The phone number for the order&#x27;s shipping address. */
  public var phone: String?
  /** The company associated with the shipping address. */
  public var company: String?

  public init(name: String? = nil, address1: String? = nil, address2: String? = nil, city: String? = nil, province: String? = nil, provinceCode: String? = nil, postalCode: String? = nil, country: String? = nil, countryCode: String? = nil, longitude: Decimal? = nil, latitude: Decimal? = nil, phone: String? = nil, company: String? = nil) {
    self.name = name
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
    self.phone = phone
    self.company = company
  }

  public enum CodingKeys: String, CodingKey {
    case name
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
    case phone
    case company
  }
}
