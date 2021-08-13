**STRUCT**

# `AutomationWorkflowRuntimeSettings`

```swift
public struct AutomationWorkflowRuntimeSettings: Codable
```

A workflow&#x27;s runtime settings for an Automation.

## Properties
### `days`

```swift
public var days: [Days]?
```

The days an Automation workflow can send.

### `hours`

```swift
public var hours: Hours?
```

## Methods
### `init(days:hours:)`

```swift
public init(days: [Days]? = nil, hours: Hours? = nil)
```
