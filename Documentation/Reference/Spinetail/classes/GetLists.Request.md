**CLASS**

# `GetLists.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(fields:excludeFields:count:offset:beforeDateCreated:sinceDateCreated:beforeCampaignLastSent:sinceCampaignLastSent:email:sortField:sortDir:hasEcommerceStore:includeTotalContacts:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, beforeDateCreated: String? = nil, sinceDateCreated: String? = nil, beforeCampaignLastSent: String? = nil, sinceCampaignLastSent: String? = nil, email: String? = nil, sortField: SortField? = nil, sortDir: SortDir? = nil, hasEcommerceStore: Bool? = nil, includeTotalContacts: Bool? = nil)
```

convenience initialiser so an Option doesn't have to be created
