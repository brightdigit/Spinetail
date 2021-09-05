**STRUCT**

# `ConnectedSite.SiteScript`

```swift
public struct SiteScript: Model
```

The script used to connect your site with Mailchimp.

## Properties
### `fragment`

```swift
public var fragment: String?
```

A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp.

### `url`

```swift
public var url: String?
```

The URL used for any integrations that offer built-in support for connected sites.

## Methods
### `init(fragment:url:)`

```swift
public init(fragment: String? = nil, url: String? = nil)
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
