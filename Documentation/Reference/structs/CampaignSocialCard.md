**STRUCT**

# `CampaignSocialCard`

```swift
public struct CampaignSocialCard: Codable
```

The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).

## Properties
### `imageUrl`

```swift
public var imageUrl: String?
```

The url for the header image for the card.

### `_description`

```swift
public var _description: String?
```

A short summary of the campaign to display.

### `title`

```swift
public var title: String?
```

The title for the card. Typically the subject line of the campaign.

## Methods
### `init(imageUrl:_description:title:)`

```swift
public init(imageUrl: String? = nil, _description: String? = nil, title: String? = nil)
```
