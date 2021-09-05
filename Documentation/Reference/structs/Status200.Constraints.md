**STRUCT**

# `Status200.Constraints`

```swift
public struct Constraints: Model
```

Do particular authorization constraints around this collection limit creation of new instances?

## Properties
### `maxInstances`

```swift
public var maxInstances: Int
```

How many total instances of this resource are allowed? This is independent of any filter conditions applied to the query. As a special case, -1 indicates unlimited.

### `mayCreate`

```swift
public var mayCreate: Bool
```

May the user create additional instances of this resource?

### `currentTotalInstances`

```swift
public var currentTotalInstances: Int?
```

How many total instances of this resource are already in use? This is independent of any filter conditions applied to the query. Value may be larger than max_instances. As a special case, -1 is returned when access is unlimited.

## Methods
### `init(maxInstances:mayCreate:currentTotalInstances:)`

```swift
public init(maxInstances: Int, mayCreate: Bool, currentTotalInstances: Int? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
