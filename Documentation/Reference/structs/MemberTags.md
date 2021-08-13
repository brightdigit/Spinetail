**STRUCT**

# `MemberTags`

```swift
public struct MemberTags: Codable
```

A list of tags assigned to a list member.

## Properties
### `tags`

```swift
public var tags: [MemberTag]
```

A list of tags assigned to the list member.

### `isSyncing`

```swift
public var isSyncing: Bool?
```

When is_syncing is true, automations based on the tags in the request will not fire

## Methods
### `init(tags:isSyncing:)`

```swift
public init(tags: [MemberTag], isSyncing: Bool? = nil)
```
