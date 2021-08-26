**STRUCT**

# `Runtime.Hours`

```swift
public struct Hours: Model
```

The hours an Automation workflow can send.

## Properties
### `type`

```swift
public var type: `Type`
```

When to send the Automation email.

## Methods
### `init(type:)`

```swift
public init(type: Type)
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
