import Alamofire
import Foundation

open class PingAPI {
  /**
   Ping

   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getPing(completion: @escaping ((_ data: APIHealthStatus?, _ error: Error?) -> Void)) {
    getPingWithRequestBuilder().execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Ping
        - GET /ping

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "health_status" : "\"Everything's Chimpy!\""
   }}]

        - returns: RequestBuilder<APIHealthStatus>
        */
  open class func getPingWithRequestBuilder() -> RequestBuilder<APIHealthStatus> {
    let path = "/ping"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<APIHealthStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }
}
