**STRUCT**

# `Content.Attachments`

```swift
public struct Attachments: Model
```

Get details of a Facebook ad.

## Properties
### `callToAction`

```swift
public var callToAction: String?
```

### `description`

```swift
public var description: String?
```

### `imageURL`

```swift
public var imageURL: String?
```

### `linkURL`

```swift
public var linkURL: String?
```

### `name`

```swift
public var name: String?
```

## Methods
### `init(callToAction:description:imageURL:linkURL:name:)`

```swift
public init(callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, name: String? = nil)
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
