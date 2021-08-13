import Alamofire
import Foundation

open class RootAPI {
  /**
   List api root resources

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getRoot(fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: APIRoot?, _ error: Error?) -> Void)) {
    getRootWithRequestBuilder(fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List api root resources
        - GET /

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "member_since" : "2000-01-23T04:56:07.000+00:00",
     "login_id" : "login_id",
     "pro_enabled" : true,
     "role" : "role",
     "first_payment" : "2000-01-23T04:56:07.000+00:00",
     "pricing_plan_type" : "monthly",
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
     "last_login" : "2000-01-23T04:56:07.000+00:00",
     "last_name" : "last_name",
     "industry_stats" : {
       "click_rate" : 5.962133916683182,
       "bounce_rate" : 1.4658129805029452,
       "open_rate" : 6.027456183070403
     },
     "account_id" : "account_id",
     "avatar_url" : "avatar_url",
     "account_name" : "account_name",
     "contact" : {
       "zip" : "zip",
       "country" : "country",
       "addr2" : "addr2",
       "addr1" : "addr1",
       "city" : "city",
       "company" : "company",
       "state" : "state"
     },
     "account_industry" : "account_industry",
     "first_name" : "first_name",
     "email" : "email",
     "account_timezone" : "account_timezone",
     "total_subscribers" : 0,
     "username" : "freddie2000"
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<APIRoot>
        */
  open class func getRootWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<APIRoot> {
    let path = "/"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<APIRoot>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
