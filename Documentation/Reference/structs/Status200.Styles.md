**STRUCT**

# `Status200.Styles`

```swift
public struct Styles: Model
```

Collection of Element style for List Signup Forms.

## Properties
### `options`

```swift
public var options: [Options]?
```

A collection of options for a selector.

### `selector`

```swift
public var selector: Selector?
```

A string that identifies the element selector.

## Methods
### `init(options:selector:)`

```swift
public init(options: [Options]? = nil, selector: Selector? = nil)
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
