**STRUCT**

# `CartLines`

```swift
public struct CartLines: Codable
```

A collection of a cart&#x27;s line items.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `cartId`

```swift
public var cartId: String?
```

The cart id.

### `lines`

```swift
public var lines: [EcommerceCartLineItem5]?
```

An array of objects, each representing a cart&#x27;s line item.

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
### `init(storeId:cartId:lines:totalItems:links:)`

```swift
public init(storeId: String? = nil, cartId: String? = nil, lines: [EcommerceCartLineItem5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
