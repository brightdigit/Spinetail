**STRUCT**

# `EcommerceCartLineItem2`

```swift
public struct EcommerceCartLineItem2: Codable
```

Information about a specific cart line item.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the cart line item.

### `productId`

```swift
public var productId: String
```

A unique identifier for the product associated with the cart line item.

### `productVariantId`

```swift
public var productVariantId: String
```

A unique identifier for the product variant associated with the cart line item.

### `quantity`

```swift
public var quantity: Int
```

The quantity of a cart line item.

### `price`

```swift
public var price: Decimal
```

The price of a cart line item.

## Methods
### `init(_id:productId:productVariantId:quantity:price:)`

```swift
public init(_id: String, productId: String, productVariantId: String, quantity: Int, price: Decimal)
```
