**STRUCT**

# `Script`

```swift
public struct Script: Codable
```

The script used to connect your site with Mailchimp.

## Properties
### `url`

```swift
public var url: String?
```

The URL used for any integrations that offer built-in support for connected sites.

### `fragment`

```swift
public var fragment: String?
```

A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp.

## Methods
### `init(url:fragment:)`

```swift
public init(url: String? = nil, fragment: String? = nil)
```
