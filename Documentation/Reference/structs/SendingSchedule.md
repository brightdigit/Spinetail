**STRUCT**

# `SendingSchedule`

```swift
public struct SendingSchedule: Codable
```

The schedule for sending the RSS Campaign.

## Properties
### `hour`

```swift
public var hour: Int?
```

The hour to send the campaign in local time. Acceptable hours are 0-23. For example, &#x27;4&#x27; would be 4am in [your account&#x27;s default time zone](https://mailchimp.com/help/set-account-defaults/).

### `dailySend`

```swift
public var dailySend: DailySendingDays?
```

### `weeklySendDay`

```swift
public var weeklySendDay: WeeklySendDay?
```

The day of the week to send a weekly RSS Campaign.

### `monthlySendDate`

```swift
public var monthlySendDate: Decimal?
```

The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where &#x27;0&#x27; is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS Campaigns set to send on the 30th will not go out in February.

## Methods
### `init(hour:dailySend:weeklySendDay:monthlySendDate:)`

```swift
public init(hour: Int? = nil, dailySend: DailySendingDays? = nil, weeklySendDay: WeeklySendDay? = nil, monthlySendDate: Decimal? = nil)
```
