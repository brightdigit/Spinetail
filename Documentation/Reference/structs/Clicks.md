**STRUCT**

# `Clicks`

```swift
public struct Clicks: Codable
```

An object describing the click activity for the campaign.

## Properties
### `clicksTotal`

```swift
public var clicksTotal: Int?
```

The total number of clicks for the campaign.

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

The total number of unique clicks for links across a campaign.

### `uniqueSubscriberClicks`

```swift
public var uniqueSubscriberClicks: Int?
```

The total number of subscribers who clicked on a campaign.

### `clickRate`

```swift
public var clickRate: Decimal?
```

The number of unique clicks divided by the total number of successful deliveries.

### `lastClick`

```swift
public var lastClick: Date?
```

The date and time of the last recorded click for the campaign in ISO 8601 format.

## Methods
### `init(clicksTotal:uniqueClicks:uniqueSubscriberClicks:clickRate:lastClick:)`

```swift
public init(clicksTotal: Int? = nil, uniqueClicks: Int? = nil, uniqueSubscriberClicks: Int? = nil, clickRate: Decimal? = nil, lastClick: Date? = nil)
```
