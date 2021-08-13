**ENUM**

# `Batches.Status`

```swift
public enum Status: String, Codable, Equatable, CaseIterable
```

The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status.

## Cases
### `pending`

```swift
case pending
```

### `preprocessing`

```swift
case preprocessing
```

### `started`

```swift
case started
```

### `finalizing`

```swift
case finalizing
```

### `finished`

```swift
case finished
```
