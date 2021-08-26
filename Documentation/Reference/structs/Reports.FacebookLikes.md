**STRUCT**

# `Reports.FacebookLikes`

```swift
public struct FacebookLikes: Model
```

An object describing campaign engagement on Facebook.

## Properties
### `facebookLikes`

```swift
public var facebookLikes: Int?
```

The number of Facebook likes for the campaign.

### `recipientLikes`

```swift
public var recipientLikes: Int?
```

The number of recipients who liked the campaign on Facebook.

### `uniqueLikes`

```swift
public var uniqueLikes: Int?
```

The number of unique likes.

## Methods
### `init(facebookLikes:recipientLikes:uniqueLikes:)`

```swift
public init(facebookLikes: Int? = nil, recipientLikes: Int? = nil, uniqueLikes: Int? = nil)
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
