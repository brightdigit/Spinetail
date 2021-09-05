**STRUCT**

# `Status200.Batches`

```swift
public struct Batches: Model
```

The status of a batch request

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `completedAt`

```swift
public var completedAt: DateTime
```

The date and time when all operations in the batch request completed in ISO 8601 format.

### `erroredOperations`

```swift
public var erroredOperations: Int?
```

The number of completed operations that returned an error.

### `finishedOperations`

```swift
public var finishedOperations: Int?
```

The number of completed operations. This includes operations that returned an error.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this batch request.

### `responseBodyURL`

```swift
public var responseBodyURL: String?
```

The URL of the gzipped archive of the results of all the operations.

### `status`

```swift
public var status: Status?
```

The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status.

### `submittedAt`

```swift
public var submittedAt: DateTime
```

The date and time when the server received the batch request in ISO 8601 format.

### `totalOperations`

```swift
public var totalOperations: Int?
```

The total number of operations to complete as part of this batch request. For GET requests requiring pagination, each page counts as a separate operation.

## Methods
### `init(links:completedAt:erroredOperations:finishedOperations:id:responseBodyURL:status:submittedAt:totalOperations:)`

```swift
public init(links: [Links]? = nil, completedAt: Date? = nil, erroredOperations: Int? = nil, finishedOperations: Int? = nil, id: String? = nil, responseBodyURL: String? = nil, status: Status? = nil, submittedAt: Date? = nil, totalOperations: Int? = nil)
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
