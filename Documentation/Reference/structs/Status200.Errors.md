**STRUCT**

# `Status200.Errors`

```swift
public struct Errors: Model
```

Batch add/remove List members to/from static segment

## Properties
### `emailAddresses`

```swift
public var emailAddresses: [String]?
```

Email addresses added to the static segment or removed

### `error`

```swift
public var error: String?
```

The error message indicating why the email addresses could not be added or updated.

## Methods
### `init(emailAddresses:error:)`

```swift
public init(emailAddresses: [String]? = nil, error: String? = nil)
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
