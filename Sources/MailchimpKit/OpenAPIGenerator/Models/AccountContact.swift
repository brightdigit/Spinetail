import Foundation

/** Information about the account contact. */

public struct AccountContact: Codable {
  /** The company name for the account. */
  public var company: String?
  /** The street address for the account contact. */
  public var addr1: String?
  /** The street address for the account contact. */
  public var addr2: String?
  /** The city for the account contact. */
  public var city: String?
  /** The state for the account contact. */
  public var state: String?
  /** The zip code for the account contact. */
  public var zip: String?
  /** The country for the account contact. */
  public var country: String?

  public init(company: String? = nil, addr1: String? = nil, addr2: String? = nil, city: String? = nil, state: String? = nil, zip: String? = nil, country: String? = nil) {
    self.company = company
    self.addr1 = addr1
    self.addr2 = addr2
    self.city = city
    self.state = state
    self.zip = zip
    self.country = country
  }
}
