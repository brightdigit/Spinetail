**STRUCT**

# `BatchUpdateListMembersErrors`

```swift
public struct BatchUpdateListMembersErrors: Codable
```

## Properties
### `emailAddress`

```swift
public var emailAddress: String?
```

The email address that could not be added or updated.

### `error`

```swift
public var error: String?
```

The error message indicating why the email address could not be added or updated.

### `errorCode`

```swift
public var errorCode: ErrorCode?
```

A unique code that identifies this specifc error.

## Methods
### `init(emailAddress:error:errorCode:)`

```swift
public init(emailAddress: String? = nil, error: String? = nil, errorCode: ErrorCode? = nil)
```
