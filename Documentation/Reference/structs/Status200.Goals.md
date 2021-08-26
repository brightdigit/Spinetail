**STRUCT**

# `Status200.Goals`

```swift
public struct Goals: Model
```

A single instance of a goal activity.

## Properties
### `data`

```swift
public var data: String?
```

Any extra data passed with the Goal event.

### `event`

```swift
public var event: String?
```

The name/type of Goal event triggered.

### `goalId`

```swift
public var goalId: Int?
```

The id for a Goal event.

### `lastVisitedAt`

```swift
public var lastVisitedAt: DateTime
```

The date and time the user last triggered the Goal event in ISO 8601 format.

## Methods
### `init(data:event:goalId:lastVisitedAt:)`

```swift
public init(data: String? = nil, event: String? = nil, goalId: Int? = nil, lastVisitedAt: Date? = nil)
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
