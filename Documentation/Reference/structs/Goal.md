**STRUCT**

# `Goal`

```swift
public struct Goal: Codable
```

A single instance of a goal activity.

## Properties
### `goalId`

```swift
public var goalId: Int?
```

The id for a Goal event.

### `event`

```swift
public var event: String?
```

The name/type of Goal event triggered.

### `lastVisitedAt`

```swift
public var lastVisitedAt: Date?
```

The date and time the user last triggered the Goal event in ISO 8601 format.

### `data`

```swift
public var data: String?
```

Any extra data passed with the Goal event.

## Methods
### `init(goalId:event:lastVisitedAt:data:)`

```swift
public init(goalId: Int? = nil, event: String? = nil, lastVisitedAt: Date? = nil, data: String? = nil)
```
