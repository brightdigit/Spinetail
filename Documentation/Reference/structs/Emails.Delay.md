**STRUCT**

# `Emails.Delay`

```swift
public struct Delay: Model
```

The delay settings for an Automation email.

## Properties
### `action`

```swift
public var action: Action?
```

The action that triggers the delay of an Automation email.

### `actionDescription`

```swift
public var actionDescription: String?
```

The user-friendly description of the action that triggers an Automation email.

### `amount`

```swift
public var amount: Int?
```

The delay amount for an Automation email.

### `direction`

```swift
public var direction: Direction?
```

Whether the delay settings describe before or after the delay action of an Automation email.

### `fullDescription`

```swift
public var fullDescription: String?
```

The user-friendly description of the delay and trigger action settings for an Automation email.

### `type`

```swift
public var type: `Type`?
```

The type of delay for an Automation email.

## Methods
### `init(action:actionDescription:amount:direction:fullDescription:type:)`

```swift
public init(action: Action? = nil, actionDescription: String? = nil, amount: Int? = nil, direction: Direction? = nil, fullDescription: String? = nil, type: Type? = nil)
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
