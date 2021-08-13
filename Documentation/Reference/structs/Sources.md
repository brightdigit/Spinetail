**STRUCT**

# `Sources`

```swift
public struct Sources: Codable
```

The possible sources of any events that can trigger the webhook and whether they are enabled.

## Properties
### `user`

```swift
public var user: Bool?
```

Whether the webhook is triggered by subscriber-initiated actions.

### `admin`

```swift
public var admin: Bool?
```

Whether the webhook is triggered by admin-initiated actions in the web interface.

### `api`

```swift
public var api: Bool?
```

Whether the webhook is triggered by actions initiated via the API.

## Methods
### `init(user:admin:api:)`

```swift
public init(user: Bool? = nil, admin: Bool? = nil, api: Bool? = nil)
```
