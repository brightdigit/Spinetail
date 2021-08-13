**STRUCT**

# `VerifiedDomains1`

```swift
public struct VerifiedDomains1: Codable
```

The verified domains currently on the account.

## Properties
### `domains`

```swift
public var domains: [VerifiedDomains]?
```

The domains on the account

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

## Methods
### `init(domains:totalItems:)`

```swift
public init(domains: [VerifiedDomains]? = nil, totalItems: Int? = nil)
```
