**STRUCT**

# `RemovedSubscribers`

```swift
public struct RemovedSubscribers: Codable
```

A summary of the subscribers who were removed from an Automation workflow.

## Properties
### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

### `subscribers`

```swift
public var subscribers: [SubscriberRemovedFromAutomationWorkflow1]?
```

An array of objects, each representing a subscriber who was removed from an Automation workflow.

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
### `init(workflowId:subscribers:totalItems:links:)`

```swift
public init(workflowId: String? = nil, subscribers: [SubscriberRemovedFromAutomationWorkflow1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
