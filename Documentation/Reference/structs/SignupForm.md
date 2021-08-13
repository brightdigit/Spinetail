**STRUCT**

# `SignupForm`

```swift
public struct SignupForm: Codable
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

## Methods
### `init(header:contents:styles:)`

```swift
public init(header: SignupFormHeaderOptions? = nil, contents: [CollectionOfContentForListSignupForms]? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil)
```
