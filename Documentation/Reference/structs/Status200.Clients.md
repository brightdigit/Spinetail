**STRUCT**

# `Status200.Clients`

```swift
public struct Clients: Model
```

The email client.

## Properties
### `client`

```swift
public var client: String?
```

The name of the email client.

### `members`

```swift
public var members: Int?
```

The number of subscribed members who used this email client.

## Methods
### `init(client:members:)`

```swift
public init(client: String? = nil, members: Int? = nil)
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
