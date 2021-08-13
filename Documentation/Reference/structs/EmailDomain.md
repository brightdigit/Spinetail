**STRUCT**

# `EmailDomain`

```swift
public struct EmailDomain: Codable
```

A single email domain&#x27;s performance

## Properties
### `domain`

```swift
public var domain: String?
```

The name of the domain (gmail.com, hotmail.com, yahoo.com).

### `emailsSent`

```swift
public var emailsSent: Int?
```

The number of emails sent to that specific domain.

### `bounces`

```swift
public var bounces: Int?
```

The number of bounces at a domain.

### `opens`

```swift
public var opens: Int?
```

The number of opens for a domain.

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks for a domain.

### `unsubs`

```swift
public var unsubs: Int?
```

The total number of unsubscribes for a domain.

### `delivered`

```swift
public var delivered: Int?
```

The number of successful deliveries for a domain.

### `emailsPct`

```swift
public var emailsPct: Decimal?
```

The percentage of total emails that went to this domain.

### `bouncesPct`

```swift
public var bouncesPct: Decimal?
```

The percentage of total bounces from this domain.

### `opensPct`

```swift
public var opensPct: Decimal?
```

The percentage of total opens from this domain.

### `clicksPct`

```swift
public var clicksPct: Decimal?
```

The percentage of total clicks from this domain.

### `unsubsPct`

```swift
public var unsubsPct: Decimal?
```

The percentage of total unsubscribes from this domain.

## Methods
### `init(domain:emailsSent:bounces:opens:clicks:unsubs:delivered:emailsPct:bouncesPct:opensPct:clicksPct:unsubsPct:)`

```swift
public init(domain: String? = nil, emailsSent: Int? = nil, bounces: Int? = nil, opens: Int? = nil, clicks: Int? = nil, unsubs: Int? = nil, delivered: Int? = nil, emailsPct: Decimal? = nil, bouncesPct: Decimal? = nil, opensPct: Decimal? = nil, clicksPct: Decimal? = nil, unsubsPct: Decimal? = nil)
```
