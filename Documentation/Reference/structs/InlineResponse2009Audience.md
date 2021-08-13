**STRUCT**

# `InlineResponse2009Audience`

```swift
public struct InlineResponse2009Audience: Codable
```

Audience settings

## Properties
### `type`

```swift
public var type: ModelType?
```

Type of the audience

### `sourceType`

```swift
public var sourceType: SourceType?
```

List or Facebook based audience

### `emailSource`

```swift
public var emailSource: InlineResponse2009AudienceEmailSource?
```

### `includeSourceInTarget`

```swift
public var includeSourceInTarget: Bool?
```

To include list contacts as part of audience

### `lookalikeCountryCode`

```swift
public var lookalikeCountryCode: String?
```

To find similar audience in given country

### `targetingSpecs`

```swift
public var targetingSpecs: InlineResponse2009AudienceTargetingSpecs?
```

## Methods
### `init(type:sourceType:emailSource:includeSourceInTarget:lookalikeCountryCode:targetingSpecs:)`

```swift
public init(type: ModelType? = nil, sourceType: SourceType? = nil, emailSource: InlineResponse2009AudienceEmailSource? = nil, includeSourceInTarget: Bool? = nil, lookalikeCountryCode: String? = nil, targetingSpecs: InlineResponse2009AudienceTargetingSpecs? = nil)
```
