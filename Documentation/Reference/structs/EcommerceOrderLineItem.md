**STRUCT**

# `EcommerceOrderLineItem`

```swift
public struct EcommerceOrderLineItem: Codable
```

Information about a specific order line.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the order line item.

### `productId`

```swift
public var productId: String
```

A unique identifier for the product associated with the order line item.

### `productVariantId`

```swift
public var productVariantId: String
```

A unique identifier for the product variant associated with the order line item.

### `quantity`

```swift
public var quantity: Int
```

The quantity of an order line item.

### `price`

```swift
public var price: Decimal
```

The price of an order line item.

### `discount`

```swift
public var discount: Decimal?
```

The total discount amount applied to this line item.

## Methods
### `init(_id:productId:productVariantId:quantity:price:discount:)`

```swift
public init(_id: String, productId: String, productVariantId: String, quantity: Int, price: Decimal, discount: Decimal? = nil)
```
