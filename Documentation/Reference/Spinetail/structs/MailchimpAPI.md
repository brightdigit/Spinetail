**STRUCT**

# `MailchimpAPI`

```swift
public struct MailchimpAPI: API
```

## Properties
### `apiKey`

```swift
public let apiKey: String
```

### `dc`

```swift
public let dc: String
```

### `baseURL`

```swift
public let baseURL: URL
```

### `headers`

```swift
public let headers: [String: String]
```

### `decoder`

```swift
public let decoder: ResponseDecoder = {
  let decoder = JSONDecoder()
  decoder.dateDecodingStrategy = .formatted(Self.dateEncodingFormatter)
  return decoder
}()
```

## Methods
### `init(apiKey:)`

```swift
public init?(apiKey: String)
```
