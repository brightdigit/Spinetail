**STRUCT**

# `Webhooks.Sources`

```swift
public struct Sources: Model
```

The possible sources of any events that can trigger the webhook and whether they are enabled.

## Properties
### `admin`

```swift
public var admin: Bool?
```

Whether the webhook is triggered by admin-initiated actions in the web interface.

### `api`

```swift
public var api: Bool?
```

Whether the webhook is triggered by actions initiated via the API.

### `user`

```swift
public var user: Bool?
```

Whether the webhook is triggered by subscriber-initiated actions.

## Methods
### `init(admin:api:user:)`

```swift
public init(admin: Bool? = nil, api: Bool? = nil, user: Bool? = nil)
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
