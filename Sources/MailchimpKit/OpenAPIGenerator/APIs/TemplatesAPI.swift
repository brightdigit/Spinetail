import Alamofire
import Foundation

open class TemplatesAPI {
  /**
   Delete template

   - parameter templateId: (path) The unique id for the template.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteTemplatesId(templateId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteTemplatesIdWithRequestBuilder(templateId: templateId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete template
   - DELETE /templates/{template_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter templateId: (path) The unique id for the template.

   - returns: RequestBuilder<Void>
   */
  open class func deleteTemplatesIdWithRequestBuilder(templateId: String) -> RequestBuilder<Void> {
    var path = "/templates/{template_id}"
    let templateIdPreEscape = "\(templateId)"
    let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   * enum for parameter sortField
   */
  public enum SortField_getTemplates: String {
    case dateCreated = "date_created"
    case dateEdited = "date_edited"
    case name
  }

  /**
   * enum for parameter sortDir
   */
  public enum SortDir_getTemplates: String {
    case asc = "ASC"
    case desc = "DESC"
  }

  /**
   List templates

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter createdBy: (query) The Mailchimp account user who created the template. (optional)
   - parameter sinceDateCreated: (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter beforeDateCreated: (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
   - parameter type: (query) Limit results based on template type. (optional)
   - parameter category: (query) Limit results based on category. (optional)
   - parameter folderId: (query) The unique folder id. (optional)
   - parameter sortField: (query) Returns user templates sorted by the specified field. (optional)
   - parameter sortDir: (query) Determines the order direction for sorted results. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getTemplates(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField_getTemplates? = nil, sortDir: SortDir_getTemplates? = nil, completion: @escaping ((_ data: Templates?, _ error: Error?) -> Void)) {
    getTemplatesWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, createdBy: createdBy, sinceDateCreated: sinceDateCreated, beforeDateCreated: beforeDateCreated, type: type, category: category, folderId: folderId, sortField: sortField, sortDir: sortDir).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List templates
        - GET /templates

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "templates" : [ {
       "thumbnail" : "thumbnail",
       "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
       "date_created" : "2000-01-23T04:56:07.000+00:00",
       "active" : true,
       "type" : "type",
       "created_by" : "created_by",
       "drag_and_drop" : true,
       "share_url" : "share_url",
       "responsive" : true,
       "name" : "name",
       "id" : 0,
       "category" : "category",
       "folder_id" : "folder_id",
       "edited_by" : "edited_by"
     }, {
       "thumbnail" : "thumbnail",
       "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
       "date_created" : "2000-01-23T04:56:07.000+00:00",
       "active" : true,
       "type" : "type",
       "created_by" : "created_by",
       "drag_and_drop" : true,
       "share_url" : "share_url",
       "responsive" : true,
       "name" : "name",
       "id" : 0,
       "category" : "category",
       "folder_id" : "folder_id",
       "edited_by" : "edited_by"
     } ],
     "total_items" : 6
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter createdBy: (query) The Mailchimp account user who created the template. (optional)
        - parameter sinceDateCreated: (query) Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter beforeDateCreated: (query) Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36. (optional)
        - parameter type: (query) Limit results based on template type. (optional)
        - parameter category: (query) Limit results based on category. (optional)
        - parameter folderId: (query) The unique folder id. (optional)
        - parameter sortField: (query) Returns user templates sorted by the specified field. (optional)
        - parameter sortDir: (query) Determines the order direction for sorted results. (optional)

        - returns: RequestBuilder<Templates>
        */
  open class func getTemplatesWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, createdBy: String? = nil, sinceDateCreated: String? = nil, beforeDateCreated: String? = nil, type: String? = nil, category: String? = nil, folderId: String? = nil, sortField: SortField_getTemplates? = nil, sortDir: SortDir_getTemplates? = nil) -> RequestBuilder<Templates> {
    let path = "/templates"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "created_by": createdBy,
      "since_date_created": sinceDateCreated,
      "before_date_created": beforeDateCreated,
      "type": type,
      "category": category,
      "folder_id": folderId,
      "sort_field": sortField?.rawValue,
      "sort_dir": sortDir?.rawValue
    ])

    let requestBuilder: RequestBuilder<Templates>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get template info

   - parameter templateId: (path) The unique id for the template.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getTemplatesId(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void)) {
    getTemplatesIdWithRequestBuilder(templateId: templateId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get template info
        - GET /templates/{template_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "thumbnail" : "thumbnail",
     "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
     "date_created" : "2000-01-23T04:56:07.000+00:00",
     "active" : true,
     "type" : "type",
     "created_by" : "created_by",
     "drag_and_drop" : true,
     "share_url" : "share_url",
     "responsive" : true,
     "name" : "name",
     "id" : 0,
     "category" : "category",
     "folder_id" : "folder_id",
     "edited_by" : "edited_by"
   }}]
        - parameter templateId: (path) The unique id for the template.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<TemplateInstance1>
        */
  open class func getTemplatesIdWithRequestBuilder(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateInstance1> {
    var path = "/templates/{template_id}"
    let templateIdPreEscape = "\(templateId)"
    let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<TemplateInstance1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   View default content

   - parameter templateId: (path) The unique id for the template.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getTemplatesIdDefaultContent(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: TemplateDefaultContent?, _ error: Error?) -> Void)) {
    getTemplatesIdDefaultContentWithRequestBuilder(templateId: templateId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        View default content
        - GET /templates/{template_id}/default-content

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
     "sections" : {
       "key" : { }
     }
   }}]
        - parameter templateId: (path) The unique id for the template.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<TemplateDefaultContent>
        */
  open class func getTemplatesIdDefaultContentWithRequestBuilder(templateId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<TemplateDefaultContent> {
    var path = "/templates/{template_id}/default-content"
    let templateIdPreEscape = "\(templateId)"
    let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<TemplateDefaultContent>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update template

   - parameter body: (body)
   - parameter templateId: (path) The unique id for the template.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchTemplatesId(body: TemplateInstance2, templateId: String, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void)) {
    patchTemplatesIdWithRequestBuilder(body: body, templateId: templateId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update template
        - PATCH /templates/{template_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "thumbnail" : "thumbnail",
     "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
     "date_created" : "2000-01-23T04:56:07.000+00:00",
     "active" : true,
     "type" : "type",
     "created_by" : "created_by",
     "drag_and_drop" : true,
     "share_url" : "share_url",
     "responsive" : true,
     "name" : "name",
     "id" : 0,
     "category" : "category",
     "folder_id" : "folder_id",
     "edited_by" : "edited_by"
   }}]
        - parameter body: (body)
        - parameter templateId: (path) The unique id for the template.

        - returns: RequestBuilder<TemplateInstance1>
        */
  open class func patchTemplatesIdWithRequestBuilder(body: TemplateInstance2, templateId: String) -> RequestBuilder<TemplateInstance1> {
    var path = "/templates/{template_id}"
    let templateIdPreEscape = "\(templateId)"
    let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{template_id}", with: templateIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<TemplateInstance1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add template

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postTemplates(body: TemplateInstance, completion: @escaping ((_ data: TemplateInstance1?, _ error: Error?) -> Void)) {
    postTemplatesWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add template
        - POST /templates

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "thumbnail" : "thumbnail",
     "date_edited" : "2000-01-23T04:56:07.000+00:00",
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
     "date_created" : "2000-01-23T04:56:07.000+00:00",
     "active" : true,
     "type" : "type",
     "created_by" : "created_by",
     "drag_and_drop" : true,
     "share_url" : "share_url",
     "responsive" : true,
     "name" : "name",
     "id" : 0,
     "category" : "category",
     "folder_id" : "folder_id",
     "edited_by" : "edited_by"
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<TemplateInstance1>
        */
  open class func postTemplatesWithRequestBuilder(body: TemplateInstance) -> RequestBuilder<TemplateInstance1> {
    let path = "/templates"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<TemplateInstance1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
