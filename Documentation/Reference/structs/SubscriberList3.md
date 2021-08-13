**STRUCT**

# `SubscriberList3`

```swift
public struct SubscriberList3: Codable
```

Information about a specific list.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this list.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this list in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/lists/members/?id&#x3D;{web_id}&#x60;.

### `name`

```swift
public var name: String?
```

The name of the list.

### `contact`

```swift
public var contact: ListContact2?
```

### `permissionReminder`

```swift
public var permissionReminder: String?
```

The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.

### `useArchiveBar`

```swift
public var useArchiveBar: Bool?
```

Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.

### `campaignDefaults`

```swift
public var campaignDefaults: CampaignDefaults1?
```

### `notifyOnSubscribe`

```swift
public var notifyOnSubscribe: String?
```

The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.

### `notifyOnUnsubscribe`

```swift
public var notifyOnUnsubscribe: String?
```

The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.

### `dateCreated`

```swift
public var dateCreated: Date?
```

The date and time that this list was created in ISO 8601 format.

### `listRating`

```swift
public var listRating: Int?
```

An auto-generated activity score for the list (0-5).

### `emailTypeOption`

```swift
public var emailTypeOption: Bool?
```

Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to &#x60;true&#x60;, subscribers can choose whether they want to receive HTML or plain-text emails. When set to &#x60;false&#x60;, subscribers will receive HTML emails, with a plain-text alternative backup.

### `subscribeUrlShort`

```swift
public var subscribeUrlShort: String?
```

Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list&#x27;s subscribe form.

### `subscribeUrlLong`

```swift
public var subscribeUrlLong: String?
```

The full version of this list&#x27;s subscribe form (host will vary).

### `beamerAddress`

```swift
public var beamerAddress: String?
```

The list&#x27;s [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address.

### `visibility`

```swift
public var visibility: Visibility?
```

Legacy - visibility settings are no longer used

### `doubleOptin`

```swift
public var doubleOptin: Bool?
```

Whether or not to require the subscriber to confirm subscription via email.

### `hasWelcome`

```swift
public var hasWelcome: Bool?
```

Whether or not this list has a welcome automation connected. Welcome Automations: welcomeSeries, singleWelcome, emailFollowup.

### `marketingPermissions`

```swift
public var marketingPermissions: Bool?
```

Whether or not the list has marketing permissions (eg. GDPR) enabled.

### `modules`

```swift
public var modules: [String]?
```

Any list-specific modules installed for this list.

### `stats`

```swift
public var stats: Statistics?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:webId:name:contact:permissionReminder:useArchiveBar:campaignDefaults:notifyOnSubscribe:notifyOnUnsubscribe:dateCreated:listRating:emailTypeOption:subscribeUrlShort:subscribeUrlLong:beamerAddress:visibility:doubleOptin:hasWelcome:marketingPermissions:modules:stats:links:)`

```swift
public init(_id: String? = nil, webId: Int? = nil, name: String? = nil, contact: ListContact2? = nil, permissionReminder: String? = nil, useArchiveBar: Bool? = nil, campaignDefaults: CampaignDefaults1? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, dateCreated: Date? = nil, listRating: Int? = nil, emailTypeOption: Bool? = nil, subscribeUrlShort: String? = nil, subscribeUrlLong: String? = nil, beamerAddress: String? = nil, visibility: Visibility? = nil, doubleOptin: Bool? = nil, hasWelcome: Bool? = nil, marketingPermissions: Bool? = nil, modules: [String]? = nil, stats: Statistics? = nil, links: [ResourceLink]? = nil)
```
