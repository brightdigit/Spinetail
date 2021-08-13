**CLASS**

# `ConnectedSitesAPI`

```swift
open class ConnectedSitesAPI
```

## Methods
### `deleteConnectedSitesId(connectedSiteId:completion:)`

```swift
open class func deleteConnectedSitesId(connectedSiteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete connected site

- parameter connectedSiteId: (path) The unique identifier for the site.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |
| completion | completion handler to receive the data and the error objects |

### `deleteConnectedSitesIdWithRequestBuilder(connectedSiteId:)`

```swift
open class func deleteConnectedSitesIdWithRequestBuilder(connectedSiteId: String) -> RequestBuilder<Void>
```

Delete connected site
- DELETE /connected-sites/{connected_site_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter connectedSiteId: (path) The unique identifier for the site.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |

### `getConnectedSites(fields:excludeFields:count:offset:completion:)`

```swift
open class func getConnectedSites(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: ConnectedSites?, _ error: Error?) -> Void))
```

List connected sites

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

### `getConnectedSitesWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getConnectedSitesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<ConnectedSites>
```

     List connected sites
     - GET /connected-sites

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "_links" : [ null, null ],
  "sites" : [ {
    "foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API",
    "store_id" : "MC001",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
    "domain" : "example.myshopify.com",
    "site_script" : {
      "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
      "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
    },
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "platform" : "shopify, magento, bigcommerce, woocommerce"
  }, {
    "foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API",
    "store_id" : "MC001",
    "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
    "domain" : "example.myshopify.com",
    "site_script" : {
      "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
      "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
    },
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "platform" : "shopify, magento, bigcommerce, woocommerce"
  } ],
  "total_items" : 0
}}]
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
     - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
     - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

     - returns: RequestBuilder<ConnectedSites>

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getConnectedSitesId(connectedSiteId:fields:excludeFields:completion:)`

```swift
open class func getConnectedSitesId(connectedSiteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ConnectedSite1?, _ error: Error?) -> Void))
```

Get connected site

- parameter connectedSiteId: (path) The unique identifier for the site.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getConnectedSitesIdWithRequestBuilder(connectedSiteId:fields:excludeFields:)`

```swift
open class func getConnectedSitesIdWithRequestBuilder(connectedSiteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ConnectedSite1>
```

     Get connected site
     - GET /connected-sites/{connected_site_id}

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API",
  "store_id" : "MC001",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
  "domain" : "example.myshopify.com",
  "site_script" : {
    "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
    "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
  },
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "platform" : "shopify, magento, bigcommerce, woocommerce"
}}]
     - parameter connectedSiteId: (path) The unique identifier for the site.
     - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
     - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

     - returns: RequestBuilder<ConnectedSite1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `postConnectedSites(body:completion:)`

```swift
open class func postConnectedSites(body: ConnectedSite, completion: @escaping ((_ data: ConnectedSite1?, _ error: Error?) -> Void))
```

Add connected site

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postConnectedSitesWithRequestBuilder(body:)`

```swift
open class func postConnectedSitesWithRequestBuilder(body: ConnectedSite) -> RequestBuilder<ConnectedSite1>
```

     Add connected site
     - POST /connected-sites

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API",
  "store_id" : "MC001",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
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
  "domain" : "example.myshopify.com",
  "site_script" : {
    "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
    "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
  },
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "platform" : "shopify, magento, bigcommerce, woocommerce"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<ConnectedSite1>

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `postConnectedSitesIdActionsVerifyScriptInstallation(connectedSiteId:completion:)`

```swift
open class func postConnectedSitesIdActionsVerifyScriptInstallation(connectedSiteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Verify connected site script

- parameter connectedSiteId: (path) The unique identifier for the site.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |
| completion | completion handler to receive the data and the error objects |

### `postConnectedSitesIdActionsVerifyScriptInstallationWithRequestBuilder(connectedSiteId:)`

```swift
open class func postConnectedSitesIdActionsVerifyScriptInstallationWithRequestBuilder(connectedSiteId: String) -> RequestBuilder<Void>
```

Verify connected site script
- POST /connected-sites/{connected_site_id}/actions/verify-script-installation

- BASIC:
  - type: http
  - name: basicAuth
- parameter connectedSiteId: (path) The unique identifier for the site.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| connectedSiteId | (path) The unique identifier for the site. |