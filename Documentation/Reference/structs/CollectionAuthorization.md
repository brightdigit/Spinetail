**STRUCT**

# `CollectionAuthorization`

```swift
public struct CollectionAuthorization: Codable
```

Do particular authorization constraints around this collection limit creation of new instances?

## Properties
### `mayCreate`

```swift
public var mayCreate: Bool
```

May the user create additional instances of this resource?

### `maxInstances`

```swift
public var maxInstances: Int
```

How many total instances of this resource are allowed? This is independent of any filter conditions applied to the query. As a special case, -1 indicates unlimited.

### `currentTotalInstances`

```swift
public var currentTotalInstances: Int?
```

How many total instances of this resource are already in use? This is independent of any filter conditions applied to the query. Value may be larger than max_instances. As a special case, -1 is returned when access is unlimited.

## Methods
### `init(mayCreate:maxInstances:currentTotalInstances:)`

```swift
public init(mayCreate: Bool, maxInstances: Int, currentTotalInstances: Int? = nil)
```
