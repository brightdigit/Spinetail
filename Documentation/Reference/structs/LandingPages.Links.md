**STRUCT**

# `LandingPages.Links`

```swift
public struct Links: Model
```

This object represents a link from the resource where it is found to another resource or action that may be performed.

## Properties
### `href`

```swift
public var href: String?
```

This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action.

### `method`

```swift
public var method: Method?
```

The HTTP method that should be used when accessing the URL defined in 'href'.

### `rel`

```swift
public var rel: String?
```

As with an HTML 'rel' attribute, this describes the type of link.

### `schema`

```swift
public var schema: String?
```

For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to.

### `targetSchema`

```swift
public var targetSchema: String?
```

For GETs, this is a URL representing the schema that the response should conform to.

## Methods
### `init(href:method:rel:schema:targetSchema:)`

```swift
public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil)
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
