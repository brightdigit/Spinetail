**STRUCT**

# `Status200.Emails`

```swift
public struct Emails: Model
```

A list of a member's subscriber activity in a specific campaign, including opens, clicks, and bounces.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `activity`

```swift
public var activity: [Activity]?
```

An array of objects, each showing an interaction with the email.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member's email address.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it's deleted or disabled.

## Methods
### `init(links:activity:campaignId:emailAddress:emailId:listId:listIsActive:)`

```swift
public init(links: [Links]? = nil, activity: [Activity]? = nil, campaignId: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil)
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
