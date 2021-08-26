**STRUCT**

# `Status200.Orders`

```swift
public struct Orders: Model
```

Information about a specific order.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `billingAddress`

```swift
public var billingAddress: BillingAddress?
```

The billing address for the order.

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign associated with an order.

### `cancelledAtForeign`

```swift
public var cancelledAtForeign: DateTime
```

The date and time the order was cancelled in ISO 8601 format.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `customer`

```swift
public var customer: Customer?
```

Information about a specific customer.

### `discountTotal`

```swift
public var discountTotal: Double?
```

The total amount of the discounts to be applied to the price of the order.

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

### `id`

```swift
public var id: String?
```

A unique identifier for the order.

### `landingSite`

```swift
public var landingSite: String?
```

The URL for the page where the buyer landed when entering the shop.

### `lines`

```swift
public var lines: [Lines]?
```

An array of the order's line items.

### `orderTotal`

```swift
public var orderTotal: Double?
```

The order total associated with an order.

### `orderURL`

```swift
public var orderURL: String?
```

The URL for the order.

### `outreach`

```swift
public var outreach: Outreach?
```

The outreach associated with this order. For example, an email campaign or Facebook ad.

### `processedAtForeign`

```swift
public var processedAtForeign: DateTime
```

The date and time the order was processed in ISO 8601 format.

### `promos`

```swift
public var promos: [Promos]?
```

The promo codes applied on the order

### `shippingAddress`

```swift
public var shippingAddress: ShippingAddress?
```

The shipping address for the order.

### `shippingTotal`

```swift
public var shippingTotal: Double?
```

The shipping total for the order.

### `storeId`

```swift
public var storeId: String?
```

The unique identifier for the store.

### `taxTotal`

```swift
public var taxTotal: Double?
```

The tax total associated with an order.

### `trackingCode`

```swift
public var trackingCode: TrackingCode?
```

The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.

### `updatedAtForeign`

```swift
public var updatedAtForeign: DateTime
```

The date and time the order was updated in ISO 8601 format.

## Methods
### `init(links:billingAddress:campaignId:cancelledAtForeign:currencyCode:customer:discountTotal:financialStatus:fulfillmentStatus:id:landingSite:lines:orderTotal:orderURL:outreach:processedAtForeign:promos:shippingAddress:shippingTotal:storeId:taxTotal:trackingCode:updatedAtForeign:)`

```swift
public init(links: [Links]? = nil, billingAddress: BillingAddress? = nil, campaignId: String? = nil, cancelledAtForeign: Date? = nil, currencyCode: String? = nil, customer: Customer? = nil, discountTotal: Double? = nil, financialStatus: String? = nil, fulfillmentStatus: String? = nil, id: String? = nil, landingSite: String? = nil, lines: [Lines]? = nil, orderTotal: Double? = nil, orderURL: String? = nil, outreach: Outreach? = nil, processedAtForeign: Date? = nil, promos: [Promos]? = nil, shippingAddress: ShippingAddress? = nil, shippingTotal: Double? = nil, storeId: String? = nil, taxTotal: Double? = nil, trackingCode: TrackingCode? = nil, updatedAtForeign: Date? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
