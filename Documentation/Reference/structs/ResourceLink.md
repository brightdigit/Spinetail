**STRUCT**

# `ResourceLink`

```swift
public struct ResourceLink: Codable
```

This object represents a link from the resource where it is found to another resource or action that may be performed.

## Properties
### `rel`

```swift
public var rel: String?
```

As with an HTML &#x27;rel&#x27; attribute, this describes the type of link.

### `href`

```swift
public var href: String?
```

This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action.

### `method`

```swift
public var method: Method?
```

The HTTP method that should be used when accessing the URL defined in &#x27;href&#x27;.

### `targetSchema`

```swift
public var targetSchema: String?
```

For GETs, this is a URL representing the schema that the response should conform to.

### `schema`

```swift
public var schema: String?
```

For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to.

## Methods
### `init(rel:href:method:targetSchema:schema:)`

```swift
public init(rel: String? = nil, href: String? = nil, method: Method? = nil, targetSchema: String? = nil, schema: String? = nil)
```
