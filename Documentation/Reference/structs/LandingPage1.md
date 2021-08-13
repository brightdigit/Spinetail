**STRUCT**

# `LandingPage1`

```swift
public struct LandingPage1: Codable
```

A summary of an individual landing page&#x27;s settings and content.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this landing page.

### `name`

```swift
public var name: String?
```

The name of this landing page.

### `title`

```swift
public var title: String?
```

The title of this landing page seen in the browser&#x27;s title bar.

### `_description`

```swift
public var _description: String?
```

The description of this landing page.

### `templateId`

```swift
public var templateId: Int?
```

The template_id of this landing page.

### `status`

```swift
public var status: Status?
```

The status of this landing page.

### `listId`

```swift
public var listId: String?
```

The list&#x27;s ID associated with this landing page.

### `storeId`

```swift
public var storeId: String?
```

The ID of the store associated with this landing page.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application.

### `createdBySource`

```swift
public var createdBySource: String?
```

Created by mobile or web

### `url`

```swift
public var url: String?
```

The url of the published landing page.

### `createdAt`

```swift
public var createdAt: Date?
```

The time this landing page was created.

### `publishedAt`

```swift
public var publishedAt: Date?
```

The time this landing page was published.

### `unpublishedAt`

```swift
public var unpublishedAt: Date?
```

The time this landing page was unpublished.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The time this landing page was updated at.

### `tracking`

```swift
public var tracking: TrackingSettings?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:name:title:_description:templateId:status:listId:storeId:webId:createdBySource:url:createdAt:publishedAt:unpublishedAt:updatedAt:tracking:links:)`

```swift
public init(_id: String? = nil, name: String? = nil, title: String? = nil, _description: String? = nil, templateId: Int? = nil, status: Status? = nil, listId: String? = nil, storeId: String? = nil, webId: Int? = nil, createdBySource: String? = nil, url: String? = nil, createdAt: Date? = nil, publishedAt: Date? = nil, unpublishedAt: Date? = nil, updatedAt: Date? = nil, tracking: TrackingSettings? = nil, links: [ResourceLink]? = nil)
```
