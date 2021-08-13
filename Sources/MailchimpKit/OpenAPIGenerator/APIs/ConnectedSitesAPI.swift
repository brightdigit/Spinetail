import Alamofire
import Foundation

open class ConnectedSitesAPI {
  /**
   Delete connected site

   - parameter connectedSiteId: (path) The unique identifier for the site.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteConnectedSitesId(connectedSiteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteConnectedSitesIdWithRequestBuilder(connectedSiteId: connectedSiteId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete connected site
   - DELETE /connected-sites/{connected_site_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter connectedSiteId: (path) The unique identifier for the site.

   - returns: RequestBuilder<Void>
   */
  open class func deleteConnectedSitesIdWithRequestBuilder(connectedSiteId: String) -> RequestBuilder<Void> {
    var path = "/connected-sites/{connected_site_id}"
    let connectedSiteIdPreEscape = "\(connectedSiteId)"
    let connectedSiteIdPostEscape = connectedSiteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{connected_site_id}", with: connectedSiteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List connected sites

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getConnectedSites(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: ConnectedSites?, _ error: Error?) -> Void)) {
    getConnectedSitesWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getConnectedSitesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<ConnectedSites> {
    let path = "/connected-sites"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<ConnectedSites>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get connected site

   - parameter connectedSiteId: (path) The unique identifier for the site.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getConnectedSitesId(connectedSiteId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: ConnectedSite1?, _ error: Error?) -> Void)) {
    getConnectedSitesIdWithRequestBuilder(connectedSiteId: connectedSiteId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getConnectedSitesIdWithRequestBuilder(connectedSiteId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<ConnectedSite1> {
    var path = "/connected-sites/{connected_site_id}"
    let connectedSiteIdPreEscape = "\(connectedSiteId)"
    let connectedSiteIdPostEscape = connectedSiteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{connected_site_id}", with: connectedSiteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<ConnectedSite1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Add connected site

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postConnectedSites(body: ConnectedSite, completion: @escaping ((_ data: ConnectedSite1?, _ error: Error?) -> Void)) {
    postConnectedSitesWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postConnectedSitesWithRequestBuilder(body: ConnectedSite) -> RequestBuilder<ConnectedSite1> {
    let path = "/connected-sites"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<ConnectedSite1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Verify connected site script

   - parameter connectedSiteId: (path) The unique identifier for the site.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postConnectedSitesIdActionsVerifyScriptInstallation(connectedSiteId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postConnectedSitesIdActionsVerifyScriptInstallationWithRequestBuilder(connectedSiteId: connectedSiteId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Verify connected site script
   - POST /connected-sites/{connected_site_id}/actions/verify-script-installation

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter connectedSiteId: (path) The unique identifier for the site.

   - returns: RequestBuilder<Void>
   */
  open class func postConnectedSitesIdActionsVerifyScriptInstallationWithRequestBuilder(connectedSiteId: String) -> RequestBuilder<Void> {
    var path = "/connected-sites/{connected_site_id}/actions/verify-script-installation"
    let connectedSiteIdPreEscape = "\(connectedSiteId)"
    let connectedSiteIdPostEscape = connectedSiteIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{connected_site_id}", with: connectedSiteIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
