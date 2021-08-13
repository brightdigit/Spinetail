import Alamofire
import Foundation

open class VerifiedDomainsAPI {
  /**
   Add domain to account

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func createVerifiedDomain(body: VerifiedDomains2, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void)) {
    createVerifiedDomainWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add domain to account
        - POST /verified-domains

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "authenticated" : true,
     "domain" : "domain",
     "verified" : true,
     "verification_email" : "verification_email",
     "verification_sent" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<VerifiedDomains>
        */
  open class func createVerifiedDomainWithRequestBuilder(body: VerifiedDomains2) -> RequestBuilder<VerifiedDomains> {
    let path = "/verified-domains"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<VerifiedDomains>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Delete domain

   - parameter domainName: (path) The domain name.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteVerifiedDomain(domainName: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteVerifiedDomainWithRequestBuilder(domainName: domainName).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete domain
   - DELETE /verified-domains/{domain_name}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter domainName: (path) The domain name.

   - returns: RequestBuilder<Void>
   */
  open class func deleteVerifiedDomainWithRequestBuilder(domainName: String) -> RequestBuilder<Void> {
    var path = "/verified-domains/{domain_name}"
    let domainNamePreEscape = "\(domainName)"
    let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get domain info

   - parameter domainName: (path) The domain name.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getVerifiedDomain(domainName: String, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void)) {
    getVerifiedDomainWithRequestBuilder(domainName: domainName).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get domain info
        - GET /verified-domains/{domain_name}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "authenticated" : true,
     "domain" : "domain",
     "verified" : true,
     "verification_email" : "verification_email",
     "verification_sent" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter domainName: (path) The domain name.

        - returns: RequestBuilder<VerifiedDomains>
        */
  open class func getVerifiedDomainWithRequestBuilder(domainName: String) -> RequestBuilder<VerifiedDomains> {
    var path = "/verified-domains/{domain_name}"
    let domainNamePreEscape = "\(domainName)"
    let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<VerifiedDomains>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List sending domains

   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getVerifiedDomains(completion: @escaping ((_ data: VerifiedDomains1?, _ error: Error?) -> Void)) {
    getVerifiedDomainsWithRequestBuilder().execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List sending domains
        - GET /verified-domains

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "domains" : [ {
       "authenticated" : true,
       "domain" : "domain",
       "verified" : true,
       "verification_email" : "verification_email",
       "verification_sent" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "authenticated" : true,
       "domain" : "domain",
       "verified" : true,
       "verification_email" : "verification_email",
       "verification_sent" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "total_items" : 0
   }}]

        - returns: RequestBuilder<VerifiedDomains1>
        */
  open class func getVerifiedDomainsWithRequestBuilder() -> RequestBuilder<VerifiedDomains1> {
    let path = "/verified-domains"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<VerifiedDomains1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Verify domain

   - parameter body: (body)
   - parameter domainName: (path) The domain name.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func verifyDomain(body: VerifyADomainForSending_, domainName: String, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void)) {
    verifyDomainWithRequestBuilder(body: body, domainName: domainName).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Verify domain
        - POST /verified-domains/{domain_name}/actions/verify

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "authenticated" : true,
     "domain" : "domain",
     "verified" : true,
     "verification_email" : "verification_email",
     "verification_sent" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter body: (body)
        - parameter domainName: (path) The domain name.

        - returns: RequestBuilder<VerifiedDomains>
        */
  open class func verifyDomainWithRequestBuilder(body: VerifyADomainForSending_, domainName: String) -> RequestBuilder<VerifiedDomains> {
    var path = "/verified-domains/{domain_name}/actions/verify"
    let domainNamePreEscape = "\(domainName)"
    let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<VerifiedDomains>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
