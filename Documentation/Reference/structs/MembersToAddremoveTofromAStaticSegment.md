**STRUCT**

# `MembersToAddremoveTofromAStaticSegment`

```swift
public struct MembersToAddremoveTofromAStaticSegment: Codable
```

Members to add/remove to/from a static segment

## Properties
### `membersToAdd`

```swift
public var membersToAdd: [String]?
```

An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.

### `membersToRemove`

```swift
public var membersToRemove: [String]?
```

An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.

## Methods
### `init(membersToAdd:membersToRemove:)`

```swift
public init(membersToAdd: [String]? = nil, membersToRemove: [String]? = nil)
```
