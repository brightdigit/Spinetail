**STRUCT**

# `Batch1`

```swift
public struct Batch1: Codable
```

The status of a batch request

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this batch request.

### `status`

```swift
public var status: Status?
```

The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status.

### `totalOperations`

```swift
public var totalOperations: Int?
```

The total number of operations to complete as part of this batch request. For GET requests requiring pagination, each page counts as a separate operation.

### `finishedOperations`

```swift
public var finishedOperations: Int?
```

The number of completed operations. This includes operations that returned an error.

### `erroredOperations`

```swift
public var erroredOperations: Int?
```

The number of completed operations that returned an error.

### `submittedAt`

```swift
public var submittedAt: Date?
```

The date and time when the server received the batch request in ISO 8601 format.

### `completedAt`

```swift
public var completedAt: Date?
```

The date and time when all operations in the batch request completed in ISO 8601 format.

### `responseBodyUrl`

```swift
public var responseBodyUrl: String?
```

The URL of the gzipped archive of the results of all the operations.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:status:totalOperations:finishedOperations:erroredOperations:submittedAt:completedAt:responseBodyUrl:links:)`

```swift
public init(_id: String? = nil, status: Status? = nil, totalOperations: Int? = nil, finishedOperations: Int? = nil, erroredOperations: Int? = nil, submittedAt: Date? = nil, completedAt: Date? = nil, responseBodyUrl: String? = nil, links: [ResourceLink]? = nil)
```
