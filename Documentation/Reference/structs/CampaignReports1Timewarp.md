**STRUCT**

# `CampaignReports1Timewarp`

```swift
public struct CampaignReports1Timewarp: Codable
```

## Properties
### `gmtOffset`

```swift
public var gmtOffset: Int?
```

For campaigns sent with timewarp, the time zone group the member is apart of.

### `opens`

```swift
public var opens: Int?
```

The number of opens.

### `lastOpen`

```swift
public var lastOpen: Date?
```

The date and time of the last open in ISO 8601 format.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens.

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks.

### `lastClick`

```swift
public var lastClick: Date?
```

The date and time of the last click in ISO 8601 format.

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

The number of unique clicks.

### `bounces`

```swift
public var bounces: Int?
```

The number of bounces.

## Methods
### `init(gmtOffset:opens:lastOpen:uniqueOpens:clicks:lastClick:uniqueClicks:bounces:)`

```swift
public init(gmtOffset: Int? = nil, opens: Int? = nil, lastOpen: Date? = nil, uniqueOpens: Int? = nil, clicks: Int? = nil, lastClick: Date? = nil, uniqueClicks: Int? = nil, bounces: Int? = nil)
```
