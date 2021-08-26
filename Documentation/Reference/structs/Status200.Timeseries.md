**STRUCT**

# `Status200.Timeseries`

```swift
public struct Timeseries: Model
```

Report details about a sent campaign.

## Properties
### `emailsSent`

```swift
public var emailsSent: Int?
```

The number of emails sent in the timeseries.

### `recipientsClicks`

```swift
public var recipientsClicks: Int?
```

The number of clicks in the timeseries.

### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time for the series in ISO 8601 format.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens in the timeseries.

## Methods
### `init(emailsSent:recipientsClicks:timestamp:uniqueOpens:)`

```swift
public init(emailsSent: Int? = nil, recipientsClicks: Int? = nil, timestamp: Date? = nil, uniqueOpens: Int? = nil)
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
