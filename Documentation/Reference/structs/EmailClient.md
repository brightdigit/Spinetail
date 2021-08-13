**STRUCT**

# `EmailClient`

```swift
public struct EmailClient: Codable
```

The email client.

## Properties
### `client`

```swift
public var client: String?
```

The name of the email client.

### `members`

```swift
public var members: Int?
```

The number of subscribed members who used this email client.

## Methods
### `init(client:members:)`

```swift
public init(client: String? = nil, members: Int? = nil)
```
