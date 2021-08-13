**STRUCT**

# `MembersToSubscribeUnsubscribeTofromAListInBatch`

```swift
public struct MembersToSubscribeUnsubscribeTofromAListInBatch: Codable
```

Members to subscribe to or unsubscribe from a list.

## Properties
### `members`

```swift
public var members: [AddListMembers]
```

An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call.

### `updateExisting`

```swift
public var updateExisting: Bool?
```

Whether this batch operation will change existing members&#x27; subscription status.

## Methods
### `init(members:updateExisting:)`

```swift
public init(members: [AddListMembers], updateExisting: Bool? = nil)
```
