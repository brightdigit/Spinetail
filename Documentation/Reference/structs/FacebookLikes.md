**STRUCT**

# `FacebookLikes`

```swift
public struct FacebookLikes: Codable
```

An object describing campaign engagement on Facebook.

## Properties
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

### `facebookLikes`

```swift
public var facebookLikes: Int?
```

The number of Facebook likes for the campaign.

## Methods
### `init(recipientLikes:uniqueLikes:facebookLikes:)`

```swift
public init(recipientLikes: Int? = nil, uniqueLikes: Int? = nil, facebookLikes: Int? = nil)
```
