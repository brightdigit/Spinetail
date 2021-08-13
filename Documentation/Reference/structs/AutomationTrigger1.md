**STRUCT**

# `AutomationTrigger1`

```swift
public struct AutomationTrigger1: Codable
```

Available triggers for Automation workflows.

## Properties
### `workflowType`

```swift
public var workflowType: WorkflowType
```

The type of Automation workflow.

### `workflowTitle`

```swift
public var workflowTitle: String?
```

The title of the workflow type.

### `runtime`

```swift
public var runtime: AutomationWorkflowRuntimeSettings?
```

### `workflowEmailsCount`

```swift
public var workflowEmailsCount: Int?
```

The number of emails in the Automation workflow.

## Methods
### `init(workflowType:workflowTitle:runtime:workflowEmailsCount:)`

```swift
public init(workflowType: WorkflowType, workflowTitle: String? = nil, runtime: AutomationWorkflowRuntimeSettings? = nil, workflowEmailsCount: Int? = nil)
```
