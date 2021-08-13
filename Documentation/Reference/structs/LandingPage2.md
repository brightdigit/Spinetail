**STRUCT**

# `LandingPage2`

```swift
public struct LandingPage2: Codable
```

A summary of an individual page&#x27;s properties.

## Properties
### `name`

```swift
public var name: String?
```

The name of this landing page.

### `title`

```swift
public var title: String?
```

The title of this landing page seen in the browser&#x27;s title bar.

### `_description`

```swift
public var _description: String?
```

The description of this landing page.

### `storeId`

```swift
public var storeId: String?
```

The ID of the store associated with this landing page.

### `listId`

```swift
public var listId: String?
```

The list&#x27;s ID associated with this landing page.

### `tracking`

```swift
public var tracking: TrackingSettings?
```

## Methods
### `init(name:title:_description:storeId:listId:tracking:)`

```swift
public init(name: String? = nil, title: String? = nil, _description: String? = nil, storeId: String? = nil, listId: String? = nil, tracking: TrackingSettings? = nil)
```
