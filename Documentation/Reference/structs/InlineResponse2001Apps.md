**STRUCT**

# `InlineResponse2001Apps`

```swift
public struct InlineResponse2001Apps: Codable
```

An authorized app.

## Properties
### `_id`

```swift
public var _id: Int?
```

The ID for the application.

### `name`

```swift
public var name: String?
```

The name of the application.

### `_description`

```swift
public var _description: String?
```

A short description of the application.

### `users`

```swift
public var users: [String]?
```

An array of usernames for users who have linked the app.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:name:_description:users:links:)`

```swift
public init(_id: Int? = nil, name: String? = nil, _description: String? = nil, users: [String]? = nil, links: [ResourceLink]? = nil)
```
