**CLASS**

# `PatchListsIdMembersId.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `body`

```swift
public var body: Body
```

### `path`

```swift
override public var path: String
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(body:options:encoder:)`

```swift
public init(body: Body, options: Options, encoder: RequestEncoder? = nil)
```

### `init(listId:subscriberHash:skipMergeValidation:body:)`

```swift
public convenience init(listId: String, subscriberHash: String, skipMergeValidation: Bool? = nil, body: Body)
```

convenience initialiser so an Option doesn't have to be created
