**STRUCT**

# `CampaignReports1Timeseries`

```swift
public struct CampaignReports1Timeseries: Codable
```

## Properties
### `timestamp`

```swift
public var timestamp: Date?
```

The date and time for the series in ISO 8601 format.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The number of emails sent in the timeseries.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens in the timeseries.

### `recipientsClicks`

```swift
public var recipientsClicks: Int?
```

The number of clicks in the timeseries.

## Methods
### `init(timestamp:emailsSent:uniqueOpens:recipientsClicks:)`

```swift
public init(timestamp: Date? = nil, emailsSent: Int? = nil, uniqueOpens: Int? = nil, recipientsClicks: Int? = nil)
```
