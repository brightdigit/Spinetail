**STRUCT**

# `MemberTag`

```swift
public struct MemberTag: Codable
```

Add or remove tags on a member by declaring a tag either active or inactive on a member.

## Properties
### `name`

```swift
public var name: String
```

The name of the tag.

### `status`

```swift
public var status: Status
```

The status for the tag on the member, pass in active to add a tag or inactive to remove it.

## Methods
### `init(name:status:)`

```swift
public init(name: String, status: Status)
```
