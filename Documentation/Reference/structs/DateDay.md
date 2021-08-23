**STRUCT**

# `DateDay`

```swift
public struct DateDay: Codable, Comparable
```

## Properties
### `date`

```swift
public let date: Date
```

### `year`

```swift
public let year: Int
```

### `month`

```swift
public let month: Int
```

### `day`

```swift
public let day: Int
```

## Methods
### `init(date:)`

```swift
public init(date: Date = Date())
```

### `init(year:month:day:)`

```swift
public init(year: Int, month: Int, day: Int)
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

### `==(_:_:)`

```swift
public static func == (lhs: DateDay, rhs: DateDay) -> Bool
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| lhs | A value to compare. |
| rhs | Another value to compare. |

### `<(_:_:)`

```swift
public static func < (lhs: DateDay, rhs: DateDay) -> Bool
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| lhs | A value to compare. |
| rhs | Another value to compare. |