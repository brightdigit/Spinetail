**STRUCT**

# `SubscriberInAutomationQueue1`

```swift
public struct SubscriberInAutomationQueue1: Codable
```

Information about subscribers in an Automation email queue.

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

### `emailId`

```swift
public var emailId: String?
```

A string that uniquely identifies an email in an Automation workflow.

### `listId`

```swift
public var listId: String?
```

A string that uniquely identifies a list.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it&#x27;s deleted or disabled.

### `emailAddress`

```swift
public var emailAddress: String?
```

The list member&#x27;s email address.

### `nextSend`

```swift
public var nextSend: Date?
```

The date and time of the next send for the workflow email in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:workflowId:emailId:listId:listIsActive:emailAddress:nextSend:links:)`

```swift
public init(_id: String? = nil, workflowId: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, emailAddress: String? = nil, nextSend: Date? = nil, links: [ResourceLink]? = nil)
```
