**STRUCT**

# `Customers`

```swift
public struct Customers: Codable
```

A collection of the store&#x27;s customers.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `customers`

```swift
public var customers: [EcommerceCustomer6]?
```

An array of objects, each representing a customer of a store.

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
### `init(storeId:customers:totalItems:links:)`

```swift
public init(storeId: String? = nil, customers: [EcommerceCustomer6]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
