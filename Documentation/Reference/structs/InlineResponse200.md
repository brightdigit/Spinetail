**STRUCT**

# `InlineResponse200`

```swift
public struct InlineResponse200: Codable
```

An array of Chimp Chatter messages. There&#x27;s a maximum of 200 messages present for an account.

## Properties
### `chimpChatter`

```swift
public var chimpChatter: [ChimpChatter]?
```

An array of Chimp Chatter messages. There&#x27;s a maximum of 200 messages present for an account.

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
### `init(chimpChatter:totalItems:links:)`

```swift
public init(chimpChatter: [ChimpChatter]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
