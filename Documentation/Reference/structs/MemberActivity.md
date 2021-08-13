**STRUCT**

# `MemberActivity`

```swift
public struct MemberActivity: Codable
```

A summary of the interaction with the campaign.

## Properties
### `action`

```swift
public var action: String?
```

One of the following actions: &#x27;open&#x27;, &#x27;click&#x27;, or &#x27;bounce&#x27;

### `type`

```swift
public var type: String?
```

If the action is a &#x27;bounce&#x27;, the type of bounce received: &#x27;hard&#x27;, &#x27;soft&#x27;.

### `timestamp`

```swift
public var timestamp: Date?
```

The date and time recorded for the action in ISO 8601 format.

### `url`

```swift
public var url: String?
```

If the action is a &#x27;click&#x27;, the URL on which the member clicked.

### `ip`

```swift
public var ip: String?
```

The IP address recorded for the action.

## Methods
### `init(action:type:timestamp:url:ip:)`

```swift
public init(action: String? = nil, type: String? = nil, timestamp: Date? = nil, url: String? = nil, ip: String? = nil)
```
