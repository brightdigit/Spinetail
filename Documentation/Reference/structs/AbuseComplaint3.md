**STRUCT**

# `AbuseComplaint3`

```swift
public struct AbuseComplaint3: Codable
```

Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to &#x27;report spam&#x27; in their email program.

## Properties
### `_id`

```swift
public var _id: Int?
```

The id for the abuse report

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id for the abuse report

### `listId`

```swift
public var listId: String?
```

The list id for the abuse report.

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

### `mergeFields`

```swift
public var mergeFields: [String: String]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;}

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

### `date`

```swift
public var date: String?
```

Date for the abuse report

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:campaignId:listId:emailId:emailAddress:mergeFields:vip:date:links:)`

```swift
public init(_id: Int? = nil, campaignId: String? = nil, listId: String? = nil, emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, date: String? = nil, links: [ResourceLink]? = nil)
```
