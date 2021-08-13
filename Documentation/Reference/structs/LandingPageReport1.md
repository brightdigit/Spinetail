**STRUCT**

# `LandingPageReport1`

```swift
public struct LandingPageReport1: Codable
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

The name of this landing page the user will see.

### `title`

```swift
public var title: String?
```

The name of the landing page the user&#x27;s customers will see.

### `url`

```swift
public var url: String?
```

The landing page url.

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

### `status`

```swift
public var status: String?
```

The status of the landing page.

### `listId`

```swift
public var listId: String?
```

The list id connected to this landing page.

### `visits`

```swift
public var visits: Int?
```

The number of visits to this landing pages.

### `uniqueVisits`

```swift
public var uniqueVisits: Int?
```

The number of unique visits to this landing pages.

### `subscribes`

```swift
public var subscribes: Int?
```

The number of subscribes to this landing pages.

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks to this landing pages.

### `conversionRate`

```swift
public var conversionRate: Decimal?
```

The percentage of people who visited your landing page and were added to your list.

### `timeseries`

```swift
public var timeseries: LandingPageReportTimeseries?
```

### `ecommerce`

```swift
public var ecommerce: LandingPageReportEcommerce?
```

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application.

### `listName`

```swift
public var listName: String?
```

List Name

### `signupTags`

```swift
public var signupTags: [Tag]?
```

A list of tags associated to the landing page.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:name:title:url:publishedAt:unpublishedAt:status:listId:visits:uniqueVisits:subscribes:clicks:conversionRate:timeseries:ecommerce:webId:listName:signupTags:links:)`

```swift
public init(_id: String? = nil, name: String? = nil, title: String? = nil, url: String? = nil, publishedAt: Date? = nil, unpublishedAt: Date? = nil, status: String? = nil, listId: String? = nil, visits: Int? = nil, uniqueVisits: Int? = nil, subscribes: Int? = nil, clicks: Int? = nil, conversionRate: Decimal? = nil, timeseries: LandingPageReportTimeseries? = nil, ecommerce: LandingPageReportEcommerce? = nil, webId: Int? = nil, listName: String? = nil, signupTags: [Tag]? = nil, links: [ResourceLink]? = nil)
```
