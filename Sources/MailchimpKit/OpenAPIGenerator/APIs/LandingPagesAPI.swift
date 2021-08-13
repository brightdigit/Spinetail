import Alamofire
import Foundation

open class LandingPagesAPI {
  /**
   Delete landing page

   - parameter pageId: (path) The unique id for the page.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteLandingPageId(pageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteLandingPageIdWithRequestBuilder(pageId: pageId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete landing page
   - DELETE /landing-pages/{page_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter pageId: (path) The unique id for the page.

   - returns: RequestBuilder<Void>
   */
  open class func deleteLandingPageIdWithRequestBuilder(pageId: String) -> RequestBuilder<Void> {
    var path = "/landing-pages/{page_id}"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getAllLandingPages: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getAllLandingPages: String {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
  }

  /**
   List landing pages

   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter sortField: (query) Returns files sorted by the specified field. (optional)
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getAllLandingPages(sortDir: SortDir_getAllLandingPages? = nil, sortField: SortField_getAllLandingPages? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, completion: @escaping ((_ data: InlineResponse2006?, _ error: Error?) -> Void)) {
    getAllLandingPagesWithRequestBuilder(sortDir: sortDir, sortField: sortField, fields: fields, excludeFields: excludeFields, count: count).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getAllLandingPagesWithRequestBuilder(sortDir: SortDir_getAllLandingPages? = nil, sortField: SortField_getAllLandingPages? = nil, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil) -> RequestBuilder<InlineResponse2006> {
    let path = "/landing-pages"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "sort_dir": sortDir?.rawValue,
      "sort_field": sortField?.rawValue,
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<InlineResponse2006>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get landing page info

   - parameter pageId: (path) The unique id for the page.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getLandingPageId(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void)) {
    getLandingPageIdWithRequestBuilder(pageId: pageId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getLandingPageIdWithRequestBuilder(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<LandingPage1> {
    var path = "/landing-pages/{page_id}"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<LandingPage1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get landing page content

   - parameter pageId: (path) The unique id for the page.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getLandingPageIdContent(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: LandingPageContent?, _ error: Error?) -> Void)) {
    getLandingPageIdContentWithRequestBuilder(pageId: pageId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getLandingPageIdContentWithRequestBuilder(pageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<LandingPageContent> {
    var path = "/landing-pages/{page_id}/content"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<LandingPageContent>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update landing page

   - parameter body: (body)
   - parameter pageId: (path) The unique id for the page.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchLandingPageId(body: LandingPage2, pageId: String, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void)) {
    patchLandingPageIdWithRequestBuilder(body: body, pageId: pageId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchLandingPageIdWithRequestBuilder(body: LandingPage2, pageId: String) -> RequestBuilder<LandingPage1> {
    var path = "/landing-pages/{page_id}"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<LandingPage1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add landing page

   - parameter body: (body)
   - parameter useDefaultList: (query) Will create the Landing Page using the account&#x27;s Default List instead of requiring a list_id. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postAllLandingPages(body: LandingPage, useDefaultList: Bool? = nil, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void)) {
    postAllLandingPagesWithRequestBuilder(body: body, useDefaultList: useDefaultList).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postAllLandingPagesWithRequestBuilder(body: LandingPage, useDefaultList: Bool? = nil) -> RequestBuilder<LandingPage1> {
    let path = "/landing-pages"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "use_default_list": useDefaultList
    ])

    let requestBuilder: RequestBuilder<LandingPage1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Publish landing page

   - parameter pageId: (path) The unique id for the page.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postLandingPageIdActionsPublish(pageId: String, completion: @escaping ((_ data: LandingPage1?, _ error: Error?) -> Void)) {
    postLandingPageIdActionsPublishWithRequestBuilder(pageId: pageId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postLandingPageIdActionsPublishWithRequestBuilder(pageId: String) -> RequestBuilder<LandingPage1> {
    var path = "/landing-pages/{page_id}/actions/publish"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<LandingPage1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Unpublish landing page

   - parameter pageId: (path) The unique id for the page.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postLandingPageIdActionsUnpublish(pageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    postLandingPageIdActionsUnpublishWithRequestBuilder(pageId: pageId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Unpublish landing page
   - POST /landing-pages/{page_id}/actions/unpublish

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter pageId: (path) The unique id for the page.

   - returns: RequestBuilder<Void>
   */
  open class func postLandingPageIdActionsUnpublishWithRequestBuilder(pageId: String) -> RequestBuilder<Void> {
    var path = "/landing-pages/{page_id}/actions/unpublish"
    let pageIdPreEscape = "\(pageId)"
    let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{page_id}", with: pageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
