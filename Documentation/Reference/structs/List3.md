**STRUCT**

# `List3`

```swift
public struct List3: Codable
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

An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array will create a static segment without any subscribers. This field cannot be provided with the options field.

### `options`

```swift
public var options: Conditions?
```

## Methods
### `init(name:staticSegment:options:)`

```swift
public init(name: String, staticSegment: [String]? = nil, options: Conditions? = nil)
```
