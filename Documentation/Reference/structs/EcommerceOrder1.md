**STRUCT**

# `EcommerceOrder1`

```swift
public struct EcommerceOrder1: Codable
```

Information about a specific order.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the order.

### `customer`

```swift
public var customer: EcommerceCustomer6?
```

### `storeId`

```swift
public var storeId: String?
```

The unique identifier for the store.

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

The date and time the order was cancelled in ISO 8601 format.

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
public var promos: [Orders1Promos]?
```

The promo codes applied on the order

### `lines`

```swift
public var lines: [EcommerceOrderLineItem5]?
```

An array of the order&#x27;s line items.

### `outreach`

```swift
public var outreach: Outreach1?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:customer:storeId:campaignId:landingSite:financialStatus:fulfillmentStatus:currencyCode:orderTotal:orderUrl:discountTotal:taxTotal:shippingTotal:trackingCode:processedAtForeign:cancelledAtForeign:updatedAtForeign:shippingAddress:billingAddress:promos:lines:outreach:links:)`

```swift
public init(_id: String? = nil, customer: EcommerceCustomer6? = nil, storeId: String? = nil, campaignId: String? = nil, landingSite: String? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, orderUrl: String? = nil, discountTotal: Decimal? = nil, taxTotal: Decimal? = nil, shippingTotal: Decimal? = nil, trackingCode: TrackingCode? = nil, processedAtForeign: Date? = nil, cancelledAtForeign: Date? = nil, updatedAtForeign: Date? = nil, shippingAddress: ShippingAddress1? = nil, billingAddress: BillingAddress1? = nil, promos: [Orders1Promos]? = nil, lines: [EcommerceOrderLineItem5]? = nil, outreach: Outreach1? = nil, links: [ResourceLink]? = nil)
```
