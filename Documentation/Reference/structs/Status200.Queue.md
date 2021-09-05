**STRUCT**

# `Status200.Queue`

```swift
public struct Queue: Model
```

Information about subscribers in an Automation email queue.

## Properties
### `emailAddress`

```swift
public var emailAddress: String
```

The list member's email address.

### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `emailId`

```swift
public var emailId: String?
```

A string that uniquely identifies an email in an Automation workflow.

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

### `nextSend`

```swift
public var nextSend: DateTime
```

The date and time of the next send for the workflow email in ISO 8601 format.

### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

## Methods
### `init(emailAddress:links:emailId:id:listId:nextSend:workflowId:)`

```swift
public init(emailAddress: String, links: [Links]? = nil, emailId: String? = nil, id: String? = nil, listId: String? = nil, nextSend: Date? = nil, workflowId: String? = nil)
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
