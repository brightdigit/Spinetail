import Foundation

/** Information about a specific order. */

public struct EcommerceOrder1: Codable {
  public enum TrackingCode: String, Codable {
    case prec
  }

  /** A unique identifier for the order. */
  public var _id: String?
  public var customer: EcommerceCustomer6?
  /** The unique identifier for the store. */
  public var storeId: String?
  /** A string that uniquely identifies the campaign associated with an order. */
  public var campaignId: String?
  /** The URL for the page where the buyer landed when entering the shop. */
  public var landingSite: String?
  /** The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var financialStatus: String?
  /** The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var fulfillmentStatus: String?
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String?
  /** The order total associated with an order. */
  public var orderTotal: Decimal?
  /** The URL for the order. */
  public var orderUrl: String?
  /** The total amount of the discounts to be applied to the price of the order. */
  public var discountTotal: Decimal?
  /** The tax total associated with an order. */
  public var taxTotal: Decimal?
  /** The shipping total for the order. */
  public var shippingTotal: Decimal?
  /** The Mailchimp tracking code for the order. Uses the &#x27;mc_tc&#x27; parameter in E-Commerce tracking URLs. */
  public var trackingCode: TrackingCode?
  /** The date and time the order was processed in ISO 8601 format. */
  public var processedAtForeign: Date?
  /** The date and time the order was cancelled in ISO 8601 format. */
  public var cancelledAtForeign: Date?
  /** The date and time the order was updated in ISO 8601 format. */
  public var updatedAtForeign: Date?
  public var shippingAddress: ShippingAddress1?
  public var billingAddress: BillingAddress1?
  /** The promo codes applied on the order */
  public var promos: [Orders1Promos]?
  /** An array of the order&#x27;s line items. */
  public var lines: [EcommerceOrderLineItem5]?
  public var outreach: Outreach1?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, customer: EcommerceCustomer6? = nil, storeId: String? = nil, campaignId: String? = nil, landingSite: String? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, orderUrl: String? = nil, discountTotal: Decimal? = nil, taxTotal: Decimal? = nil, shippingTotal: Decimal? = nil, trackingCode: TrackingCode? = nil, processedAtForeign: Date? = nil, cancelledAtForeign: Date? = nil, updatedAtForeign: Date? = nil, shippingAddress: ShippingAddress1? = nil, billingAddress: BillingAddress1? = nil, promos: [Orders1Promos]? = nil, lines: [EcommerceOrderLineItem5]? = nil, outreach: Outreach1? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.customer = customer
    self.storeId = storeId
    self.campaignId = campaignId
    self.landingSite = landingSite
    self.financialStatus = financialStatus
    self.fulfillmentStatus = fulfillmentStatus
    self.currencyCode = currencyCode
    self.orderTotal = orderTotal
    self.orderUrl = orderUrl
    self.discountTotal = discountTotal
    self.taxTotal = taxTotal
    self.shippingTotal = shippingTotal
    self.trackingCode = trackingCode
    self.processedAtForeign = processedAtForeign
    self.cancelledAtForeign = cancelledAtForeign
    self.updatedAtForeign = updatedAtForeign
    self.shippingAddress = shippingAddress
    self.billingAddress = billingAddress
    self.promos = promos
    self.lines = lines
    self.outreach = outreach
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case customer
    case storeId = "store_id"
    case campaignId = "campaign_id"
    case landingSite = "landing_site"
    case financialStatus = "financial_status"
    case fulfillmentStatus = "fulfillment_status"
    case currencyCode = "currency_code"
    case orderTotal = "order_total"
    case orderUrl = "order_url"
    case discountTotal = "discount_total"
    case taxTotal = "tax_total"
    case shippingTotal = "shipping_total"
    case trackingCode = "tracking_code"
    case processedAtForeign = "processed_at_foreign"
    case cancelledAtForeign = "cancelled_at_foreign"
    case updatedAtForeign = "updated_at_foreign"
    case shippingAddress = "shipping_address"
    case billingAddress = "billing_address"
    case promos
    case lines
    case outreach
    case links = "_links"
  }
}
