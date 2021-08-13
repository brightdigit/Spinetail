**STRUCT**

# `WeeklyClicksAndVisitsData`

```swift
public struct WeeklyClicksAndVisitsData: Codable
```

The clicks and visits data from the last five weeks.

## Properties
### `clicks`

```swift
public var clicks: [WeeklyClicksAndVisitsDataClicks]?
```

The total number of clicks in a week.

### `visits`

```swift
public var visits: [WeeklyClicksAndVisitsDataVisits]?
```

The total number of visits in a week.

### `uniqueVisits`

```swift
public var uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]?
```

## Methods
### `init(clicks:visits:uniqueVisits:)`

```swift
public init(clicks: [WeeklyClicksAndVisitsDataClicks]? = nil, visits: [WeeklyClicksAndVisitsDataVisits]? = nil, uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]? = nil)
```
