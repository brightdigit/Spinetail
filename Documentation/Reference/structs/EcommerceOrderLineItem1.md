**STRUCT**

# `EcommerceOrderLineItem1`

```swift
public struct EcommerceOrderLineItem1: Codable
```

Information about a specific order line.

## Properties
### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with the order line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with the order line item.

### `quantity`

```swift
public var quantity: Int?
```

The quantity of an order line item.

### `price`

```swift
public var price: Decimal?
```

The price of an order line item.

### `discount`

```swift
public var discount: Decimal?
```

The total discount amount applied to this line item.

## Methods
### `init(productId:productVariantId:quantity:price:discount:)`

```swift
public init(productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil, price: Decimal? = nil, discount: Decimal? = nil)
```
