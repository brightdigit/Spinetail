**STRUCT**

# `Body.CampaignDefaults`

```swift
public struct CampaignDefaults: Model
```

[Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.

## Properties
### `fromEmail`

```swift
public var fromEmail: String
```

The default from email for campaigns sent to this list.

### `fromName`

```swift
public var fromName: String
```

The default from name for campaigns sent to this list.

### `language`

```swift
public var language: String
```

The default language for this lists's forms.

### `subject`

```swift
public var subject: String
```

The default subject line for campaigns sent to this list.

## Methods
### `init(fromEmail:fromName:language:subject:)`

```swift
public init(fromEmail: String, fromName: String, language: String, subject: String)
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
