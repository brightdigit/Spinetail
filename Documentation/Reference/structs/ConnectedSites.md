**STRUCT**

# `ConnectedSites`

```swift
public struct ConnectedSites: Codable
```

A collection of connected sites in the account.

## Properties
### `sites`

```swift
public var sites: [ConnectedSite3]?
```

An array of objects, each representing a connected site.

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
### `init(sites:totalItems:links:)`

```swift
public init(sites: [ConnectedSite3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
