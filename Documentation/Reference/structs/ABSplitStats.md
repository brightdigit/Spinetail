**STRUCT**

# `ABSplitStats`

```swift
public struct ABSplitStats: Codable
```

General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.

## Properties
### `a`

```swift
public var a: CampaignA?
```

### `b`

```swift
public var b: CampaignB?
```

## Methods
### `init(a:b:)`

```swift
public init(a: CampaignA? = nil, b: CampaignB? = nil)
```
