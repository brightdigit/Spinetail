**STRUCT**

# `DailyClicksAndVisitsData`

```swift
public struct DailyClicksAndVisitsData: Codable
```

The clicks and visits data from the last seven days.

## Properties
### `clicks`

```swift
public var clicks: [DailyClicksAndVisitsDataClicks]?
```

### `visits`

```swift
public var visits: [DailyClicksAndVisitsDataVisits]?
```

### `uniqueVisits`

```swift
public var uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]?
```

## Methods
### `init(clicks:visits:uniqueVisits:)`

```swift
public init(clicks: [DailyClicksAndVisitsDataClicks]? = nil, visits: [DailyClicksAndVisitsDataVisits]? = nil, uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]? = nil)
```
