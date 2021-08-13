**STRUCT**

# `SignupForm2`

```swift
public struct SignupForm2: Codable
```

List signup form.

## Properties
### `header`

```swift
public var header: SignupFormHeaderOptions?
```

### `contents`

```swift
public var contents: [CollectionOfContentForListSignupForms]?
```

The signup form body content.

### `styles`

```swift
public var styles: [CollectionOfElementStyleForListSignupForms]?
```

An array of objects, each representing an element style for the signup form.

### `signupFormUrl`

```swift
public var signupFormUrl: String?
```

Signup form URL.

### `listId`

```swift
public var listId: String?
```

The signup form&#x27;s list id.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(header:contents:styles:signupFormUrl:listId:links:)`

```swift
public init(header: SignupFormHeaderOptions? = nil, contents: [CollectionOfContentForListSignupForms]? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil, signupFormUrl: String? = nil, listId: String? = nil, links: [ResourceLink]? = nil)
```
