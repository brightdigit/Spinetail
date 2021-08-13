**STRUCT**

# `OrderLines`

```swift
public struct OrderLines: Codable
```

A collection of an order&#x27;s line items.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `orderId`

```swift
public var orderId: String?
```

The order id.

### `lines`

```swift
public var lines: [EcommerceOrderLineItem5]?
```

An array of objects, each representing an order&#x27;s line item.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(storeId:orderId:lines:totalItems:links:)`

```swift
public init(storeId: String? = nil, orderId: String? = nil, lines: [EcommerceOrderLineItem5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
