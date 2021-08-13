**STRUCT**

# `MemberActivityEvents1`

```swift
public struct MemberActivityEvents1: Codable
```

The member activity events for a given member.

## Properties
### `activity`

```swift
public var activity: [MemberActivityEvent]?
```

An array of objects, each representing a contact event. There are multiple possible types, see the [activity schema documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#activity-schemas).

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

### `listId`

```swift
public var listId: String?
```

The list id.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(activity:emailId:listId:links:)`

```swift
public init(activity: [MemberActivityEvent]? = nil, emailId: String? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
