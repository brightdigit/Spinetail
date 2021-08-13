**STRUCT**

# `Event`

```swift
public struct Event: Codable
```

A specific event for a contact.

## Properties
### `occurredAt`

```swift
public var occurredAt: Date?
```

The date and time the event occurred in ISO 8601 format.

### `name`

```swift
public var name: String?
```

The name for this type of event (&#x27;purchased&#x27;, &#x27;visited&#x27;, etc). Must be 2-30 characters in length

### `properties`

```swift
public var properties: [String: String]?
```

An optional list of properties

## Methods
### `init(occurredAt:name:properties:)`

```swift
public init(occurredAt: Date? = nil, name: String? = nil, properties: [String: String]? = nil)
```
