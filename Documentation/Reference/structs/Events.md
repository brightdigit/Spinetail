**STRUCT**

# `Events`

```swift
public struct Events: Codable
```

A new event for a specific list member

## Properties
### `name`

```swift
public var name: String
```

The name for this type of event (&#x27;purchased&#x27;, &#x27;visited&#x27;, etc). Must be 2-30 characters in length

### `properties`

```swift
public var properties: [String: String]?
```

An optional list of properties

### `isSyncing`

```swift
public var isSyncing: Bool?
```

Events created with the is_syncing value set to &#x60;true&#x60; will not trigger automations.

### `occurredAt`

```swift
public var occurredAt: Date?
```

The date and time the event occurred in ISO 8601 format.

## Methods
### `init(name:properties:isSyncing:occurredAt:)`

```swift
public init(name: String, properties: [String: String]? = nil, isSyncing: Bool? = nil, occurredAt: Date? = nil)
```
