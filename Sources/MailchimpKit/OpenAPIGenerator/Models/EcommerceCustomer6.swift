import Foundation

/** Information about a specific customer. */

public struct EcommerceCustomer6: Codable {
  /** A unique identifier for the customer. */
  public var _id: String?
  /** The customer&#x27;s email address. */
  public var emailAddress: String?
  /** The customer&#x27;s opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don&#x27;t opt in to your Mailchimp list [will be added as &#x60;Transactional&#x60; members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public var optInStatus: Bool?
  /** The customer&#x27;s company. */
  public var company: String?
  /** The customer&#x27;s first name. */
  public var firstName: String?
  /** The customer&#x27;s last name. */
  public var lastName: String?
  /** The customer&#x27;s total order count. */
  public var ordersCount: Int?
  /** The total amount the customer has spent. */
  public var totalSpent: Decimal?
  public var address: Address1?
  /** The date and time the customer was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the customer was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, emailAddress: String? = nil, optInStatus: Bool? = nil, company: String? = nil, firstName: String? = nil, lastName: String? = nil, ordersCount: Int? = nil, totalSpent: Decimal? = nil, address: Address1? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.emailAddress = emailAddress
    self.optInStatus = optInStatus
    self.company = company
    self.firstName = firstName
    self.lastName = lastName
    self.ordersCount = ordersCount
    self.totalSpent = totalSpent
    self.address = address
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case emailAddress = "email_address"
    case optInStatus = "opt_in_status"
    case company
    case firstName = "first_name"
    case lastName = "last_name"
    case ordersCount = "orders_count"
    case totalSpent = "total_spent"
    case address
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case links = "_links"
  }
}
