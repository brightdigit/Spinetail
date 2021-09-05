**STRUCT**

# `Body.TriggerSettings`

```swift
public struct TriggerSettings: Model
```

Trigger settings for the Automation.

## Properties
### `workflowType`

```swift
public var workflowType: String
```

The type of Automation workflow. Currently only supports 'abandonedCart'.

## Methods
### `init(workflowType:)`

```swift
public init(workflowType: String)
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
