**STRUCT**

# `AbandonedBrowseAutomation`

```swift
public struct AbandonedBrowseAutomation: Codable
```

abandonedBrowse automation details. abandonedBrowse is also known as Product Retargeting Email or Retarget Site Visitors on the web.

## Properties
### `isSupported`

```swift
public var isSupported: Bool?
```

Whether this store supports the abandonedBrowse automation.

### `_id`

```swift
public var _id: String?
```

Unique ID of automation parent campaign.

### `status`

```swift
public var status: Status?
```

Status of the abandonedBrowse automation.

## Methods
### `init(isSupported:_id:status:)`

```swift
public init(isSupported: Bool? = nil, _id: String? = nil, status: Status? = nil)
```
