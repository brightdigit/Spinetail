**STRUCT**

# `Request.Body`

```swift
public struct Body: Model
```

Submit a response to the verification challenge and verify a domain for sending.

## Properties
### `code`

```swift
public var code: String
```

The code that was sent to the email address provided when adding a new domain to verify.

## Methods
### `init(code:)`

```swift
public init(code: String)
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
