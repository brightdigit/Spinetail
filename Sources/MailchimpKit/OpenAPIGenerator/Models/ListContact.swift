import Foundation

/** [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws. */

public struct ListContact: Codable {
  /** The company name for the list. */
  public var company: String
  /** The street address for the list contact. */
  public var address1: String
  /** The street address for the list contact. */
  public var address2: String?
  /** The city for the list contact. */
  public var city: String
  /** The state for the list contact. */
  public var state: String?
  /** The postal or zip code for the list contact. */
  public var zip: String?
  /** A two-character ISO3166 country code. Defaults to US if invalid. */
  public var country: String
  /** The phone number for the list contact. */
  public var phone: String?

  public init(company: String, address1: String, address2: String? = nil, city: String, state: String? = nil, zip: String? = nil, country: String, phone: String? = nil) {
    self.company = company
    self.address1 = address1
    self.address2 = address2
    self.city = city
    self.state = state
    self.zip = zip
    self.country = country
    self.phone = phone
  }
}
