**STRUCT**

# `ABSplit`

```swift
public struct ABSplit: Codable
```

A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.

## Properties
### `a`

```swift
public var a: GroupA?
```

### `b`

```swift
public var b: GroupB?
```

## Methods
### `init(a:b:)`

```swift
public init(a: GroupA? = nil, b: GroupB? = nil)
```
