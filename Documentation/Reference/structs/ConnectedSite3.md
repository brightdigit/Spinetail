**STRUCT**

# `ConnectedSite3`

```swift
public struct ConnectedSite3: Codable
```

Information about a specific connected site.

## Properties
### `foreignId`

```swift
public var foreignId: String?
```

The unique identifier for the site.

### `storeId`

```swift
public var storeId: String?
```

The unique identifier for the ecommerce store that&#x27;s associated with the connected site (if any). The store_id for a specific connected site can&#x27;t change.

### `platform`

```swift
public var platform: String?
```

The platform of the connected site.

### `domain`

```swift
public var domain: String?
```

The connected site domain.

### `siteScript`

```swift
public var siteScript: Script1?
```

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the connected site was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the connected site was last updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(foreignId:storeId:platform:domain:siteScript:createdAt:updatedAt:links:)`

```swift
public init(foreignId: String? = nil, storeId: String? = nil, platform: String? = nil, domain: String? = nil, siteScript: Script1? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil)
```
