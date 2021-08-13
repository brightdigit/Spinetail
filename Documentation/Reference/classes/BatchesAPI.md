**CLASS**

# `BatchesAPI`

```swift
open class BatchesAPI
```

## Methods
### `deleteBatchesId(batchId:completion:)`

```swift
open class func deleteBatchesId(batchId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete batch request

- parameter batchId: (path) The unique id for the batch operation.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchId | (path) The unique id for the batch operation. |
| completion | completion handler to receive the data and the error objects |

### `deleteBatchesIdWithRequestBuilder(batchId:)`

```swift
open class func deleteBatchesIdWithRequestBuilder(batchId: String) -> RequestBuilder<Void>
```

Delete batch request
- DELETE /batches/{batch_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter batchId: (path) The unique id for the batch operation.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchId | (path) The unique id for the batch operation. |

### `getBatches(fields:excludeFields:count:offset:completion:)`

```swift
open class func getBatches(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: BatchOperations?, _ error: Error?) -> Void))
```

List batch requests

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

### `getBatchesWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getBatchesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<BatchOperations>
```

     List batch requests
     - GET /batches

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "batches" : [ {
    "finished_operations" : 6,
    "completed_at" : "2000-01-23T04:56:07.000+00:00",
    "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
    "total_operations" : 0,
    "errored_operations" : 1,
    "id" : "id",
    "response_body_url" : "response_body_url",
    "status" : "pending"
  }, {
    "finished_operations" : 6,
    "completed_at" : "2000-01-23T04:56:07.000+00:00",
    "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
    "total_operations" : 0,
    "errored_operations" : 1,
    "id" : "id",
    "response_body_url" : "response_body_url",
    "status" : "pending"
  } ],
  "_links" : [ null, null ],
  "total_items" : 5
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<BatchOperations>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getBatchesId(batchId:fields:excludeFields:completion:)`

```swift
open class func getBatchesId(batchId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: Batch?, _ error: Error?) -> Void))
```

Get batch operation status

- parameter batchId: (path) The unique id for the batch operation.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchId | (path) The unique id for the batch operation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getBatchesIdWithRequestBuilder(batchId:fields:excludeFields:)`

```swift
open class func getBatchesIdWithRequestBuilder(batchId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<Batch>
```

     Get batch operation status
     - GET /batches/{batch_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "finished_operations" : 6,
  "completed_at" : "2000-01-23T04:56:07.000+00:00",
  "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
  "total_operations" : 0,
  "errored_operations" : 1,
  "id" : "id",
  "response_body_url" : "response_body_url",
  "status" : "pending"
}}]
     - parameter batchId: (path) The unique id for the batch operation.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<Batch>

#### Parameters

| Name | Description |
| ---- | ----------- |
| batchId | (path) The unique id for the batch operation. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `postBatches(body:completion:)`

```swift
open class func postBatches(body: BatchesBody, completion: @escaping ((_ data: Batch?, _ error: Error?) -> Void))
```

Start batch operation

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postBatchesWithRequestBuilder(body:)`

```swift
open class func postBatchesWithRequestBuilder(body: BatchesBody) -> RequestBuilder<Batch>
```

     Start batch operation
     - POST /batches

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "finished_operations" : 6,
  "completed_at" : "2000-01-23T04:56:07.000+00:00",
  "submitted_at" : "2000-01-23T04:56:07.000+00:00",
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
  "total_operations" : 0,
  "errored_operations" : 1,
  "id" : "id",
  "response_body_url" : "response_body_url",
  "status" : "pending"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<Batch>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |