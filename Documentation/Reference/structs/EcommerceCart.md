**STRUCT**

# `EcommerceCart`

```swift
public struct EcommerceCart: Codable
```

Information about a specific cart.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the cart.

### `customer`

```swift
public var customer: EcommerceCustomer
```

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign for a cart.

### `checkoutUrl`

```swift
public var checkoutUrl: String?
```

The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations.

### `currencyCode`

```swift
public var currencyCode: String
```

The three-letter ISO 4217 code for the currency that the cart uses.

### `orderTotal`

```swift
public var orderTotal: Decimal
```

The order total for the cart.

### `taxTotal`

```swift
public var taxTotal: Decimal?
```

The total tax for the cart.

### `lines`

```swift
public var lines: [EcommerceCartLineItem]
```

An array of the cart&#x27;s line items.

## Methods
### `init(_id:customer:campaignId:checkoutUrl:currencyCode:orderTotal:taxTotal:lines:)`

```swift
public init(_id: String, customer: EcommerceCustomer, campaignId: String? = nil, checkoutUrl: String? = nil, currencyCode: String, orderTotal: Decimal, taxTotal: Decimal? = nil, lines: [EcommerceCartLineItem])
```
