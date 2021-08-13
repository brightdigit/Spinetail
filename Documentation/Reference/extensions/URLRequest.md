**EXTENSION**

# `URLRequest`
```swift
public extension URLRequest
```

## Methods
### `addBasicAuthHeader(username:password:)`

```swift
mutating func addBasicAuthHeader(username: String, password: String?)
```

Add a basic authorization header to the request.

The username and password are combined and base 64 encoded per standards.

- Parameters:
    - username: `String` representing the username
    - password: `String?` representing the password

#### Parameters

| Name | Description |
| ---- | ----------- |
| username | `String` representing the username |
| password | `String?` representing the password |