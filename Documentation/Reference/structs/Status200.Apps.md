**STRUCT**

# `Status200.Apps`

```swift
public struct Apps: Model
```

An authorized app.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `description`

```swift
public var description: String?
```

A short description of the application.

### `id`

```swift
public var id: Int?
```

The ID for the application.

### `name`

```swift
public var name: String?
```

The name of the application.

### `users`

```swift
public var users: [String]?
```

An array of usernames for users who have linked the app.

## Methods
### `init(links:description:id:name:users:)`

```swift
public init(links: [Links]? = nil, description: String? = nil, id: Int? = nil, name: String? = nil, users: [String]? = nil)
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
