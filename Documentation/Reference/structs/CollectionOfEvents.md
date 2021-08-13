**STRUCT**

# `CollectionOfEvents`

```swift
public struct CollectionOfEvents: Codable
```

A collection of events for a given contact

## Properties
### `events`

```swift
public var events: [Event]?
```

An array of objects, each representing an event.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(events:totalItems:links:)`

```swift
public init(events: [Event]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
