**ENUM**

# `JSONOptionalDate`

```swift
public enum JSONOptionalDate: Codable, Equatable
```

## Cases
### `none`

```swift
case none
```

### `some(_:)`

```swift
case some(Date)
```

## Methods
### `init(date:)`

```swift
public init(date: Date?)
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