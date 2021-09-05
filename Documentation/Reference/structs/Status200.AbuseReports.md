**STRUCT**

# `Status200.AbuseReports`

```swift
public struct AbuseReports: Model
```

Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to 'report spam' in their email program.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id for the abuse report

### `date`

```swift
public var date: DateTime
```

Date for the abuse report

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

### `id`

```swift
public var id: Int?
```

The id for the abuse report

### `listId`

```swift
public var listId: String?
```

The unique id of the list for the abuse report.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it's deleted or disabled.

### `mergeFields`

```swift
public var mergeFields: [String: [String: CodableAny]]?
```

A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"}

### `vip`

```swift
public var vip: Bool?
```

[VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.

## Methods
### `init(links:campaignId:date:emailAddress:emailId:id:listId:listIsActive:mergeFields:vip:)`

```swift
public init(links: [Links]? = nil, campaignId: String? = nil, date: Date? = nil, emailAddress: String? = nil, emailId: String? = nil, id: Int? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: [String: CodableAny]]? = nil, vip: Bool? = nil)
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
