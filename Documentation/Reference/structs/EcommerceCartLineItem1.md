**STRUCT**

# `EcommerceCartLineItem1`

```swift
public struct EcommerceCartLineItem1: Codable
```

Information about a specific cart line item.

## Properties
### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with the cart line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with the cart line item.

### `quantity`

```swift
public var quantity: Int?
```

The quantity of a cart line item.

### `price`

```swift
public var price: Decimal?
```

The price of a cart line item.

## Methods
### `init(productId:productVariantId:quantity:price:)`

```swift
public init(productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil, price: Decimal? = nil)
```
