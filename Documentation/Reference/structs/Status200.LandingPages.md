**STRUCT**

# `Status200.LandingPages`

```swift
public struct LandingPages: Model
```

A summary of an individual landing page's settings and content.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks to this landing pages.

### `conversionRate`

```swift
public var conversionRate: Double?
```

The percentage of people who visited your landing page and were added to your list.

### `ecommerce`

```swift
public var ecommerce: Ecommerce?
```

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this landing page.

### `listId`

```swift
public var listId: String?
```

The list id connected to this landing page.

### `listName`

```swift
public var listName: String?
```

List Name

### `name`

```swift
public var name: String?
```

The name of this landing page the user will see.

### `publishedAt`

```swift
public var publishedAt: DateTime
```

The time this landing page was published.

### `signupTags`

```swift
public var signupTags: [SignupTags]?
```

A list of tags associated to the landing page.

### `status`

```swift
public var status: String?
```

The status of the landing page.

### `subscribes`

```swift
public var subscribes: Int?
```

The number of subscribes to this landing pages.

### `timeseries`

```swift
public var timeseries: Timeseries?
```

### `title`

```swift
public var title: String?
```

The name of the landing page the user's customers will see.

### `uniqueVisits`

```swift
public var uniqueVisits: Int?
```

The number of unique visits to this landing pages.

### `unpublishedAt`

```swift
public var unpublishedAt: DateTime
```

The time this landing page was unpublished.

### `url`

```swift
public var url: String?
```

The landing page url.

### `visits`

```swift
public var visits: Int?
```

The number of visits to this landing pages.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application.

## Methods
### `init(links:clicks:conversionRate:ecommerce:id:listId:listName:name:publishedAt:signupTags:status:subscribes:timeseries:title:uniqueVisits:unpublishedAt:url:visits:webId:)`

```swift
public init(links: [Links]? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: Ecommerce? = nil, id: String? = nil, listId: String? = nil, listName: String? = nil, name: String? = nil, publishedAt: Date? = nil, signupTags: [SignupTags]? = nil, status: String? = nil, subscribes: Int? = nil, timeseries: Timeseries? = nil, title: String? = nil, uniqueVisits: Int? = nil, unpublishedAt: Date? = nil, url: String? = nil, visits: Int? = nil, webId: Int? = nil)
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
