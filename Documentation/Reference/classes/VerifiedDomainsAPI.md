**CLASS**

# `VerifiedDomainsAPI`

```swift
open class VerifiedDomainsAPI
```

## Methods
### `createVerifiedDomain(body:completion:)`

```swift
open class func createVerifiedDomain(body: VerifiedDomains2, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void))
```

Add domain to account

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `createVerifiedDomainWithRequestBuilder(body:)`

```swift
open class func createVerifiedDomainWithRequestBuilder(body: VerifiedDomains2) -> RequestBuilder<VerifiedDomains>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `deleteVerifiedDomain(domainName:completion:)`

```swift
open class func deleteVerifiedDomain(domainName: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete domain

- parameter domainName: (path) The domain name.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| domainName | (path) The domain name. |
| completion | completion handler to receive the data and the error objects |

### `deleteVerifiedDomainWithRequestBuilder(domainName:)`

```swift
open class func deleteVerifiedDomainWithRequestBuilder(domainName: String) -> RequestBuilder<Void>
```

Delete domain
- DELETE /verified-domains/{domain_name}

- BASIC:
  - type: http
  - name: basicAuth
- parameter domainName: (path) The domain name.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| domainName | (path) The domain name. |

### `getVerifiedDomain(domainName:completion:)`

```swift
open class func getVerifiedDomain(domainName: String, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void))
```

Get domain info

- parameter domainName: (path) The domain name.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| domainName | (path) The domain name. |
| completion | completion handler to receive the data and the error objects |

### `getVerifiedDomainWithRequestBuilder(domainName:)`

```swift
open class func getVerifiedDomainWithRequestBuilder(domainName: String) -> RequestBuilder<VerifiedDomains>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| domainName | (path) The domain name. |

### `getVerifiedDomains(completion:)`

```swift
open class func getVerifiedDomains(completion: @escaping ((_ data: VerifiedDomains1?, _ error: Error?) -> Void))
```

List sending domains

- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| completion | completion handler to receive the data and the error objects |

### `getVerifiedDomainsWithRequestBuilder()`

```swift
open class func getVerifiedDomainsWithRequestBuilder() -> RequestBuilder<VerifiedDomains1>
```

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

### `verifyDomain(body:domainName:completion:)`

```swift
open class func verifyDomain(body: VerifyADomainForSending_, domainName: String, completion: @escaping ((_ data: VerifiedDomains?, _ error: Error?) -> Void))
```

Verify domain

- parameter body: (body)
- parameter domainName: (path) The domain name.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| domainName | (path) The domain name. |
| completion | completion handler to receive the data and the error objects |

### `verifyDomainWithRequestBuilder(body:domainName:)`

```swift
open class func verifyDomainWithRequestBuilder(body: VerifyADomainForSending_, domainName: String) -> RequestBuilder<VerifiedDomains>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| domainName | (path) The domain name. |