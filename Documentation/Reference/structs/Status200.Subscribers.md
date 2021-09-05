**STRUCT**

# `Status200.Subscribers`

```swift
public struct Subscribers: Model
```

A summary of a subscriber removed from an Automation workflow.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `emailAddress`

```swift
public var emailAddress: String?
```

The list member's email address.

### `id`

```swift
public var id: String?
```

The MD5 hash of the lowercase version of the list member's email address.

### `listId`

```swift
public var listId: String?
```

A string that uniquely identifies a list.

### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

## Methods
### `init(links:emailAddress:id:listId:workflowId:)`

```swift
public init(links: [Links]? = nil, emailAddress: String? = nil, id: String? = nil, listId: String? = nil, workflowId: String? = nil)
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
