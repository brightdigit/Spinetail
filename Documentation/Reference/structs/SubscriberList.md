**STRUCT**

# `SubscriberList`

```swift
public struct SubscriberList: Codable
```

Information about a specific list.

## Properties
### `name`

```swift
public var name: String
```

The name of the list.

### `contact`

```swift
public var contact: ListContact
```

### `permissionReminder`

```swift
public var permissionReminder: String
```

The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.

### `useArchiveBar`

```swift
public var useArchiveBar: Bool?
```

Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.

### `campaignDefaults`

```swift
public var campaignDefaults: CampaignDefaults
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

### `emailTypeOption`

```swift
public var emailTypeOption: Bool
```

Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to &#x60;true&#x60;, subscribers can choose whether they want to receive HTML or plain-text emails. When set to &#x60;false&#x60;, subscribers will receive HTML emails, with a plain-text alternative backup.

### `doubleOptin`

```swift
public var doubleOptin: Bool?
```

Whether or not to require the subscriber to confirm subscription via email.

### `marketingPermissions`

```swift
public var marketingPermissions: Bool?
```

Whether or not the list has marketing permissions (eg. GDPR) enabled.

## Methods
### `init(name:contact:permissionReminder:useArchiveBar:campaignDefaults:notifyOnSubscribe:notifyOnUnsubscribe:emailTypeOption:doubleOptin:marketingPermissions:)`

```swift
public init(name: String, contact: ListContact, permissionReminder: String, useArchiveBar: Bool? = nil, campaignDefaults: CampaignDefaults, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, emailTypeOption: Bool, doubleOptin: Bool? = nil, marketingPermissions: Bool? = nil)
```
