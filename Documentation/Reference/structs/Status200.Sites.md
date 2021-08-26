**STRUCT**

# `Status200.Sites`

```swift
public struct Sites: Model
```

Information about a specific connected site.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the connected site was created in ISO 8601 format.

### `domain`

```swift
public var domain: String?
```

The connected site domain.

### `foreignId`

```swift
public var foreignId: String?
```

The unique identifier for the site.

### `platform`

```swift
public var platform: String?
```

The platform of the connected site.

### `siteScript`

```swift
public var siteScript: SiteScript?
```

The script used to connect your site with Mailchimp.

### `storeId`

```swift
public var storeId: String?
```

The unique identifier for the ecommerce store that's associated with the connected site (if any). The store_id for a specific connected site can't change.

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the connected site was last updated in ISO 8601 format.

## Methods
### `init(links:createdAt:domain:foreignId:platform:siteScript:storeId:updatedAt:)`

```swift
public init(links: [Links]? = nil, createdAt: Date? = nil, domain: String? = nil, foreignId: String? = nil, platform: String? = nil, siteScript: SiteScript? = nil, storeId: String? = nil, updatedAt: Date? = nil)
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
