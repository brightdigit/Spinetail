**STRUCT**

# `Status200.History`

```swift
public struct History: Model
```

A summary of a specific list's growth activity for a specific month and year.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `cleaned`

```swift
public var cleaned: Int?
```

Newly cleaned (hard-bounced) members on the list for a specific month.

### `deleted`

```swift
public var deleted: Int?
```

Newly deleted members on the list for a specific month.

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

### `optins`

```swift
public var optins: Int?
```

(deprecated)

### `pending`

```swift
public var pending: Int?
```

Pending members on the list for a specific month.

### `reconfirm`

```swift
public var reconfirm: Int?
```

Newly reconfirmed members on the list for a specific month.

### `subscribed`

```swift
public var subscribed: Int?
```

Total subscribed members on the list at the end of the month.

### `transactional`

```swift
public var transactional: Int?
```

Subscribers that have been sent transactional emails via Mandrill.

### `unsubscribed`

```swift
public var unsubscribed: Int?
```

Newly unsubscribed members on the list for a specific month.

## Methods
### `init(links:cleaned:deleted:existing:imports:listId:month:optins:pending:reconfirm:subscribed:transactional:unsubscribed:)`

```swift
public init(links: [Links]? = nil, cleaned: Int? = nil, deleted: Int? = nil, existing: Int? = nil, imports: Int? = nil, listId: String? = nil, month: String? = nil, optins: Int? = nil, pending: Int? = nil, reconfirm: Int? = nil, subscribed: Int? = nil, transactional: Int? = nil, unsubscribed: Int? = nil)
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
