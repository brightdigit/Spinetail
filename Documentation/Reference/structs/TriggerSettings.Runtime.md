**STRUCT**

# `TriggerSettings.Runtime`

```swift
public struct Runtime: Model
```

A workflow's runtime settings for an Automation.

## Properties
### `days`

```swift
public var days: [Days]?
```

The days an Automation workflow can send.

### `hours`

```swift
public var hours: Hours?
```

The hours an Automation workflow can send.

## Methods
### `init(days:hours:)`

```swift
public init(days: [Days]? = nil, hours: Hours? = nil)
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
