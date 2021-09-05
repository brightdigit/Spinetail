**STRUCT**

# `Status200.Lists`

```swift
public struct Lists: Model
```

Information about a specific list.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `beamerAddress`

```swift
public var beamerAddress: String?
```

The list's [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address.

### `campaignDefaults`

```swift
public var campaignDefaults: CampaignDefaults?
```

[Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.

### `contact`

```swift
public var contact: Contact?
```

[Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.

### `dateCreated`

```swift
public var dateCreated: DateTime
```

The date and time that this list was created in ISO 8601 format.

### `doubleOptin`

```swift
public var doubleOptin: Bool?
```

Whether or not to require the subscriber to confirm subscription via email.

### `emailTypeOption`

```swift
public var emailTypeOption: Bool?
```

Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup.

### `hasWelcome`

```swift
public var hasWelcome: Bool?
```

Whether or not this list has a welcome automation connected. Welcome Automations: welcomeSeries, singleWelcome, emailFollowup.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this list.

### `listRating`

```swift
public var listRating: Int?
```

An auto-generated activity score for the list (0-5).

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

### `name`

```swift
public var name: String?
```

The name of the list.

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

### `permissionReminder`

```swift
public var permissionReminder: String?
```

The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.

### `stats`

```swift
public var stats: Stats?
```

Stats for the list. Many of these are cached for at least five minutes.

### `subscribeURLLong`

```swift
public var subscribeURLLong: String?
```

The full version of this list's subscribe form (host will vary).

### `subscribeURLShort`

```swift
public var subscribeURLShort: String?
```

Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list's subscribe form.

### `useArchiveBar`

```swift
public var useArchiveBar: Bool?
```

Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.

### `visibility`

```swift
public var visibility: Visibility?
```

Legacy - visibility settings are no longer used

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this list in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/?id={web_id}`.

## Methods
### `init(links:beamerAddress:campaignDefaults:contact:dateCreated:doubleOptin:emailTypeOption:hasWelcome:id:listRating:marketingPermissions:modules:name:notifyOnSubscribe:notifyOnUnsubscribe:permissionReminder:stats:subscribeURLLong:subscribeURLShort:useArchiveBar:visibility:webId:)`

```swift
public init(links: [Links]? = nil, beamerAddress: String? = nil, campaignDefaults: CampaignDefaults? = nil, contact: Contact? = nil, dateCreated: Date? = nil, doubleOptin: Bool? = nil, emailTypeOption: Bool? = nil, hasWelcome: Bool? = nil, id: String? = nil, listRating: Int? = nil, marketingPermissions: Bool? = nil, modules: [String]? = nil, name: String? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, permissionReminder: String? = nil, stats: Stats? = nil, subscribeURLLong: String? = nil, subscribeURLShort: String? = nil, useArchiveBar: Bool? = nil, visibility: Visibility? = nil, webId: Int? = nil)
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
