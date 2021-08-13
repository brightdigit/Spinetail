**STRUCT**

# `GrowthHistory1`

```swift
public struct GrowthHistory1: Codable
```

A summary of a specific list&#x27;s growth activity for a specific month and year.

## Properties
### `listId`

```swift
public var listId: String?
```

The list id for the growth activity report.

### `month`

```swift
public var month: String?
```

The month that the growth history is describing.

### `existing`

```swift
public var existing: Int?
```

(deprecated)

### `imports`

```swift
public var imports: Int?
```

(deprecated)

### `optins`

```swift
public var optins: Int?
```

(deprecated)

### `subscribed`

```swift
public var subscribed: Int?
```

Total subscribed members on the list at the end of the month.

### `unsubscribed`

```swift
public var unsubscribed: Int?
```

Newly unsubscribed members on the list for a specific month.

### `reconfirm`

```swift
public var reconfirm: Int?
```

Newly reconfirmed members on the list for a specific month.

### `cleaned`

```swift
public var cleaned: Int?
```

Newly cleaned (hard-bounced) members on the list for a specific month.

### `pending`

```swift
public var pending: Int?
```

Pending members on the list for a specific month.

### `deleted`

```swift
public var deleted: Int?
```

Newly deleted members on the list for a specific month.

### `transactional`

```swift
public var transactional: Int?
```

Subscribers that have been sent transactional emails via Mandrill.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(listId:month:existing:imports:optins:subscribed:unsubscribed:reconfirm:cleaned:pending:deleted:transactional:links:)`

```swift
public init(listId: String? = nil, month: String? = nil, existing: Int? = nil, imports: Int? = nil, optins: Int? = nil, subscribed: Int? = nil, unsubscribed: Int? = nil, reconfirm: Int? = nil, cleaned: Int? = nil, pending: Int? = nil, deleted: Int? = nil, transactional: Int? = nil, links: [ResourceLink]? = nil)
```
