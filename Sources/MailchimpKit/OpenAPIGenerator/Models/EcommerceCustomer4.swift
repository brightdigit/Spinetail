import Foundation

/** Information about a specific customer. Orders for existing customers should include only the &#x60;id&#x60; parameter in the &#x60;customer&#x60; object body. */

public struct EcommerceCustomer4: Codable {
  /** A unique identifier for the customer. Limited to 50 characters. */
  public var _id: String
  /** The customer&#x27;s email address. */
  public var emailAddress: String
  /** The customer&#x27;s opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don&#x27;t opt in to your Mailchimp list [will be added as &#x60;Transactional&#x60; members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public var optInStatus: Bool
  /** The customer&#x27;s company. */
  public var company: String?
  /** The customer&#x27;s first name. */
  public var firstName: String?
  /** The customer&#x27;s last name. */
  public var lastName: String?
  public var address: Address1?

  public init(_id: String, emailAddress: String, optInStatus: Bool, company: String? = nil, firstName: String? = nil, lastName: String? = nil, address: Address1? = nil) {
    self._id = _id
    self.emailAddress = emailAddress
    self.optInStatus = optInStatus
    self.company = company
    self.firstName = firstName
    self.lastName = lastName
    self.address = address
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case emailAddress = "email_address"
    case optInStatus = "opt_in_status"
    case company
    case firstName = "first_name"
    case lastName = "last_name"
    case address
  }
}
