**STRUCT**

# `Referrer`

```swift
public struct Referrer: Codable
```

A single instance of a campaign referral.

## Properties
### `referrer`

```swift
public var referrer: String?
```

A referrer (truncated to 100 bytes).

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks a single referrer generated.

### `firstClick`

```swift
public var firstClick: Date?
```

The timestamp for the first click from this referrer.

### `lastClick`

```swift
public var lastClick: Date?
```

The timestamp for the last click from this referrer.

## Methods
### `init(referrer:clicks:firstClick:lastClick:)`

```swift
public init(referrer: String? = nil, clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil)
```
