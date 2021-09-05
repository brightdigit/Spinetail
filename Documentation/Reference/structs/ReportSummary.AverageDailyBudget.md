**STRUCT**

# `ReportSummary.AverageDailyBudget`

```swift
public struct AverageDailyBudget: Model
```

Report summary of facebook ad

## Properties
### `amount`

```swift
public var amount: Double?
```

### `currencyCode`

```swift
public var currencyCode: String?
```

## Methods
### `init(amount:currencyCode:)`

```swift
public init(amount: Double? = nil, currencyCode: String? = nil)
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
