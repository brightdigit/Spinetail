**STRUCT**

# `Status200.Content`

```swift
public struct Content: Model
```

Get details of a Facebook ad.

## Properties
### `attachments`

```swift
public var attachments: [Attachments]?
```

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

### `message`

```swift
public var message: String?
```

### `title`

```swift
public var title: String?
```

## Methods
### `init(attachments:callToAction:description:imageURL:linkURL:message:title:)`

```swift
public init(attachments: [Attachments]? = nil, callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, message: String? = nil, title: String? = nil)
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
