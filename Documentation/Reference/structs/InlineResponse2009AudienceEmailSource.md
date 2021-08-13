**STRUCT**

# `InlineResponse2009AudienceEmailSource`

```swift
public struct InlineResponse2009AudienceEmailSource: Codable
```

## Properties
### `name`

```swift
public var name: String?
```

Email source name

### `type`

```swift
public var type: String?
```

Type of the email source

### `isSegment`

```swift
public var isSegment: Bool?
```

Is the source reference a segment

### `segmentType`

```swift
public var segmentType: String?
```

Segment type if this source is tied to a segment

### `listName`

```swift
public var listName: String?
```

Associated list name to the source

## Methods
### `init(name:type:isSegment:segmentType:listName:)`

```swift
public init(name: String? = nil, type: String? = nil, isSegment: Bool? = nil, segmentType: String? = nil, listName: String? = nil)
```
