**STRUCT**

# `CampaignDefaults`

```swift
public struct CampaignDefaults: Codable
```

[Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.

## Properties
### `fromName`

```swift
public var fromName: String
```

The default from name for campaigns sent to this list.

### `fromEmail`

```swift
public var fromEmail: String
```

The default from email for campaigns sent to this list.

### `subject`

```swift
public var subject: String
```

The default subject line for campaigns sent to this list.

### `language`

```swift
public var language: String
```

The default language for this lists&#x27;s forms.

## Methods
### `init(fromName:fromEmail:subject:language:)`

```swift
public init(fromName: String, fromEmail: String, subject: String, language: String)
```
