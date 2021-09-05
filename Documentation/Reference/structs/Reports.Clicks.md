**STRUCT**

# `Reports.Clicks`

```swift
public struct Clicks: Model
```

An object describing the click activity for the campaign.

## Properties
### `clickRate`

```swift
public var clickRate: Double?
```

The number of unique clicks divided by the total number of successful deliveries.

### `clicksTotal`

```swift
public var clicksTotal: Int?
```

The total number of clicks for the campaign.

### `lastClick`

```swift
public var lastClick: DateTime
```

The date and time of the last recorded click for the campaign in ISO 8601 format.

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

## Methods
### `init(clickRate:clicksTotal:lastClick:uniqueClicks:uniqueSubscriberClicks:)`

```swift
public init(clickRate: Double? = nil, clicksTotal: Int? = nil, lastClick: Date? = nil, uniqueClicks: Int? = nil, uniqueSubscriberClicks: Int? = nil)
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
