**STRUCT**

# `ClickSummary`

```swift
public struct ClickSummary: Codable
```

A summary of the click-throughs on the campaign&#x27;s URL.

## Properties
### `clicks`

```swift
public var clicks: Int?
```

The total number of clicks to the campaign&#x27;s URL.

### `firstClick`

```swift
public var firstClick: Date?
```

The timestamp for the first click to the URL.

### `lastClick`

```swift
public var lastClick: Date?
```

The timestamp for the last click to the URL.

### `locations`

```swift
public var locations: [Location2]?
```

A summary of the top click locations.

## Methods
### `init(clicks:firstClick:lastClick:locations:)`

```swift
public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, locations: [Location2]? = nil)
```
