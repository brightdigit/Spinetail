**STRUCT**

# `Reports.Opens`

```swift
public struct Opens: Model
```

An object describing the open activity for the campaign.

## Properties
### `lastOpen`

```swift
public var lastOpen: DateTime
```

The date and time of the last recorded open in ISO 8601 format.

### `openRate`

```swift
public var openRate: Double?
```

The number of unique opens divided by the total number of successful deliveries.

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

## Methods
### `init(lastOpen:openRate:opensTotal:uniqueOpens:)`

```swift
public init(lastOpen: Date? = nil, openRate: Double? = nil, opensTotal: Int? = nil, uniqueOpens: Int? = nil)
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
