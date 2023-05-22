import Foundation

import PrchModel
/** Information about a specific cart. */
public struct ECommerceCart1Model: Codable, Equatable, Content {
  /** The three-letter ISO 4217 code for the currency that the cart uses. */
  public var currencyCode: String

  public var customer: ECommerceCustomer1Model

  /** A unique identifier for the cart. */
  public var id: String

  /** An array of the cart's line items. */
  public var lines: [ECommerceCartLineItem1Model]

  /** The order total for the cart. */
  public var orderTotal: Double

  /** A string that uniquely identifies the campaign for a cart. */
  public var campaignId: String?

  /** The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations. */
  public var checkoutURL: String?

  /** The total tax for the cart. */
  public var taxTotal: Double?

  public init(currencyCode: String, customer: ECommerceCustomer1Model, id: String, lines: [ECommerceCartLineItem1Model], orderTotal: Double, campaignId: String? = nil, checkoutURL: String? = nil, taxTotal: Double? = nil) {
    self.currencyCode = currencyCode
    self.customer = customer
    self.id = id
    self.lines = lines
    self.orderTotal = orderTotal
    self.campaignId = campaignId
    self.checkoutURL = checkoutURL
    self.taxTotal = taxTotal
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case customer
    case id
    case lines
    case orderTotal = "order_total"
    case campaignId = "campaign_id"
    case checkoutURL = "checkout_url"
    case taxTotal = "tax_total"
  }
}
