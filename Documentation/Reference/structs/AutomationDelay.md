**STRUCT**

# `AutomationDelay`

```swift
public struct AutomationDelay: Codable
```

The delay settings for an automation email.

## Properties
### `amount`

```swift
public var amount: Int?
```

The delay amount for an automation email.

### `type`

```swift
public var type: ModelType?
```

The type of delay for an automation email.

### `direction`

```swift
public var direction: Direction?
```

Whether the delay settings describe before or after the delay action of an automation email.

### `action`

```swift
public var action: Action
```

The action that triggers the delay of an automation emails.

## Methods
### `init(amount:type:direction:action:)`

```swift
public init(amount: Int? = nil, type: ModelType? = nil, direction: Direction? = nil, action: Action)
```
