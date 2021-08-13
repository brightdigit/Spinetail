import Alamofire
import Foundation

open class ActivityFeedAPI {
  /**
   Get latest chimp chatter

   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getActivityFeedChimpChatter(count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: InlineResponse200?, _ error: Error?) -> Void)) {
    getActivityFeedChimpChatterWithRequestBuilder(count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get latest chimp chatter
        - GET /activity-feed/chimp-chatter

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
     "chimp_chatter" : [ {
       "update_time" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "2017-08-04T11:09:01",
       "title" : "1 new subscriber to Your New Campaign!",
       "message" : "People are telling their friends about your campaign!",
       "type" : "campaigns:forward-to-friend",
       "url" : "http://dev.mailchimp.com/reports/summary?id=1",
       "campaign_id" : "2017-08-04T11:09:01"
     }, {
       "update_time" : "2000-01-23T04:56:07.000+00:00",
       "list_id" : "2017-08-04T11:09:01",
       "title" : "1 new subscriber to Your New Campaign!",
       "message" : "People are telling their friends about your campaign!",
       "type" : "campaigns:forward-to-friend",
       "url" : "http://dev.mailchimp.com/reports/summary?id=1",
       "campaign_id" : "2017-08-04T11:09:01"
     } ],
     "total_items" : 0
   }}]
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<InlineResponse200>
        */
  open class func getActivityFeedChimpChatterWithRequestBuilder(count: Int? = nil, offset: Int? = nil) -> RequestBuilder<InlineResponse200> {
    let path = "/activity-feed/chimp-chatter"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<InlineResponse200>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
