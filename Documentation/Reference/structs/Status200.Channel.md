**STRUCT**

# `Status200.Channel`

```swift
public struct Channel: Model
```

Channel settings

## Properties
### `fbPlacementAudience`

```swift
public var fbPlacementAudience: Bool?
```

Is this for facebook audience

### `fbPlacementFeed`

```swift
public var fbPlacementFeed: Bool?
```

Is this for facebook feed

### `igPlacementFeed`

```swift
public var igPlacementFeed: Bool?
```

Is this for instagram feed

## Methods
### `init(fbPlacementAudience:fbPlacementFeed:igPlacementFeed:)`

```swift
public init(fbPlacementAudience: Bool? = nil, fbPlacementFeed: Bool? = nil, igPlacementFeed: Bool? = nil)
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
