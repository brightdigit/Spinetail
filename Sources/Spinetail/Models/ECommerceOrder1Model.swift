import Foundation

import PrchModel
/** Information about a specific order. */
public struct ECommerceOrder1Model: Codable, Equatable, Content {
  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public enum AutomationsAutomationsTrackingCode: String, Codable, Equatable, CaseIterable {
    case prec
  }

  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String

  public var customer: ECommerceCustomer1Model

  /** A unique identifier for the order. */
  public var id: String

  /** An array of the order's line items. */
  public var lines: [ECommerceOrderLineItem1Model]

  /** The total for the order. */
  public var orderTotal: Double

  public var billingAddress: BillingAddress1Model?

  /** A string that uniquely identifies the campaign for an order. */
  public var campaignId: String?

  /** The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being created. */
  public var cancelledAtForeign: DateTime?

  /** The total amount of the discounts to be applied to the price of the order. */
  public var discountTotal: Double?

  /** The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var financialStatus: String?

  /** The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications). */
  public var fulfillmentStatus: String?

  /** The URL for the page where the buyer landed when entering the shop. */
  public var landingSite: String?

  /** The URL for the order. */
  public var orderURL: String?

  public var outreach: Outreach1Model?

  /** The date and time the order was processed in ISO 8601 format. */
  public var processedAtForeign: DateTime?

  /** The promo codes applied on the order */
  public var promos: [PromosInner1Model]?

  public var shippingAddress: ShippingAddress1Model?

  /** The shipping total for the order. */
  public var shippingTotal: Double?

  /** The tax total for the order. */
  public var taxTotal: Double?

  /** The tracking carrier associated with the order. */
  public var trackingCarrier: String?

  /** The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs. */
  public var trackingCode: TrackingCode?

  /** The tracking number associated with the order. */
  public var trackingNumber: String?

  /** The tracking URL associated with the order. */
  public var trackingURL: String?

  /** The date and time the order was updated in ISO 8601 format. */
  public var updatedAtForeign: DateTime?

  public init(currencyCode: String, customer: ECommerceCustomer1Model, id: String, lines: [ECommerceOrderLineItem1Model], orderTotal: Double, billingAddress: BillingAddress1Model? = nil, campaignId: String? = nil, cancelledAtForeign: DateTime? = nil, discountTotal: Double? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, landingSite: String? = nil, orderURL: String? = nil, outreach: Outreach1Model? = nil, processedAtForeign: DateTime? = nil, promos: [PromosInner1Model]? = nil, shippingAddress: ShippingAddress1Model? = nil, shippingTotal: Double? = nil, taxTotal: Double? = nil, trackingCarrier: String? = nil, trackingCode: TrackingCode? = nil, trackingNumber: String? = nil, trackingURL: String? = nil, updatedAtForeign: DateTime? = nil) {
    self.currencyCode = currencyCode
    self.customer = customer
    self.id = id
    self.lines = lines
    self.orderTotal = orderTotal
    self.billingAddress = billingAddress
    self.campaignId = campaignId
    self.cancelledAtForeign = cancelledAtForeign
    self.discountTotal = discountTotal
    self.financialStatus = financialStatus
    self.fulfillmentStatus = fulfillmentStatus
    self.landingSite = landingSite
    self.orderURL = orderURL
    self.outreach = outreach
    self.processedAtForeign = processedAtForeign
    self.promos = promos
    self.shippingAddress = shippingAddress
    self.shippingTotal = shippingTotal
    self.taxTotal = taxTotal
    self.trackingCarrier = trackingCarrier
    self.trackingCode = trackingCode
    self.trackingNumber = trackingNumber
    self.trackingURL = trackingURL
    self.updatedAtForeign = updatedAtForeign
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case customer
    case id
    case lines
    case orderTotal = "order_total"
    case billingAddress = "billing_address"
    case campaignId = "campaign_id"
    case cancelledAtForeign = "cancelled_at_foreign"
    case discountTotal = "discount_total"
    case financialStatus = "financial_status"
    case fulfillmentStatus = "fulfillment_status"
    case landingSite = "landing_site"
    case orderURL = "order_url"
    case outreach
    case processedAtForeign = "processed_at_foreign"
    case promos
    case shippingAddress = "shipping_address"
    case shippingTotal = "shipping_total"
    case taxTotal = "tax_total"
    case trackingCarrier = "tracking_carrier"
    case trackingCode = "tracking_code"
    case trackingNumber = "tracking_number"
    case trackingURL = "tracking_url"
    case updatedAtForeign = "updated_at_foreign"
  }
}
