**STRUCT**

# `Emails.SocialCard`

```swift
public struct SocialCard: Model
```

The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).

## Properties
### `description`

```swift
public var description: String?
```

A short summary of the campaign to display.

### `imageURL`

```swift
public var imageURL: String?
```

The url for the header image for the card.

### `title`

```swift
public var title: String?
```

The title for the card. Typically the subject line of the campaign.

## Methods
### `init(description:imageURL:title:)`

```swift
public init(description: String? = nil, imageURL: String? = nil, title: String? = nil)
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
