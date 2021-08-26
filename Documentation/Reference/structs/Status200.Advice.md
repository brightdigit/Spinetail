**STRUCT**

# `Status200.Advice`

```swift
public struct Advice: Model
```

Campaign feedback details.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `message`

```swift
public var message: String?
```

The advice message.

### `type`

```swift
public var type: `Type`?
```

The sentiment type for a feedback message.

## Methods
### `init(links:message:type:)`

```swift
public init(links: [Links]? = nil, message: String? = nil, type: Type? = nil)
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
