**STRUCT**

# `Location2`

```swift
public struct Location2: Codable
```

An individual click location.

## Properties
### `country`

```swift
public var country: String?
```

The two-digit country code for a recorded click.

### `region`

```swift
public var region: String?
```

If available, a specific region where the click was recorded.

## Methods
### `init(country:region:)`

```swift
public init(country: String? = nil, region: String? = nil)
```
