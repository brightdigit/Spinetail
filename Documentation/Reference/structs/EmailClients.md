**STRUCT**

# `EmailClients`

```swift
public struct EmailClients: Codable
```

The top email clients based on user-agent strings.

## Properties
### `clients`

```swift
public var clients: [EmailClient]?
```

An array of top email clients.

### `listId`

```swift
public var listId: String?
```

The list id.

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
### `init(clients:listId:totalItems:links:)`

```swift
public init(clients: [EmailClient]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
