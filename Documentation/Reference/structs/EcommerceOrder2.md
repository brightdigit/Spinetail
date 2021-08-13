**STRUCT**

# `EcommerceOrder2`

```swift
public struct EcommerceOrder2: Codable
```

Information about a specific order.

## Properties
### `customer`

```swift
public var customer: EcommerceCustomer5?
```

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign associated with an order.

### `landingSite`

```swift
public var landingSite: String?
```

The URL for the page where the buyer landed when entering the shop.

### `financialStatus`

```swift
public var financialStatus: String?
```

The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).

### `fulfillmentStatus`

```swift
public var fulfillmentStatus: String?
```

The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `orderTotal`

```swift
public var orderTotal: Decimal?
```

The order total associated with an order.

### `orderUrl`

```swift
public var orderUrl: String?
```

The URL for the order.

### `discountTotal`

```swift
public var discountTotal: Decimal?
```

The total amount of the discounts to be applied to the price of the order.

### `taxTotal`

```swift
public var taxTotal: Decimal?
```

The tax total associated with an order.

### `shippingTotal`

```swift
public var shippingTotal: Decimal?
```

The shipping total for the order.

### `trackingCode`

```swift
public var trackingCode: TrackingCode?
```

The Mailchimp tracking code for the order. Uses the &#x27;mc_tc&#x27; parameter in E-Commerce tracking URLs.

### `processedAtForeign`

```swift
public var processedAtForeign: Date?
```

The date and time the order was processed in ISO 8601 format.

### `cancelledAtForeign`

```swift
public var cancelledAtForeign: Date?
```

The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being edited.

### `updatedAtForeign`

```swift
public var updatedAtForeign: Date?
```

The date and time the order was updated in ISO 8601 format.

### `shippingAddress`

```swift
public var shippingAddress: ShippingAddress1?
```

### `billingAddress`

```swift
public var billingAddress: BillingAddress1?
```

### `promos`

```swift
public var promos: [EcommercestoresstoreIdordersPromos]?
```

The promo codes applied on the order. Note: Patch will completely replace the value of promos with the new one provided.

### `lines`

```swift
public var lines: [EcommerceOrderLineItem1]?
```

An array of the order&#x27;s line items.

### `outreach`

```swift
public var outreach: Outreach?
```

## Methods
### `init(customer:campaignId:landingSite:financialStatus:fulfillmentStatus:currencyCode:orderTotal:orderUrl:discountTotal:taxTotal:shippingTotal:trackingCode:processedAtForeign:cancelledAtForeign:updatedAtForeign:shippingAddress:billingAddress:promos:lines:outreach:)`

```swift
public init(customer: EcommerceCustomer5? = nil, campaignId: String? = nil, landingSite: String? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, orderUrl: String? = nil, discountTotal: Decimal? = nil, taxTotal: Decimal? = nil, shippingTotal: Decimal? = nil, trackingCode: TrackingCode? = nil, processedAtForeign: Date? = nil, cancelledAtForeign: Date? = nil, updatedAtForeign: Date? = nil, shippingAddress: ShippingAddress1? = nil, billingAddress: BillingAddress1? = nil, promos: [EcommercestoresstoreIdordersPromos]? = nil, lines: [EcommerceOrderLineItem1]? = nil, outreach: Outreach? = nil)
```
