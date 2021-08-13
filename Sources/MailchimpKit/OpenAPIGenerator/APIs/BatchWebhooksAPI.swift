import Alamofire
import Foundation

open class BatchWebhooksAPI {
  /**
   Delete batch webhook

   - parameter batchWebhookId: (path) The unique id for the batch webhook.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteBatchWebhookId(batchWebhookId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteBatchWebhookIdWithRequestBuilder(batchWebhookId: batchWebhookId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete batch webhook
   - DELETE /batch-webhooks/{batch_webhook_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter batchWebhookId: (path) The unique id for the batch webhook.

   - returns: RequestBuilder<Void>
   */
  open class func deleteBatchWebhookIdWithRequestBuilder(batchWebhookId: String) -> RequestBuilder<Void> {
    var path = "/batch-webhooks/{batch_webhook_id}"
    let batchWebhookIdPreEscape = "\(batchWebhookId)"
    let batchWebhookIdPostEscape = batchWebhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{batch_webhook_id}", with: batchWebhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get batch webhook info

   - parameter batchWebhookId: (path) The unique id for the batch webhook.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getBatchWebhook(batchWebhookId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void)) {
    getBatchWebhookWithRequestBuilder(batchWebhookId: batchWebhookId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getBatchWebhookWithRequestBuilder(batchWebhookId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<BatchWebhook1> {
    var path = "/batch-webhooks/{batch_webhook_id}"
    let batchWebhookIdPreEscape = "\(batchWebhookId)"
    let batchWebhookIdPostEscape = batchWebhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{batch_webhook_id}", with: batchWebhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<BatchWebhook1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List batch webhooks

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getBatchWebhooks(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: BatchWebhooks?, _ error: Error?) -> Void)) {
    getBatchWebhooksWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func getBatchWebhooksWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<BatchWebhooks> {
    let path = "/batch-webhooks"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<BatchWebhooks>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update batch webhook

   - parameter body: (body)
   - parameter batchWebhookId: (path) The unique id for the batch webhook.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchBatchWebhooks(body: BatchWebhook2, batchWebhookId: String, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void)) {
    patchBatchWebhooksWithRequestBuilder(body: body, batchWebhookId: batchWebhookId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func patchBatchWebhooksWithRequestBuilder(body: BatchWebhook2, batchWebhookId: String) -> RequestBuilder<BatchWebhook1> {
    var path = "/batch-webhooks/{batch_webhook_id}"
    let batchWebhookIdPreEscape = "\(batchWebhookId)"
    let batchWebhookIdPostEscape = batchWebhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{batch_webhook_id}", with: batchWebhookIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<BatchWebhook1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add batch webhook

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postBatchWebhooks(body: BatchWebhook, completion: @escaping ((_ data: BatchWebhook1?, _ error: Error?) -> Void)) {
    postBatchWebhooksWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
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
        */
  open class func postBatchWebhooksWithRequestBuilder(body: BatchWebhook) -> RequestBuilder<BatchWebhook1> {
    let path = "/batch-webhooks"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<BatchWebhook1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
