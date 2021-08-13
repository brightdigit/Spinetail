**STRUCT**

# `Conditions1`

```swift
public struct Conditions1: Codable
```

The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don&#x27;t have conditions.

## Properties
### `match`

```swift
public var match: Match?
```

Match type.

### `conditions`

```swift
public var conditions: [[ConditionFilter]]?
```

An array of segment conditions.

## Methods
### `init(match:conditions:)`

```swift
public init(match: Match? = nil, conditions: [[ConditionFilter]]? = nil)
```
