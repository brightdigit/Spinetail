**STRUCT**

# `UrlsClicked.AbSplit`

```swift
public struct AbSplit: Model
```

A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.

## Properties
### `a`

```swift
public var a: A?
```

Stats for Group A.

### `b`

```swift
public var b: B?
```

Stats for Group B.

## Methods
### `init(a:b:)`

```swift
public init(a: A? = nil, b: B? = nil)
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
