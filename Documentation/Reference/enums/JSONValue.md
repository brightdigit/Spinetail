**ENUM**

# `JSONValue`

```swift
public enum JSONValue: Codable, Equatable
```

## Cases
### `string(_:)`

```swift
case string(String)
```

### `int(_:)`

```swift
case int(Int)
```

### `double(_:)`

```swift
case double(Double)
```

### `bool(_:)`

```swift
case bool(Bool)
```

### `object(_:)`

```swift
case object([String: JSONValue])
```

### `array(_:)`

```swift
case array([JSONValue])
```

### `null`

```swift
case null
```

## Methods
### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |