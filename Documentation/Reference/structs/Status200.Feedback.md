**STRUCT**

# `Status200.Feedback`

```swift
public struct Feedback: Model
```

Check if this ad is connected to a facebook page

## Properties
### `audience`

```swift
public var audience: String?
```

Feedback regarding the audience of this Ad.

### `budget`

```swift
public var budget: String?
```

Feedback regarding the budget of this Ad.

### `compliance`

```swift
public var compliance: String?
```

Feedback regarding the compliance of this Ad.

### `content`

```swift
public var content: String?
```

Feedback regarding the content of this Ad.

## Methods
### `init(audience:budget:compliance:content:)`

```swift
public init(audience: String? = nil, budget: String? = nil, compliance: String? = nil, content: String? = nil)
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
