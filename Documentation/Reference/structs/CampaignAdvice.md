**STRUCT**

# `CampaignAdvice`

```swift
public struct CampaignAdvice: Codable
```

Campaign feedback details.

## Properties
### `type`

```swift
public var type: ModelType?
```

The sentiment type for a feedback message.

### `message`

```swift
public var message: String?
```

The advice message.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(type:message:links:)`

```swift
public init(type: ModelType? = nil, message: String? = nil, links: [ResourceLink]? = nil)
```
