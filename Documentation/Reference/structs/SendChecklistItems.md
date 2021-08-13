**STRUCT**

# `SendChecklistItems`

```swift
public struct SendChecklistItems: Codable
```

## Properties
### `type`

```swift
public var type: ModelType?
```

The item type.

### `_id`

```swift
public var _id: Int?
```

The ID for the specific item.

### `heading`

```swift
public var heading: String?
```

The heading for the specific item.

### `details`

```swift
public var details: String?
```

Details about the specific feedback item.

## Methods
### `init(type:_id:heading:details:)`

```swift
public init(type: ModelType? = nil, _id: Int? = nil, heading: String? = nil, details: String? = nil)
```
