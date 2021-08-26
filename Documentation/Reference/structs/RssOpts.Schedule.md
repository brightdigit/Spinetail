**STRUCT**

# `RssOpts.Schedule`

```swift
public struct Schedule: Model
```

The schedule for sending the RSS Campaign.

## Properties
### `dailySend`

```swift
public var dailySend: DailySend?
```

The days of the week to send a daily RSS Campaign.

### `hour`

```swift
public var hour: Int?
```

The hour to send the campaign in local time. Acceptable hours are 0-23. For example, '4' would be 4am in [your account's default time zone](https://mailchimp.com/help/set-account-defaults/).

### `monthlySendDate`

```swift
public var monthlySendDate: Double?
```

The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where '0' is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS Campaigns set to send on the 30th will not go out in February.

### `weeklySendDay`

```swift
public var weeklySendDay: WeeklySendDay?
```

The day of the week to send a weekly RSS Campaign.

## Methods
### `init(dailySend:hour:monthlySendDate:weeklySendDay:)`

```swift
public init(dailySend: DailySend? = nil, hour: Int? = nil, monthlySendDate: Double? = nil, weeklySendDay: WeeklySendDay? = nil)
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
