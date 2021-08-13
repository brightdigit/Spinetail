**STRUCT**

# `AutomationDelay1`

```swift
public struct AutomationDelay1: Codable
```

The delay settings for an Automation email.

## Properties
### `amount`

```swift
public var amount: Int?
```

The delay amount for an Automation email.

### `type`

```swift
public var type: ModelType?
```

The type of delay for an Automation email.

### `direction`

```swift
public var direction: Direction?
```

Whether the delay settings describe before or after the delay action of an Automation email.

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

### `fullDescription`

```swift
public var fullDescription: String?
```

The user-friendly description of the delay and trigger action settings for an Automation email.

## Methods
### `init(amount:type:direction:action:actionDescription:fullDescription:)`

```swift
public init(amount: Int? = nil, type: ModelType? = nil, direction: Direction? = nil, action: Action? = nil, actionDescription: String? = nil, fullDescription: String? = nil)
```
