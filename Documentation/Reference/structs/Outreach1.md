**STRUCT**

# `Outreach1`

```swift
public struct Outreach1: Codable
```

The outreach associated with this order. For example, an email campaign or Facebook ad.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the outreach. Can be an email campaign ID.

### `name`

```swift
public var name: String?
```

The name for the outreach.

### `type`

```swift
public var type: String?
```

The type of the outreach.

### `publishedTime`

```swift
public var publishedTime: Date?
```

The date and time the Outreach was published in ISO 8601 format.

## Methods
### `init(_id:name:type:publishedTime:)`

```swift
public init(_id: String? = nil, name: String? = nil, type: String? = nil, publishedTime: Date? = nil)
```
