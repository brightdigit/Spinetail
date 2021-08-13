**STRUCT**

# `InlineResponse2004`

```swift
public struct InlineResponse2004: Codable
```

An automation workflow

## Properties
### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

### `emailId`

```swift
public var emailId: String?
```

A string that uniquely identifies an email in an Automation workflow.

### `queue`

```swift
public var queue: [SubscriberInAutomationQueue3]?
```

An array of objects, each representing a subscriber queue for an email in an Automation workflow.

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
### `init(workflowId:emailId:queue:totalItems:links:)`

```swift
public init(workflowId: String? = nil, emailId: String? = nil, queue: [SubscriberInAutomationQueue3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
