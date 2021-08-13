**STRUCT**

# `JSONDataEncoding`

```swift
public struct JSONDataEncoding: ParameterEncoding
```

## Methods
### `encode(_:with:)`

```swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest
```

Creates a URL request by encoding parameters and applying them onto an existing request.

- parameter urlRequest: The request to have parameters applied.
- parameter parameters: The parameters to apply. This should have a single key/value
                        pair with "jsonData" as the key and a Data object as the value.

- throws: An `Error` if the encoding process encounters an error.

- returns: The encoded request.

#### Parameters

| Name | Description |
| ---- | ----------- |
| urlRequest | The request to have parameters applied. |
| parameters | The parameters to apply. This should have a single key/value pair with “jsonData” as the key and a Data object as the value. |

### `encodingParameters(jsonData:)`

```swift
public static func encodingParameters(jsonData: Data?) -> Parameters?
```
