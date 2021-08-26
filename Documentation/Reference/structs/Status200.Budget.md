**STRUCT**

# `Status200.Budget`

```swift
public struct Budget: Model
```

Get report of a Facebook ad.

## Properties
### `currencyCode`

```swift
public var currencyCode: String?
```

Currency code

### `duration`

```swift
public var duration: Int?
```

Duration of the ad in seconds

### `totalAmount`

```swift
public var totalAmount: Double?
```

Total budget of the ad

## Methods
### `init(currencyCode:duration:totalAmount:)`

```swift
public init(currencyCode: String? = nil, duration: Int? = nil, totalAmount: Double? = nil)
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
