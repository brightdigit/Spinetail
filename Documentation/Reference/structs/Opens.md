**STRUCT**

# `Opens`

```swift
public struct Opens: Codable
```

An object describing the open activity for the campaign.

## Properties
### `opensTotal`

```swift
public var opensTotal: Int?
```

The total number of opens for a campaign.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The total number of unique opens.

### `openRate`

```swift
public var openRate: Decimal?
```

The number of unique opens divided by the total number of successful deliveries.

### `lastOpen`

```swift
public var lastOpen: Date?
```

The date and time of the last recorded open in ISO 8601 format.

## Methods
### `init(opensTotal:uniqueOpens:openRate:lastOpen:)`

```swift
public init(opensTotal: Int? = nil, uniqueOpens: Int? = nil, openRate: Decimal? = nil, lastOpen: Date? = nil)
```
