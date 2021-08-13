**STRUCT**

# `EcommerceOrder`

```swift
public struct EcommerceOrder: Codable
```

Information about a specific order.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the order.

### `customer`

```swift
public var customer: EcommerceCustomer
```

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign for an order.

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
public var currencyCode: String
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `orderTotal`

```swift
public var orderTotal: Decimal
```

The total for the order.

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

The tax total for the order.

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

The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being created.

### `updatedAtForeign`

```swift
public var updatedAtForeign: Date?
```

The date and time the order was updated in ISO 8601 format.

### `shippingAddress`

```swift
public var shippingAddress: ShippingAddress?
```

### `billingAddress`

```swift
public var billingAddress: BillingAddress?
```

### `promos`

```swift
public var promos: [EcommercestoresstoreIdordersPromos]?
```

The promo codes applied on the order

### `lines`

```swift
public var lines: [EcommerceOrderLineItem]
```

An array of the order&#x27;s line items.

### `outreach`

```swift
public var outreach: Outreach?
```

## Methods
### `init(_id:customer:campaignId:landingSite:financialStatus:fulfillmentStatus:currencyCode:orderTotal:orderUrl:discountTotal:taxTotal:shippingTotal:trackingCode:processedAtForeign:cancelledAtForeign:updatedAtForeign:shippingAddress:billingAddress:promos:lines:outreach:)`

```swift
public init(_id: String, customer: EcommerceCustomer, campaignId: String? = nil, landingSite: String? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, currencyCode: String, orderTotal: Decimal, orderUrl: String? = nil, discountTotal: Decimal? = nil, taxTotal: Decimal? = nil, shippingTotal: Decimal? = nil, trackingCode: TrackingCode? = nil, processedAtForeign: Date? = nil, cancelledAtForeign: Date? = nil, updatedAtForeign: Date? = nil, shippingAddress: ShippingAddress? = nil, billingAddress: BillingAddress? = nil, promos: [EcommercestoresstoreIdordersPromos]? = nil, lines: [EcommerceOrderLineItem], outreach: Outreach? = nil)
```
