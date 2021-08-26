**STRUCT**

# `Styles.Options`

```swift
public struct Options: Model
```

An option for Signup Form Styles.

## Properties
### `property`

```swift
public var property: String?
```

A string that identifies the property.

### `value`

```swift
public var value: String?
```

A string that identifies value of the property.

## Methods
### `init(property:value:)`

```swift
public init(property: String? = nil, value: String? = nil)
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
