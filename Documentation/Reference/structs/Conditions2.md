**STRUCT**

# `Conditions2`

```swift
public struct Conditions2: Codable
```

The conditions of the segment. Static segments (tags) and fuzzy segments don&#x27;t have conditions.

## Properties
### `match`

```swift
public var match: Match?
```

Match type.

### `conditions`

```swift
public var conditions: [ConditionFilter]?
```

Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas).

## Methods
### `init(match:conditions:)`

```swift
public init(match: Match? = nil, conditions: [ConditionFilter]? = nil)
```
