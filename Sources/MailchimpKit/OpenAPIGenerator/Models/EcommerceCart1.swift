import Foundation

/** Information about a specific cart. */

public struct EcommerceCart1: Codable {
  /** A unique identifier for the cart. */
  public var _id: String?
  public var customer: EcommerceCustomer6?
  /** A string that uniquely identifies the campaign associated with a cart. */
  public var campaignId: String?
  /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
  public var checkoutUrl: String?
  /** The three-letter ISO 4217 code for the currency that the cart uses. */
  public var currencyCode: String?
  /** The order total for the cart. */
  public var orderTotal: Decimal?
  /** The total tax for the cart. */
  public var taxTotal: Decimal?
  /** An array of the cart&#x27;s line items. */
  public var lines: [EcommerceCartLineItem5]?
  /** The date and time the cart was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the cart was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, customer: EcommerceCustomer6? = nil, campaignId: String? = nil, checkoutUrl: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, taxTotal: Decimal? = nil, lines: [EcommerceCartLineItem5]? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.customer = customer
    self.campaignId = campaignId
    self.checkoutUrl = checkoutUrl
    self.currencyCode = currencyCode
    self.orderTotal = orderTotal
    self.taxTotal = taxTotal
    self.lines = lines
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case customer
    case campaignId = "campaign_id"
    case checkoutUrl = "checkout_url"
    case currencyCode = "currency_code"
    case orderTotal = "order_total"
    case taxTotal = "tax_total"
    case lines
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case links = "_links"
  }
}
