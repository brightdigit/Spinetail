**STRUCT**

# `Body.Delay`

```swift
public struct Delay: Model
```

The delay settings for an automation email.

## Properties
### `action`

```swift
public var action: Action
```

The action that triggers the delay of an automation emails.

### `amount`

```swift
public var amount: Int?
```

The delay amount for an automation email.

### `direction`

```swift
public var direction: Direction?
```

Whether the delay settings describe before or after the delay action of an automation email.

### `type`

```swift
public var type: `Type`?
```

The type of delay for an automation email.

## Methods
### `init(action:amount:direction:type:)`

```swift
public init(action: Action, amount: Int? = nil, direction: Direction? = nil, type: Type? = nil)
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
