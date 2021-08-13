**CLASS**

# `BatchWebhooksAPI`

```swift
open class BatchWebhooksAPI
```

## Methods
### `deleteBatchWebhookId(batchWebhookId:completion:)`

```swift
open class func deleteBatchWebhookId(batchWebhookId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete batch webhook

- parameter batchWebhookId: (path) The unique id for the batch webhook.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchWebhookId | (path) The unique id for the batch webhook. |
| completion | completion handler to receive the data and the error objects |

### `deleteBatchWebhookIdWithRequestBuilder(batchWebhookId:)`

```swift
open class func deleteBatchWebhookIdWithRequestBuilder(batchWebhookId: String) -> RequestBuilder<Void>
```

Delete batch webhook
- DELETE /batch-webhooks/{batch_webhook_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter batchWebhookId: (path) The unique id for the batch webhook.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchWebhookId | (path) The unique id for the batch webhook. |

### `getBatchWebhook(batchWebhookId:fields:excludeFields:completion:)`

```swift
open class func getBatchWebhook(batchWebhookId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void))
```

Get batch webhook info

- parameter batchWebhookId: (path) The unique id for the batch webhook.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchWebhookId | (path) The unique id for the batch webhook. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getBatchWebhookWithRequestBuilder(batchWebhookId:fields:excludeFields:)`

```swift
open class func getBatchWebhookWithRequestBuilder(batchWebhookId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<BatchWebhook1>
```

     Get batch webhook info
     - GET /batch-webhooks/{batch_webhook_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "id",
  "url" : "http://yourdomain.com/webhook"
}}]
     - parameter batchWebhookId: (path) The unique id for the batch webhook.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<BatchWebhook1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchWebhookId | (path) The unique id for the batch webhook. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getBatchWebhooks(fields:excludeFields:count:offset:completion:)`

```swift
open class func getBatchWebhooks(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: BatchWebhooks?, _ error: Error?) -> Void))
```

List batch webhooks

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getBatchWebhooksWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getBatchWebhooksWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<BatchWebhooks>
```

     List batch webhooks
     - GET /batch-webhooks

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "webhooks" : [ {
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "id" : "id",
    "url" : "http://yourdomain.com/webhook"
  }, {
    "_links" : [ {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    }, {
      "schema" : "schema",
      "targetSchema" : "targetSchema",
      "method" : "GET",
      "rel" : "rel",
      "href" : "href"
    } ],
    "id" : "id",
    "url" : "http://yourdomain.com/webhook"
  } ],
  "_links" : [ null, null ],
  "total_items" : 0
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<BatchWebhooks>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `patchBatchWebhooks(body:batchWebhookId:completion:)`

```swift
open class func patchBatchWebhooks(body: BatchWebhook2, batchWebhookId: String, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void))
```

Update batch webhook

- parameter body: (body)
- parameter batchWebhookId: (path) The unique id for the batch webhook.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| batchWebhookId | (path) The unique id for the batch webhook. |
| completion | completion handler to receive the data and the error objects |

### `patchBatchWebhooksWithRequestBuilder(body:batchWebhookId:)`

```swift
open class func patchBatchWebhooksWithRequestBuilder(body: BatchWebhook2, batchWebhookId: String) -> RequestBuilder<BatchWebhook1>
```

     Update batch webhook
     - PATCH /batch-webhooks/{batch_webhook_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "id",
  "url" : "http://yourdomain.com/webhook"
}}]
     - parameter body: (body)
     - parameter batchWebhookId: (path) The unique id for the batch webhook.

     - returns: RequestBuilder<BatchWebhook1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| batchWebhookId | (path) The unique id for the batch webhook. |

### `postBatchWebhooks(body:completion:)`

```swift
open class func postBatchWebhooks(body: BatchWebhook, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void))
```

Add batch webhook

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postBatchWebhooksWithRequestBuilder(body:)`

```swift
open class func postBatchWebhooksWithRequestBuilder(body: BatchWebhook) -> RequestBuilder<BatchWebhook1>
```

     Add batch webhook
     - POST /batch-webhooks

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  }, {
    "schema" : "schema",
    "targetSchema" : "targetSchema",
    "method" : "GET",
    "rel" : "rel",
    "href" : "href"
  } ],
  "id" : "id",
  "url" : "http://yourdomain.com/webhook"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<BatchWebhook1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |