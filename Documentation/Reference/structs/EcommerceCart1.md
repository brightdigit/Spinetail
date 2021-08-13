**STRUCT**

# `EcommerceCart1`

```swift
public struct EcommerceCart1: Codable
```

Information about a specific cart.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the cart.

### `customer`

```swift
public var customer: EcommerceCustomer6?
```

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign associated with a cart.

### `checkoutUrl`

```swift
public var checkoutUrl: String?
```

The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the cart uses.

### `orderTotal`

```swift
public var orderTotal: Decimal?
```

The order total for the cart.

### `taxTotal`

```swift
public var taxTotal: Decimal?
```

The total tax for the cart.

### `lines`

```swift
public var lines: [EcommerceCartLineItem5]?
```

An array of the cart&#x27;s line items.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the cart was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the cart was last updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:customer:campaignId:checkoutUrl:currencyCode:orderTotal:taxTotal:lines:createdAt:updatedAt:links:)`

```swift
public init(_id: String? = nil, customer: EcommerceCustomer6? = nil, campaignId: String? = nil, checkoutUrl: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, taxTotal: Decimal? = nil, lines: [EcommerceCartLineItem5]? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil)
```
