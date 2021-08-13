**STRUCT**

# `EmailActivity1`

```swift
public struct EmailActivity1: Codable
```

A list of a member&#x27;s subscriber activity in a specific campaign, including opens, clicks, and bounces.

## Properties
### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it&#x27;s deleted or disabled.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `emailAddress`

```swift
public var emailAddress: String?
```

Email address for a subscriber.

### `activity`

```swift
public var activity: [MemberActivity]?
```

An array of objects, each showing an interaction with the email.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(campaignId:listId:listIsActive:emailId:emailAddress:activity:links:)`

```swift
public init(campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, emailId: String? = nil, emailAddress: String? = nil, activity: [MemberActivity]? = nil, links: [ResourceLink]? = nil)
```
