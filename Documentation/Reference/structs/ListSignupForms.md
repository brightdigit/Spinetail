**STRUCT**

# `ListSignupForms`

```swift
public struct ListSignupForms: Codable
```

List Signup Forms.

## Properties
### `signupForms`

```swift
public var signupForms: [SignupForm2]?
```

List signup form.

### `listId`

```swift
public var listId: String?
```

The list id.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(signupForms:listId:totalItems:links:)`

```swift
public init(signupForms: [SignupForm2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
