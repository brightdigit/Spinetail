**STRUCT**

# `Status200.Clicks`

```swift
public struct Clicks: Model
```

A summary of the click-throughs on the campaign's URL.

## Properties
### `clicks`

```swift
public var clicks: Int?
```

The total number of clicks to the campaign's URL.

### `firstClick`

```swift
public var firstClick: DateTime
```

The timestamp for the first click to the URL.

### `lastClick`

```swift
public var lastClick: DateTime
```

The timestamp for the last click to the URL.

### `locations`

```swift
public var locations: [Locations]?
```

A summary of the top click locations.

## Methods
### `init(clicks:firstClick:lastClick:locations:)`

```swift
public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, locations: [Locations]? = nil)
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
