**CLASS**

# `LandingPagesAPI`

```swift
open class LandingPagesAPI
```

## Methods
### `deleteLandingPageId(pageId:completion:)`

```swift
open class func deleteLandingPageId(pageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete landing page

- parameter pageId: (path) The unique id for the page.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| completion | completion handler to receive the data and the error objects |

### `deleteLandingPageIdWithRequestBuilder(pageId:)`

```swift
open class func deleteLandingPageIdWithRequestBuilder(pageId: String) -> RequestBuilder<Void>
```

Delete landing page
- DELETE /landing-pages/{page_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter pageId: (path) The unique id for the page.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |

### `getAllLandingPages(sortDir:sortField:fields:excludeFields:count:completion:)`

```swift
open class func getAllLandingPages(sortDir: SortDir_getAllLandingPages? = nil, sortField: SortField_getAllLandingPages? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, completion: @escaping ((_ data: InlineResponse2006?, _ error: Error?) -> Void))
```

List landing pages

- parameter sortDir: (query) Determines the order direction for sorted results. (optional)
- parameter sortField: (query) Returns files sorted by the specified field. (optional)
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| completion | completion handler to receive the data and the error objects |

### `getAllLandingPagesWithRequestBuilder(sortDir:sortField:fields:excludeFields:count:)`

```swift
open class func getAllLandingPagesWithRequestBuilder(sortDir: SortDir_getAllLandingPages? = nil, sortField: SortField_getAllLandingPages? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil) -> RequestBuilder<InlineResponse2006>
```

     List landing pages
     - GET /landing-pages

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "landing_pages" : [ {
    "store_id" : "store_id",
    "created_by_source" : "created_by_source",
    "list_id" : "fde02ad86b",
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
    "description" : "description",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "web_id" : 6,
    "title" : "title",
    "tracking" : {
      "track_with_mailchimp" : true,
      "enable_restricted_data_processing" : true
    },
    "url" : "url",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "template_id" : 0,
    "id" : "030092c2e1f0",
    "published_at" : "2000-01-23T04:56:07.000+00:00",
    "status" : "published",
    "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "store_id" : "store_id",
    "created_by_source" : "created_by_source",
    "list_id" : "fde02ad86b",
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
    "description" : "description",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "web_id" : 6,
    "title" : "title",
    "tracking" : {
      "track_with_mailchimp" : true,
      "enable_restricted_data_processing" : true
    },
    "url" : "url",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
    "name" : "name",
    "template_id" : 0,
    "id" : "030092c2e1f0",
    "published_at" : "2000-01-23T04:56:07.000+00:00",
    "status" : "published",
    "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "total_items" : 1
}}]
     - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
     - parameter sortField: (query) Returns files sorted by the specified field. (optional)
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)

     - returns: RequestBuilder<InlineResponse2006>

#### Parameters

| Name | Description |
| ---- | ----------- |
| sortDir | (query) Determines the order direction for sorted results. (optional) |
| sortField | (query) Returns files sorted by the specified field. (optional) |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |

### `getLandingPageId(pageId:fields:excludeFields:completion:)`

```swift
open class func getLandingPageId(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void))
```

Get landing page info

- parameter pageId: (path) The unique id for the page.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getLandingPageIdWithRequestBuilder(pageId:fields:excludeFields:)`

```swift
open class func getLandingPageIdWithRequestBuilder(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<LandingPage1>
```

     Get landing page info
     - GET /landing-pages/{page_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "store_id" : "store_id",
  "created_by_source" : "created_by_source",
  "list_id" : "fde02ad86b",
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
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 6,
  "title" : "title",
  "tracking" : {
    "track_with_mailchimp" : true,
    "enable_restricted_data_processing" : true
  },
  "url" : "url",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "template_id" : 0,
  "id" : "030092c2e1f0",
  "published_at" : "2000-01-23T04:56:07.000+00:00",
  "status" : "published",
  "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter pageId: (path) The unique id for the page.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<LandingPage1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getLandingPageIdContent(pageId:fields:excludeFields:completion:)`

```swift
open class func getLandingPageIdContent(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: LandingPageContent?, _ error: Error?) -> Void))
```

Get landing page content

- parameter pageId: (path) The unique id for the page.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getLandingPageIdContentWithRequestBuilder(pageId:fields:excludeFields:)`

```swift
open class func getLandingPageIdContentWithRequestBuilder(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<LandingPageContent>
```

     Get landing page content
     - GET /landing-pages/{page_id}/content

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
  "json" : "json",
  "html" : "html"
}}]
     - parameter pageId: (path) The unique id for the page.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<LandingPageContent>

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchLandingPageId(body:pageId:completion:)`

```swift
open class func patchLandingPageId(body: LandingPage2, pageId: String, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void))
```

Update landing page

- parameter body: (body)
- parameter pageId: (path) The unique id for the page.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| pageId | (path) The unique id for the page. |
| completion | completion handler to receive the data and the error objects |

### `patchLandingPageIdWithRequestBuilder(body:pageId:)`

```swift
open class func patchLandingPageIdWithRequestBuilder(body: LandingPage2, pageId: String) -> RequestBuilder<LandingPage1>
```

     Update landing page
     - PATCH /landing-pages/{page_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "store_id" : "store_id",
  "created_by_source" : "created_by_source",
  "list_id" : "fde02ad86b",
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
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 6,
  "title" : "title",
  "tracking" : {
    "track_with_mailchimp" : true,
    "enable_restricted_data_processing" : true
  },
  "url" : "url",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "template_id" : 0,
  "id" : "030092c2e1f0",
  "published_at" : "2000-01-23T04:56:07.000+00:00",
  "status" : "published",
  "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter pageId: (path) The unique id for the page.

     - returns: RequestBuilder<LandingPage1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| pageId | (path) The unique id for the page. |

### `postAllLandingPages(body:useDefaultList:completion:)`

```swift
open class func postAllLandingPages(body: LandingPage, useDefaultList: Bool? = nil, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void))
```

Add landing page

- parameter body: (body)
- parameter useDefaultList: (query) Will create the Landing Page using the account&#x27;s Default List instead of requiring a list_id. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| useDefaultList | (query) Will create the Landing Page using the account's Default List instead of requiring a list_id. (optional) |
| completion | completion handler to receive the data and the error objects |

### `postAllLandingPagesWithRequestBuilder(body:useDefaultList:)`

```swift
open class func postAllLandingPagesWithRequestBuilder(body: LandingPage, useDefaultList: Bool? = nil) -> RequestBuilder<LandingPage1>
```

     Add landing page
     - POST /landing-pages

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "store_id" : "store_id",
  "created_by_source" : "created_by_source",
  "list_id" : "fde02ad86b",
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
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 6,
  "title" : "title",
  "tracking" : {
    "track_with_mailchimp" : true,
    "enable_restricted_data_processing" : true
  },
  "url" : "url",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "template_id" : 0,
  "id" : "030092c2e1f0",
  "published_at" : "2000-01-23T04:56:07.000+00:00",
  "status" : "published",
  "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)
     - parameter useDefaultList: (query) Will create the Landing Page using the account&#x27;s Default List instead of requiring a list_id. (optional)

     - returns: RequestBuilder<LandingPage1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| useDefaultList | (query) Will create the Landing Page using the account's Default List instead of requiring a list_id. (optional) |

### `postLandingPageIdActionsPublish(pageId:completion:)`

```swift
open class func postLandingPageIdActionsPublish(pageId: String, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void))
```

Publish landing page

- parameter pageId: (path) The unique id for the page.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| completion | completion handler to receive the data and the error objects |

### `postLandingPageIdActionsPublishWithRequestBuilder(pageId:)`

```swift
open class func postLandingPageIdActionsPublishWithRequestBuilder(pageId: String) -> RequestBuilder<LandingPage1>
```

     Publish landing page
     - POST /landing-pages/{page_id}/actions/publish

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "store_id" : "store_id",
  "created_by_source" : "created_by_source",
  "list_id" : "fde02ad86b",
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
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "web_id" : 6,
  "title" : "title",
  "tracking" : {
    "track_with_mailchimp" : true,
    "enable_restricted_data_processing" : true
  },
  "url" : "url",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "name" : "name",
  "template_id" : 0,
  "id" : "030092c2e1f0",
  "published_at" : "2000-01-23T04:56:07.000+00:00",
  "status" : "published",
  "unpublished_at" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter pageId: (path) The unique id for the page.

     - returns: RequestBuilder<LandingPage1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |

### `postLandingPageIdActionsUnpublish(pageId:completion:)`

```swift
open class func postLandingPageIdActionsUnpublish(pageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Unpublish landing page

- parameter pageId: (path) The unique id for the page.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |
| completion | completion handler to receive the data and the error objects |

### `postLandingPageIdActionsUnpublishWithRequestBuilder(pageId:)`

```swift
open class func postLandingPageIdActionsUnpublishWithRequestBuilder(pageId: String) -> RequestBuilder<Void>
```

Unpublish landing page
- POST /landing-pages/{page_id}/actions/unpublish

- BASIC:
  - type: http
  - name: basicAuth
- parameter pageId: (path) The unique id for the page.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| pageId | (path) The unique id for the page. |