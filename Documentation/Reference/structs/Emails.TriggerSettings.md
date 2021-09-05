**STRUCT**

# `Emails.TriggerSettings`

```swift
public struct TriggerSettings: Model
```

Available triggers for Automation workflows.

## Properties
### `workflowType`

```swift
public var workflowType: WorkflowType
```

The type of Automation workflow.

### `runtime`

```swift
public var runtime: Runtime?
```

A workflow's runtime settings for an Automation.

### `workflowEmailsCount`

```swift
public var workflowEmailsCount: Int?
```

The number of emails in the Automation workflow.

### `workflowTitle`

```swift
public var workflowTitle: String?
```

The title of the workflow type.

## Methods
### `init(workflowType:runtime:workflowEmailsCount:workflowTitle:)`

```swift
public init(workflowType: WorkflowType, runtime: Runtime? = nil, workflowEmailsCount: Int? = nil, workflowTitle: String? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
