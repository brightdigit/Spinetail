**STRUCT**

# `EcommerceCart2`

```swift
public struct EcommerceCart2: Codable
```

Information about a specific cart.

## Properties
### `customer`

```swift
public var customer: EcommerceCustomer1?
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
public var lines: [EcommerceCartLineItem1]?
```

An array of the cart&#x27;s line items.

## Methods
### `init(customer:campaignId:checkoutUrl:currencyCode:orderTotal:taxTotal:lines:)`

```swift
public init(customer: EcommerceCustomer1? = nil, campaignId: String? = nil, checkoutUrl: String? = nil, currencyCode: String? = nil, orderTotal: Decimal? = nil, taxTotal: Decimal? = nil, lines: [EcommerceCartLineItem1]? = nil)
```
