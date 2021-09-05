**STRUCT**

# `Stores.ConnectedSite`

```swift
public struct ConnectedSite: Model
```

The Connected Site associated with the store.

## Properties
### `siteForeignId`

```swift
public var siteForeignId: String?
```

The unique identifier for the connected site.

### `siteScript`

```swift
public var siteScript: SiteScript?
```

The script used to connect your site with Mailchimp.

## Methods
### `init(siteForeignId:siteScript:)`

```swift
public init(siteForeignId: String? = nil, siteScript: SiteScript? = nil)
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
