import Foundation

import PrchModel
/** Information about the account contact. */
public struct AccountContactModel: Codable, Equatable, Content {
  /** The street address for the account contact. */
  public var addr1: String?

  /** The street address for the account contact. */
  public var addr2: String?

  /** The city for the account contact. */
  public var city: String?

  /** The company name for the account. */
  public var company: String?

  /** The country for the account contact. */
  public var country: String?

  /** The state for the account contact. */
  public var state: String?

  /** The zip code for the account contact. */
  public var zip: String?

  public init(addr1: String? = nil, addr2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, state: String? = nil, zip: String? = nil) {
    self.addr1 = addr1
    self.addr2 = addr2
    self.city = city
    self.company = company
    self.country = country
    self.state = state
    self.zip = zip
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case addr1
    case addr2
    case city
    case company
    case country
    case state
    case zip
  }
}
