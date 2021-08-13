**STRUCT**

# `AutomationEmails`

```swift
public struct AutomationEmails: Codable
```

A summary of the emails in an Automation workflow.

## Properties
### `emails`

```swift
public var emails: [AutomationWorkflowEmail1]?
```

An array of objects, each representing an email in an Automation workflow.

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
### `init(emails:totalItems:links:)`

```swift
public init(emails: [AutomationWorkflowEmail1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
