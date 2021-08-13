**STRUCT**

# `InlineResponse2003`

```swift
public struct InlineResponse2003: Codable
```

An array of objects, each representing an Automation workflow.

## Properties
### `automations`

```swift
public var automations: [AutomationWorkflow2]?
```

An array of objects, each representing an Automation workflow.

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
### `init(automations:totalItems:links:)`

```swift
public init(automations: [AutomationWorkflow2]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
