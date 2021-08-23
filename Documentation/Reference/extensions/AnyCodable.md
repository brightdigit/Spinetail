**EXTENSION**

# `AnyCodable`
```swift
extension AnyCodable: Codable
```

## Properties
### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```

## Methods
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
public static func == (lhs: AnyCodable, rhs: AnyCodable) -> Bool
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| lhs | A value to compare. |
| rhs | Another value to compare. |

### `init(nilLiteral:)`

```swift
public init(nilLiteral _: ())
```

### `init(booleanLiteral:)`

```swift
public init(booleanLiteral value: Bool)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | The value of the new instance. |

### `init(integerLiteral:)`

```swift
public init(integerLiteral value: Int)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | The value to create. |

### `init(floatLiteral:)`

```swift
public init(floatLiteral value: Double)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | The value to create. |

### `init(extendedGraphemeClusterLiteral:)`

```swift
public init(extendedGraphemeClusterLiteral value: String)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | The value of the new instance. |

### `init(stringLiteral:)`

```swift
public init(stringLiteral value: String)
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | The value of the new instance. |

### `init(arrayLiteral:)`

```swift
public init(arrayLiteral elements: Any...)
```

### `init(dictionaryLiteral:)`

```swift
public init(dictionaryLiteral elements: (AnyHashable, Any)...)
```
