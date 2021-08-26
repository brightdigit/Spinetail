**STRUCT**

# `Status200.SignupForms`

```swift
public struct SignupForms: Model
```

List signup form.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `contents`

```swift
public var contents: [Contents]?
```

The signup form body content.

### `header`

```swift
public var header: Header?
```

Options for customizing your signup form header.

### `listId`

```swift
public var listId: String?
```

The signup form's list id.

### `signupFormURL`

```swift
public var signupFormURL: String?
```

Signup form URL.

### `styles`

```swift
public var styles: [Styles]?
```

An array of objects, each representing an element style for the signup form.

## Methods
### `init(links:contents:header:listId:signupFormURL:styles:)`

```swift
public init(links: [Links]? = nil, contents: [Contents]? = nil, header: Header? = nil, listId: String? = nil, signupFormURL: String? = nil, styles: [Styles]? = nil)
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
