**STRUCT**

# `Status200.Carts`

```swift
public struct Carts: Model
```

Information about a specific cart.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `campaignId`

```swift
public var campaignId: String?
```

A string that uniquely identifies the campaign associated with a cart.

### `checkoutURL`

```swift
public var checkoutURL: String?
```

The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-an-abandoned-cart-email/) automations.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the cart was created in ISO 8601 format.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the cart uses.

### `customer`

```swift
public var customer: Customer?
```

Information about a specific customer.

### `id`

```swift
public var id: String?
```

A unique identifier for the cart.

### `lines`

```swift
public var lines: [Lines]?
```

An array of the cart's line items.

### `orderTotal`

```swift
public var orderTotal: Double?
```

The order total for the cart.

### `taxTotal`

```swift
public var taxTotal: Double?
```

The total tax for the cart.

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the cart was last updated in ISO 8601 format.

## Methods
### `init(links:campaignId:checkoutURL:createdAt:currencyCode:customer:id:lines:orderTotal:taxTotal:updatedAt:)`

```swift
public init(links: [Links]? = nil, campaignId: String? = nil, checkoutURL: String? = nil, createdAt: Date? = nil, currencyCode: String? = nil, customer: Customer? = nil, id: String? = nil, lines: [Lines]? = nil, orderTotal: Double? = nil, taxTotal: Double? = nil, updatedAt: Date? = nil)
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
