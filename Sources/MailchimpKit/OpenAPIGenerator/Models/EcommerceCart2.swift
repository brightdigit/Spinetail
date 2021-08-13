import Foundation

/** Information about a specific cart. */

public struct EcommerceCart2: Codable {
  public var customer: EcommerceCustomer1?
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
  public var lines: [EcommerceCartLineItem1]?

  public init(customer: EcommerceCustomer1? = nil, campaignId: String? = nil, checkoutUrl: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, taxTotal: Decimal? = nil, lines: [EcommerceCartLineItem1]? = nil) {
    self.customer = customer
    self.campaignId = campaignId
    self.checkoutUrl = checkoutUrl
    self.currencyCode = currencyCode
    self.orderTotal = orderTotal
    self.taxTotal = taxTotal
    self.lines = lines
  }

  public enum CodingKeys: String, CodingKey {
    case customer
    case campaignId = "campaign_id"
    case checkoutUrl = "checkout_url"
    case currencyCode = "currency_code"
    case orderTotal = "order_total"
    case taxTotal = "tax_total"
    case lines
  }
}
