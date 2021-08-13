**STRUCT**

# `SubscriberRemovedFromAutomationWorkflow1`

```swift
public struct SubscriberRemovedFromAutomationWorkflow1: Codable
```

A summary of a subscriber removed from an Automation workflow.

## Properties
### `_id`

```swift
public var _id: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `workflowId`

```swift
public var workflowId: String?
```

A string that uniquely identifies an Automation workflow.

### `listId`

```swift
public var listId: String?
```

A string that uniquely identifies a list.

### `emailAddress`

```swift
public var emailAddress: String?
```

The list member&#x27;s email address.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:workflowId:listId:emailAddress:links:)`

```swift
public init(_id: String? = nil, workflowId: String? = nil, listId: String? = nil, emailAddress: String? = nil, links: [ResourceLink]? = nil)
```
