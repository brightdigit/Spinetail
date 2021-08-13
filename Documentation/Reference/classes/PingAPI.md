**CLASS**

# `PingAPI`

```swift
open class PingAPI
```

## Methods
### `getPing(completion:)`

```swift
open class func getPing(completion: @escaping ((_ data: APIHealthStatus?, _ error: Error?) -> Void))
```

Ping

- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| completion | completion handler to receive the data and the error objects |

### `getPingWithRequestBuilder()`

```swift
open class func getPingWithRequestBuilder() -> RequestBuilder<APIHealthStatus>
```

     Ping
     - GET /ping

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "health_status" : "\"Everything's Chimpy!\""
}}]

     - returns: RequestBuilder<APIHealthStatus>
