**STRUCT**

# `List5`

```swift
public struct List5: Codable
```

Information about a specific list segment.

## Properties
### `name`

```swift
public var name: String
```

The name of the segment.

### `staticSegment`

```swift
public var staticSegment: [String]?
```

An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array for an existing static segment will reset that segment and remove all members. This field cannot be provided with the &#x60;options&#x60; field.

### `options`

```swift
public var options: Conditions1?
```

## Methods
### `init(name:staticSegment:options:)`

```swift
public init(name: String, staticSegment: [String]? = nil, options: Conditions1? = nil)
```
