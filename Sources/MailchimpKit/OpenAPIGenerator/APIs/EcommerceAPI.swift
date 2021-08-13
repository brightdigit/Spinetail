import Alamofire
import Foundation

open class EcommerceAPI {
  /**
   Delete store

   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresId(storeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdWithRequestBuilder(storeId: storeId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete store
   - DELETE /ecommerce/stores/{store_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - examples: [{contentType=application/json, example={ }}]
   - parameter storeId: (path) The store id.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdWithRequestBuilder(storeId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete cart

   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdCartsId(storeId: String, cartId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdCartsIdWithRequestBuilder(storeId: storeId, cartId: cartId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete cart
   - DELETE /ecommerce/stores/{store_id}/carts/{cart_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdCartsIdWithRequestBuilder(storeId: String, cartId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete cart line item

   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter lineId: (path) The id for the line item of a cart.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdCartsLinesId(storeId: String, cartId: String, lineId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdCartsLinesIdWithRequestBuilder(storeId: storeId, cartId: cartId, lineId: lineId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete cart line item
   - DELETE /ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter lineId: (path) The id for the line item of a cart.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdCartsLinesIdWithRequestBuilder(storeId: String, cartId: String, lineId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete customer

   - parameter storeId: (path) The store id.
   - parameter customerId: (path) The id for the customer of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdCustomersId(storeId: String, customerId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: storeId, customerId: customerId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete customer
   - DELETE /ecommerce/stores/{store_id}/customers/{customer_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter customerId: (path) The id for the customer of a store.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: String, customerId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/customers/{customer_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let customerIdPreEscape = "\(customerId)"
    let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{customer_id}", with: customerIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete order

   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdOrdersId(storeId: String, orderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: storeId, orderId: orderId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete order
   - DELETE /ecommerce/stores/{store_id}/orders/{order_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: String, orderId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete order line item

   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter lineId: (path) The id for the line item of an order.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdOrdersIdLinesId(storeId: String, orderId: String, lineId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: storeId, orderId: orderId, lineId: lineId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete order line item
   - DELETE /ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter lineId: (path) The id for the line item of an order.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: String, orderId: String, lineId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete product

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdProductsId(storeId: String, productId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdProductsIdWithRequestBuilder(storeId: storeId, productId: productId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete product
   - DELETE /ecommerce/stores/{store_id}/products/{product_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdProductsIdWithRequestBuilder(storeId: String, productId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete product image

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter imageId: (path) The id for the product image.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdProductsIdImagesId(storeId: String, productId: String, imageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: storeId, productId: productId, imageId: imageId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete product image
   - DELETE /ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter imageId: (path) The id for the product image.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: String, productId: String, imageId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let imageIdPreEscape = "\(imageId)"
    let imageIdPostEscape = imageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{image_id}", with: imageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete product variant

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter variantId: (path) The id for the product variant.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdProductsIdVariantsId(storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: storeId, productId: productId, variantId: variantId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete product variant
   - DELETE /ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter variantId: (path) The id for the product variant.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: String, productId: String, variantId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let variantIdPreEscape = "\(variantId)"
    let variantIdPostEscape = variantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{variant_id}", with: variantIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete promo code

   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter promoCodeId: (path) The id for the promo code of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdPromocodesId(storeId: String, promoRuleId: String, promoCodeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: storeId, promoRuleId: promoRuleId, promoCodeId: promoCodeId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete promo code
   - DELETE /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter promoCodeId: (path) The id for the promo code of a store.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: String, promoRuleId: String, promoCodeId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let promoCodeIdPreEscape = "\(promoCodeId)"
    let promoCodeIdPostEscape = promoCodeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_code_id}", with: promoCodeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Delete promo rule

   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func deleteEcommerceStoresIdPromorulesId(storeId: String, promoRuleId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
    deleteEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: storeId, promoRuleId: promoRuleId).execute { _, error -> Void in
      if error == nil {
        completion((), error)
      } else {
        completion(nil, error)
      }
    }
  }

  /**
   Delete promo rule
   - DELETE /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}

   - BASIC:
     - type: http
     - name: basicAuth
   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.

   - returns: RequestBuilder<Void>
   */
  open class func deleteEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: String, promoRuleId: String) -> RequestBuilder<Void> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

    return requestBuilder.init(method: "DELETE", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List account orders

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter campaignId: (query) Restrict results to orders with a specific &#x60;campaign_id&#x60; value. (optional)
   - parameter outreachId: (query) Restrict results to orders with a specific &#x60;outreach_id&#x60; value. (optional)
   - parameter customerId: (query) Restrict results to orders made by a specific customer. (optional)
   - parameter hasOutreach: (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceOrders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, completion: @escaping ((_ data: Orders?, _ error: Error?) -> Void)) {
    getEcommerceOrdersWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset, campaignId: campaignId, outreachId: outreachId, customerId: customerId, hasOutreach: hasOutreach).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List account orders
        - GET /ecommerce/orders

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "orders" : [ {
       "store_id" : "store_id",
       "discount_total" : 6.027456183070403,
       "fulfillment_status" : "fulfillment_status",
       "tax_total" : 1.4658129805029452,
       "shipping_total" : 5.962133916683182,
       "_links" : [ null, null ],
       "outreach" : {
         "published_time" : "2000-01-23T04:56:07.000+00:00",
         "name" : "Freddie's Jokes",
         "id" : "839488a60b",
         "type" : "regular"
       },
       "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "billing_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "tracking_code" : "prec",
       "currency_code" : "currency_code",
       "landing_site" : "http://www.example.com?source=abc",
       "order_url" : "order_url",
       "financial_status" : "financial_status",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "shipping_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "promos" : [ {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       }, {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       } ],
       "campaign_id" : "839488a60b",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       },
       "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "store_id" : "store_id",
       "discount_total" : 6.027456183070403,
       "fulfillment_status" : "fulfillment_status",
       "tax_total" : 1.4658129805029452,
       "shipping_total" : 5.962133916683182,
       "_links" : [ null, null ],
       "outreach" : {
         "published_time" : "2000-01-23T04:56:07.000+00:00",
         "name" : "Freddie's Jokes",
         "id" : "839488a60b",
         "type" : "regular"
       },
       "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "billing_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "tracking_code" : "prec",
       "currency_code" : "currency_code",
       "landing_site" : "http://www.example.com?source=abc",
       "order_url" : "order_url",
       "financial_status" : "financial_status",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "shipping_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "promos" : [ {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       }, {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       } ],
       "campaign_id" : "839488a60b",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       },
       "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "total_items" : 3
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter campaignId: (query) Restrict results to orders with a specific &#x60;campaign_id&#x60; value. (optional)
        - parameter outreachId: (query) Restrict results to orders with a specific &#x60;outreach_id&#x60; value. (optional)
        - parameter customerId: (query) Restrict results to orders made by a specific customer. (optional)
        - parameter hasOutreach: (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional)

        - returns: RequestBuilder<Orders>
        */
  open class func getEcommerceOrdersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil) -> RequestBuilder<Orders> {
    let path = "/ecommerce/orders"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "campaign_id": campaignId,
      "outreach_id": outreachId,
      "customer_id": customerId,
      "has_outreach": hasOutreach
    ])

    let requestBuilder: RequestBuilder<Orders>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List stores

   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStores(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceStores?, _ error: Error?) -> Void)) {
    getEcommerceStoresWithRequestBuilder(fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List stores
        - GET /ecommerce/stores

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "_links" : [ null, null ],
     "stores" : [ {
       "is_syncing" : true,
       "automations" : {
         "abandoned_browse" : {
           "is_supported" : false,
           "id" : "355a72bfc3",
           "status" : "sending"
         },
         "abandoned_cart" : {
           "is_supported" : false,
           "id" : "355a72bfc3",
           "status" : "sending"
         }
       },
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "list_id" : "1a2df69511",
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
       "timezone" : "Eastern",
       "primary_locale" : "fr",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "list_is_active" : true,
       "platform" : "platform",
       "currency_code" : "USD",
       "money_format" : "$",
       "connected_site" : {
         "site_script" : {
           "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
           "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
         },
         "site_foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API"
       },
       "email_address" : "freddie@mailchimp.com",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "phone" : "404-444-4444",
       "domain" : "example.com",
       "name" : "Freddie's Cat Hat Emporium",
       "id" : "example_store"
     }, {
       "is_syncing" : true,
       "automations" : {
         "abandoned_browse" : {
           "is_supported" : false,
           "id" : "355a72bfc3",
           "status" : "sending"
         },
         "abandoned_cart" : {
           "is_supported" : false,
           "id" : "355a72bfc3",
           "status" : "sending"
         }
       },
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "list_id" : "1a2df69511",
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
       "timezone" : "Eastern",
       "primary_locale" : "fr",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "list_is_active" : true,
       "platform" : "platform",
       "currency_code" : "USD",
       "money_format" : "$",
       "connected_site" : {
         "site_script" : {
           "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
           "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
         },
         "site_foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API"
       },
       "email_address" : "freddie@mailchimp.com",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "phone" : "404-444-4444",
       "domain" : "example.com",
       "name" : "Freddie's Cat Hat Emporium",
       "id" : "example_store"
     } ],
     "total_items" : 0
   }}]
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<EcommerceStores>
        */
  open class func getEcommerceStoresWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceStores> {
    let path = "/ecommerce/stores"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<EcommerceStores>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get store info

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresId(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get store info
        - GET /ecommerce/stores/{store_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "is_syncing" : true,
     "automations" : {
       "abandoned_browse" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       },
       "abandoned_cart" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       }
     },
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "list_id" : "1a2df69511",
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
     "timezone" : "Eastern",
     "primary_locale" : "fr",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "list_is_active" : true,
     "platform" : "platform",
     "currency_code" : "USD",
     "money_format" : "$",
     "connected_site" : {
       "site_script" : {
         "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
         "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
       },
       "site_foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API"
     },
     "email_address" : "freddie@mailchimp.com",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "phone" : "404-444-4444",
     "domain" : "example.com",
     "name" : "Freddie's Cat Hat Emporium",
     "id" : "example_store"
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceStore1>
        */
  open class func getEcommerceStoresIdWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceStore1> {
    var path = "/ecommerce/stores/{store_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceStore1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List carts

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCarts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Carts?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCartsWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List carts
        - GET /ecommerce/stores/{store_id}/carts

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "carts" : [ {
       "checkout_url" : "checkout_url",
       "tax_total" : 6.027456183070403,
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "_links" : [ null, null ],
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 1,
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
         "price" : 5.962133916683182,
         "product_id" : "product_id",
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 1,
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
         "price" : 5.962133916683182,
         "product_id" : "product_id",
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "campaign_id" : "839488a60b",
       "currency_code" : "currency_code",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       }
     }, {
       "checkout_url" : "checkout_url",
       "tax_total" : 6.027456183070403,
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "_links" : [ null, null ],
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 1,
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
         "price" : 5.962133916683182,
         "product_id" : "product_id",
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 1,
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
         "price" : 5.962133916683182,
         "product_id" : "product_id",
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "campaign_id" : "839488a60b",
       "currency_code" : "currency_code",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       }
     } ],
     "_links" : [ null, null ],
     "total_items" : 5
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<Carts>
        */
  open class func getEcommerceStoresIdCartsWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Carts> {
    var path = "/ecommerce/stores/{store_id}/carts"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<Carts>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get cart info

   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCartsId(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCartsIdWithRequestBuilder(storeId: storeId, cartId: cartId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get cart info
        - GET /ecommerce/stores/{store_id}/carts/{cart_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "checkout_url" : "checkout_url",
     "tax_total" : 6.027456183070403,
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "campaign_id" : "839488a60b",
     "currency_code" : "currency_code",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     }
   }}]
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceCart1>
        */
  open class func getEcommerceStoresIdCartsIdWithRequestBuilder(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCart1> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceCart1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List cart line items

   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCartsIdLines(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CartLines?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCartsIdLinesWithRequestBuilder(storeId: storeId, cartId: cartId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List cart line items
        - GET /ecommerce/stores/{store_id}/carts/{cart_id}/lines

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "cart_id" : "cart_id",
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
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<CartLines>
        */
  open class func getEcommerceStoresIdCartsIdLinesWithRequestBuilder(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CartLines> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<CartLines>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get cart line item

   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter lineId: (path) The id for the line item of a cart.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCartsIdLinesId(storeId: String, cartId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(storeId: storeId, cartId: cartId, lineId: lineId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get cart line item
        - GET /ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.
        - parameter lineId: (path) The id for the line item of a cart.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceCartLineItem3>
        */
  open class func getEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(storeId: String, cartId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCartLineItem3> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceCartLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List customers

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter emailAddress: (query) Restrict the response to customers with the email address. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCustomers(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailAddress: String? = nil, completion: @escaping ((_ data: Customers?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCustomersWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, emailAddress: emailAddress).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List customers
        - GET /ecommerce/stores/{store_id}/customers

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
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
     "customers" : [ {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     }, {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     } ],
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter emailAddress: (query) Restrict the response to customers with the email address. (optional)

        - returns: RequestBuilder<Customers>
        */
  open class func getEcommerceStoresIdCustomersWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailAddress: String? = nil) -> RequestBuilder<Customers> {
    var path = "/ecommerce/stores/{store_id}/customers"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "email_address": emailAddress
    ])

    let requestBuilder: RequestBuilder<Customers>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get customer info

   - parameter storeId: (path) The store id.
   - parameter customerId: (path) The id for the customer of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdCustomersId(storeId: String, customerId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: storeId, customerId: customerId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get customer info
        - GET /ecommerce/stores/{store_id}/customers/{customer_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "total_spent" : 100.0,
     "orders_count" : 4,
     "email_address" : "email_address",
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "province_code" : "GA",
       "postal_code" : "30308"
     },
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
     "last_name" : "last_name",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "opt_in_status" : true,
     "company" : "company",
     "id" : "id",
     "first_name" : "first_name"
   }}]
        - parameter storeId: (path) The store id.
        - parameter customerId: (path) The id for the customer of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceCustomer3>
        */
  open class func getEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: String, customerId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCustomer3> {
    var path = "/ecommerce/stores/{store_id}/customers/{customer_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let customerIdPreEscape = "\(customerId)"
    let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{customer_id}", with: customerIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceCustomer3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List orders

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter customerId: (query) Restrict results to orders made by a specific customer. (optional)
   - parameter hasOutreach: (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional)
   - parameter campaignId: (query) Restrict results to orders with a specific &#x60;campaign_id&#x60; value. (optional)
   - parameter outreachId: (query) Restrict results to orders with a specific &#x60;outreach_id&#x60; value. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdOrders(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil, completion: @escaping ((_ data: Orders1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdOrdersWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset, customerId: customerId, hasOutreach: hasOutreach, campaignId: campaignId, outreachId: outreachId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List orders
        - GET /ecommerce/stores/{store_id}/orders

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
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
     "orders" : [ {
       "store_id" : "store_id",
       "discount_total" : 6.027456183070403,
       "fulfillment_status" : "fulfillment_status",
       "tax_total" : 1.4658129805029452,
       "shipping_total" : 5.962133916683182,
       "_links" : [ null, null ],
       "outreach" : {
         "published_time" : "2000-01-23T04:56:07.000+00:00",
         "name" : "Freddie's Jokes",
         "id" : "839488a60b",
         "type" : "regular"
       },
       "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "billing_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "tracking_code" : "prec",
       "currency_code" : "currency_code",
       "landing_site" : "http://www.example.com?source=abc",
       "order_url" : "order_url",
       "financial_status" : "financial_status",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "shipping_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "promos" : [ {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       }, {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       } ],
       "campaign_id" : "839488a60b",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       },
       "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
     }, {
       "store_id" : "store_id",
       "discount_total" : 6.027456183070403,
       "fulfillment_status" : "fulfillment_status",
       "tax_total" : 1.4658129805029452,
       "shipping_total" : 5.962133916683182,
       "_links" : [ null, null ],
       "outreach" : {
         "published_time" : "2000-01-23T04:56:07.000+00:00",
         "name" : "Freddie's Jokes",
         "id" : "839488a60b",
         "type" : "regular"
       },
       "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "billing_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "tracking_code" : "prec",
       "currency_code" : "currency_code",
       "landing_site" : "http://www.example.com?source=abc",
       "order_url" : "order_url",
       "financial_status" : "financial_status",
       "order_total" : 0.8008281904610115,
       "id" : "id",
       "shipping_address" : {
         "country" : "United States",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "latitude" : 45.427408,
         "province_code" : "GA",
         "country_code" : "US",
         "province" : "Georgia",
         "phone" : "8675309",
         "name" : "Freddie Chimpenheimer",
         "company" : "company",
         "postal_code" : "30308",
         "longitude" : -75.68903
       },
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "lines" : [ {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       }, {
         "product_variant_title" : "product_variant_title",
         "quantity" : 2,
         "_links" : [ null, null ],
         "image_url" : "image_url",
         "price" : 7.061401241503109,
         "product_id" : "product_id",
         "discount" : 9.301444243932576,
         "id" : "id",
         "product_variant_id" : "product_variant_id",
         "product_title" : "product_title"
       } ],
       "promos" : [ {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       }, {
         "code" : "code",
         "amount_discounted" : 5.637376656633329,
         "type" : "fixed"
       } ],
       "campaign_id" : "839488a60b",
       "customer" : {
         "total_spent" : 100.0,
         "orders_count" : 4,
         "email_address" : "email_address",
         "address" : {
           "country" : "United States",
           "country_code" : "US",
           "province" : "Georgia",
           "address2" : "Suite 5000",
           "city" : "Atlanta",
           "address1" : "675 Ponce de Leon Ave NE",
           "province_code" : "GA",
           "postal_code" : "30308"
         },
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
         "last_name" : "last_name",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "opt_in_status" : true,
         "company" : "company",
         "id" : "id",
         "first_name" : "first_name"
       },
       "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
     } ],
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
        - parameter customerId: (query) Restrict results to orders made by a specific customer. (optional)
        - parameter hasOutreach: (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional)
        - parameter campaignId: (query) Restrict results to orders with a specific &#x60;campaign_id&#x60; value. (optional)
        - parameter outreachId: (query) Restrict results to orders with a specific &#x60;outreach_id&#x60; value. (optional)

        - returns: RequestBuilder<Orders1>
        */
  open class func getEcommerceStoresIdOrdersWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil) -> RequestBuilder<Orders1> {
    var path = "/ecommerce/stores/{store_id}/orders"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON(),
      "customer_id": customerId,
      "has_outreach": hasOutreach,
      "campaign_id": campaignId,
      "outreach_id": outreachId
    ])

    let requestBuilder: RequestBuilder<Orders1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get order info

   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdOrdersId(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: storeId, orderId: orderId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get order info
        - GET /ecommerce/stores/{store_id}/orders/{order_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "discount_total" : 6.027456183070403,
     "fulfillment_status" : "fulfillment_status",
     "tax_total" : 1.4658129805029452,
     "shipping_total" : 5.962133916683182,
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
     "outreach" : {
       "published_time" : "2000-01-23T04:56:07.000+00:00",
       "name" : "Freddie's Jokes",
       "id" : "839488a60b",
       "type" : "regular"
     },
     "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "billing_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "tracking_code" : "prec",
     "currency_code" : "currency_code",
     "landing_site" : "http://www.example.com?source=abc",
     "order_url" : "order_url",
     "financial_status" : "financial_status",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "shipping_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "promos" : [ {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     }, {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     } ],
     "campaign_id" : "839488a60b",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     },
     "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceOrder1>
        */
  open class func getEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceOrder1> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceOrder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List order line items

   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdOrdersIdLines(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: OrderLines?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdOrdersIdLinesWithRequestBuilder(storeId: storeId, orderId: orderId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List order line items
        - GET /ecommerce/stores/{store_id}/orders/{order_id}/lines

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
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
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "order_id" : "order_id",
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<OrderLines>
        */
  open class func getEcommerceStoresIdOrdersIdLinesWithRequestBuilder(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<OrderLines> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}/lines"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<OrderLines>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get order line item

   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter lineId: (path) The id for the line item of an order.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdOrdersIdLinesId(storeId: String, orderId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: storeId, orderId: orderId, lineId: lineId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get order line item
        - GET /ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "image_url" : "image_url",
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "discount" : 1.4658129805029452,
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.
        - parameter lineId: (path) The id for the line item of an order.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceOrderLineItem3>
        */
  open class func getEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: String, orderId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceOrderLineItem3> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceOrderLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List product

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProducts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Products?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List product
        - GET /ecommerce/stores/{store_id}/products

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "_links" : [ null, null ],
     "total_items" : 1,
     "products" : [ {
       "images" : [ {
         "_links" : [ null, null ],
         "variant_ids" : [ "variant_ids", "variant_ids" ],
         "id" : "id",
         "url" : "url"
       }, {
         "_links" : [ null, null ],
         "variant_ids" : [ "variant_ids", "variant_ids" ],
         "id" : "id",
         "url" : "url"
       } ],
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "description" : "This is a cat hat.",
       "handle" : "cat-hat",
       "variants" : [ {
         "inventory_quantity" : 6,
         "visibility" : "visibility",
         "updated_at" : "2000-01-23T04:56:07.000+00:00",
         "backorders" : "backorders",
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
         "price" : 0.8008281904610115,
         "image_url" : "image_url",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "id" : "id",
         "title" : "Cat Hat",
         "sku" : "sku",
         "url" : "url"
       }, {
         "inventory_quantity" : 6,
         "visibility" : "visibility",
         "updated_at" : "2000-01-23T04:56:07.000+00:00",
         "backorders" : "backorders",
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
         "price" : 0.8008281904610115,
         "image_url" : "image_url",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "id" : "id",
         "title" : "Cat Hat",
         "sku" : "sku",
         "url" : "url"
       } ],
       "title" : "Cat Hat",
       "type" : "Accessories",
       "currency_code" : "currency_code",
       "url" : "url",
       "vendor" : "vendor",
       "published_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id"
     }, {
       "images" : [ {
         "_links" : [ null, null ],
         "variant_ids" : [ "variant_ids", "variant_ids" ],
         "id" : "id",
         "url" : "url"
       }, {
         "_links" : [ null, null ],
         "variant_ids" : [ "variant_ids", "variant_ids" ],
         "id" : "id",
         "url" : "url"
       } ],
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "description" : "This is a cat hat.",
       "handle" : "cat-hat",
       "variants" : [ {
         "inventory_quantity" : 6,
         "visibility" : "visibility",
         "updated_at" : "2000-01-23T04:56:07.000+00:00",
         "backorders" : "backorders",
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
         "price" : 0.8008281904610115,
         "image_url" : "image_url",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "id" : "id",
         "title" : "Cat Hat",
         "sku" : "sku",
         "url" : "url"
       }, {
         "inventory_quantity" : 6,
         "visibility" : "visibility",
         "updated_at" : "2000-01-23T04:56:07.000+00:00",
         "backorders" : "backorders",
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
         "price" : 0.8008281904610115,
         "image_url" : "image_url",
         "created_at" : "2000-01-23T04:56:07.000+00:00",
         "id" : "id",
         "title" : "Cat Hat",
         "sku" : "sku",
         "url" : "url"
       } ],
       "title" : "Cat Hat",
       "type" : "Accessories",
       "currency_code" : "currency_code",
       "url" : "url",
       "vendor" : "vendor",
       "published_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id"
     } ]
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<Products>
        */
  open class func getEcommerceStoresIdProductsWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Products> {
    var path = "/ecommerce/stores/{store_id}/products"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<Products>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get product info

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProductsId(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsIdWithRequestBuilder(storeId: storeId, productId: productId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get product info
        - GET /ecommerce/stores/{store_id}/products/{product_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "images" : [ {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     }, {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     } ],
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
     "image_url" : "image_url",
     "description" : "This is a cat hat.",
     "handle" : "cat-hat",
     "variants" : [ {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     }, {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     } ],
     "title" : "Cat Hat",
     "type" : "Accessories",
     "currency_code" : "currency_code",
     "url" : "url",
     "vendor" : "vendor",
     "published_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id"
   }}]
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceProduct1>
        */
  open class func getEcommerceStoresIdProductsIdWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProduct1> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceProduct1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List product images

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProductsIdImages(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceProductImages?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsIdImagesWithRequestBuilder(storeId: storeId, productId: productId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List product images
        - GET /ecommerce/stores/{store_id}/products/{product_id}/images

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "images" : [ {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     }, {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     } ],
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
     "product_id" : "product_id",
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<EcommerceProductImages>
        */
  open class func getEcommerceStoresIdProductsIdImagesWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceProductImages> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/images"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<EcommerceProductImages>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get product image info

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter imageId: (path) The id for the product image.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProductsIdImagesId(storeId: String, productId: String, imageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: storeId, productId: productId, imageId: imageId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get product image info
        - GET /ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}

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
     "variant_ids" : [ "variant_ids", "variant_ids" ],
     "id" : "id",
     "url" : "url"
   }}]
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter imageId: (path) The id for the product image.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceProductImage3>
        */
  open class func getEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: String, productId: String, imageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProductImage3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let imageIdPreEscape = "\(imageId)"
    let imageIdPostEscape = imageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{image_id}", with: imageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceProductImage3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List product variants

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProductsIdVariants(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceProductVariants?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsIdVariantsWithRequestBuilder(storeId: storeId, productId: productId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List product variants
        - GET /ecommerce/stores/{store_id}/products/{product_id}/variants

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
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
     "product_id" : "product_id",
     "variants" : [ {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     }, {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     } ],
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<EcommerceProductVariants>
        */
  open class func getEcommerceStoresIdProductsIdVariantsWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceProductVariants> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<EcommerceProductVariants>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get product variant info

   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter variantId: (path) The id for the product variant.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdProductsIdVariantsId(storeId: String, productId: String, variantId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: storeId, productId: productId, variantId: variantId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get product variant info
        - GET /ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "inventory_quantity" : 6,
     "visibility" : "visibility",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "backorders" : "backorders",
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
     "price" : 0.8008281904610115,
     "image_url" : "image_url",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id",
     "title" : "Cat Hat",
     "sku" : "sku",
     "url" : "url"
   }}]
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter variantId: (path) The id for the product variant.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommerceProductVariant3>
        */
  open class func getEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: String, productId: String, variantId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProductVariant3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let variantIdPreEscape = "\(variantId)"
    let variantIdPostEscape = variantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{variant_id}", with: variantIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommerceProductVariant3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List promo codes

   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdPromocodes(promoRuleId: String, storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: PromoCodes?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdPromocodesWithRequestBuilder(promoRuleId: promoRuleId, storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List promo codes
        - GET /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "promo_codes" : [ {
       "usage_count" : 0,
       "code" : "summersale",
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
       "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "redemption_url" : "A url that applies promo code directly at checkout or a url that points to sale page or store url",
       "enabled" : true
     }, {
       "usage_count" : 0,
       "code" : "summersale",
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
       "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "redemption_url" : "A url that applies promo code directly at checkout or a url that points to sale page or store url",
       "enabled" : true
     } ],
     "_links" : [ null, null ],
     "total_items" : 6
   }}]
        - parameter promoRuleId: (path) The id for the promo rule of a store.
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<PromoCodes>
        */
  open class func getEcommerceStoresIdPromocodesWithRequestBuilder(promoRuleId: String, storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<PromoCodes> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes"
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<PromoCodes>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get promo code

   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter promoCodeId: (path) The id for the promo code of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdPromocodesId(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: storeId, promoRuleId: promoRuleId, promoCodeId: promoCodeId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get promo code
        - GET /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "usage_count" : 0,
     "code" : "summersale",
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
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "redemption_url" : "A url that applies promo code directly at checkout or a url that points to sale page or store url",
     "enabled" : true
   }}]
        - parameter storeId: (path) The store id.
        - parameter promoRuleId: (path) The id for the promo rule of a store.
        - parameter promoCodeId: (path) The id for the promo code of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommercePromoCode1>
        */
  open class func getEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommercePromoCode1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let promoCodeIdPreEscape = "\(promoCodeId)"
    let promoCodeIdPostEscape = promoCodeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_code_id}", with: promoCodeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommercePromoCode1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   List promo rules

   - parameter storeId: (path) The store id.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
   - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdPromorules(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: PromoRules?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdPromorulesWithRequestBuilder(storeId: storeId, fields: fields, excludeFields: excludeFields, count: count, offset: offset).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        List promo rules
        - GET /ecommerce/stores/{store_id}/promo-rules

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "_links" : [ null, null ],
     "promo_rules" : [ {
       "starts_at" : "2000-01-23T04:56:07.000+00:00",
       "amount" : 0.5,
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
       "description" : "Save BIG during our summer sale!",
       "id" : "id",
       "ends_at" : "ends_at",
       "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "title" : "50% off Total Order",
       "type" : "fixed",
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "enabled" : true,
       "target" : "per_item"
     }, {
       "starts_at" : "2000-01-23T04:56:07.000+00:00",
       "amount" : 0.5,
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
       "description" : "Save BIG during our summer sale!",
       "id" : "id",
       "ends_at" : "ends_at",
       "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "title" : "50% off Total Order",
       "type" : "fixed",
       "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
       "enabled" : true,
       "target" : "per_item"
     } ],
     "total_items" : 0
   }}]
        - parameter storeId: (path) The store id.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
        - parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
        - parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)

        - returns: RequestBuilder<PromoRules>
        */
  open class func getEcommerceStoresIdPromorulesWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<PromoRules> {
    var path = "/ecommerce/stores/{store_id}/promo-rules"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields,
      "count": count?.encodeToJSON(),
      "offset": offset?.encodeToJSON()
    ])

    let requestBuilder: RequestBuilder<PromoRules>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Get promo rule

   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
   - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func getEcommerceStoresIdPromorulesId(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void)) {
    getEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: storeId, promoRuleId: promoRuleId, fields: fields, excludeFields: excludeFields).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Get promo rule
        - GET /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "starts_at" : "2000-01-23T04:56:07.000+00:00",
     "amount" : 0.5,
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
     "description" : "Save BIG during our summer sale!",
     "id" : "id",
     "ends_at" : "ends_at",
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "title" : "50% off Total Order",
     "type" : "fixed",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "enabled" : true,
     "target" : "per_item"
   }}]
        - parameter storeId: (path) The store id.
        - parameter promoRuleId: (path) The id for the promo rule of a store.
        - parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
        - parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)

        - returns: RequestBuilder<EcommercePromoRule1>
        */
  open class func getEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommercePromoRule1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters: [String: Any]? = nil
    var url = URLComponents(string: URLString)
    url?.queryItems = APIHelper.mapValuesToQueryItems([
      "fields": fields,
      "exclude_fields": excludeFields
    ])

    let requestBuilder: RequestBuilder<EcommercePromoRule1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "GET", URLString: url?.string ?? URLString, parameters: parameters, isBody: false)
  }

  /**
   Update store

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresId(body: EcommerceStore2, storeId: String, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update store
        - PATCH /ecommerce/stores/{store_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "is_syncing" : true,
     "automations" : {
       "abandoned_browse" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       },
       "abandoned_cart" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       }
     },
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "list_id" : "1a2df69511",
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
     "timezone" : "Eastern",
     "primary_locale" : "fr",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "list_is_active" : true,
     "platform" : "platform",
     "currency_code" : "USD",
     "money_format" : "$",
     "connected_site" : {
       "site_script" : {
         "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
         "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
       },
       "site_foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API"
     },
     "email_address" : "freddie@mailchimp.com",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "phone" : "404-444-4444",
     "domain" : "example.com",
     "name" : "Freddie's Cat Hat Emporium",
     "id" : "example_store"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommerceStore1>
        */
  open class func patchEcommerceStoresIdWithRequestBuilder(body: EcommerceStore2, storeId: String) -> RequestBuilder<EcommerceStore1> {
    var path = "/ecommerce/stores/{store_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceStore1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update cart

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdCartsId(body: EcommerceCart2, storeId: String, cartId: String, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdCartsIdWithRequestBuilder(body: body, storeId: storeId, cartId: cartId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update cart
        - PATCH /ecommerce/stores/{store_id}/carts/{cart_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "checkout_url" : "checkout_url",
     "tax_total" : 6.027456183070403,
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "campaign_id" : "839488a60b",
     "currency_code" : "currency_code",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     }
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.

        - returns: RequestBuilder<EcommerceCart1>
        */
  open class func patchEcommerceStoresIdCartsIdWithRequestBuilder(body: EcommerceCart2, storeId: String, cartId: String) -> RequestBuilder<EcommerceCart1> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCart1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update cart line item

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter lineId: (path) The id for the line item of a cart.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdCartsIdLinesId(body: EcommerceCartLineItem4, storeId: String, cartId: String, lineId: String, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(body: body, storeId: storeId, cartId: cartId, lineId: lineId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update cart line item
        - PATCH /ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.
        - parameter lineId: (path) The id for the line item of a cart.

        - returns: RequestBuilder<EcommerceCartLineItem3>
        */
  open class func patchEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(body: EcommerceCartLineItem4, storeId: String, cartId: String, lineId: String) -> RequestBuilder<EcommerceCartLineItem3> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCartLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update customer

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter customerId: (path) The id for the customer of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdCustomersId(body: EcommerceCustomer5, storeId: String, customerId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdCustomersIdWithRequestBuilder(body: body, storeId: storeId, customerId: customerId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update customer
        - PATCH /ecommerce/stores/{store_id}/customers/{customer_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "total_spent" : 100.0,
     "orders_count" : 4,
     "email_address" : "email_address",
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "province_code" : "GA",
       "postal_code" : "30308"
     },
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
     "last_name" : "last_name",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "opt_in_status" : true,
     "company" : "company",
     "id" : "id",
     "first_name" : "first_name"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter customerId: (path) The id for the customer of a store.

        - returns: RequestBuilder<EcommerceCustomer3>
        */
  open class func patchEcommerceStoresIdCustomersIdWithRequestBuilder(body: EcommerceCustomer5, storeId: String, customerId: String) -> RequestBuilder<EcommerceCustomer3> {
    var path = "/ecommerce/stores/{store_id}/customers/{customer_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let customerIdPreEscape = "\(customerId)"
    let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{customer_id}", with: customerIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCustomer3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update order

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdOrdersId(body: EcommerceOrder2, storeId: String, orderId: String, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdOrdersIdWithRequestBuilder(body: body, storeId: storeId, orderId: orderId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update order
        - PATCH /ecommerce/stores/{store_id}/orders/{order_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "discount_total" : 6.027456183070403,
     "fulfillment_status" : "fulfillment_status",
     "tax_total" : 1.4658129805029452,
     "shipping_total" : 5.962133916683182,
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
     "outreach" : {
       "published_time" : "2000-01-23T04:56:07.000+00:00",
       "name" : "Freddie's Jokes",
       "id" : "839488a60b",
       "type" : "regular"
     },
     "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "billing_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "tracking_code" : "prec",
     "currency_code" : "currency_code",
     "landing_site" : "http://www.example.com?source=abc",
     "order_url" : "order_url",
     "financial_status" : "financial_status",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "shipping_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "promos" : [ {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     }, {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     } ],
     "campaign_id" : "839488a60b",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     },
     "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.

        - returns: RequestBuilder<EcommerceOrder1>
        */
  open class func patchEcommerceStoresIdOrdersIdWithRequestBuilder(body: EcommerceOrder2, storeId: String, orderId: String) -> RequestBuilder<EcommerceOrder1> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceOrder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update order line item

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter lineId: (path) The id for the line item of an order.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdOrdersIdLinesId(body: EcommerceOrderLineItem4, storeId: String, orderId: String, lineId: String, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(body: body, storeId: storeId, orderId: orderId, lineId: lineId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update order line item
        - PATCH /ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "image_url" : "image_url",
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "discount" : 1.4658129805029452,
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.
        - parameter lineId: (path) The id for the line item of an order.

        - returns: RequestBuilder<EcommerceOrderLineItem3>
        */
  open class func patchEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(body: EcommerceOrderLineItem4, storeId: String, orderId: String, lineId: String) -> RequestBuilder<EcommerceOrderLineItem3> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let lineIdPreEscape = "\(lineId)"
    let lineIdPostEscape = lineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{line_id}", with: lineIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceOrderLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update product

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdProductsId(body: EcommerceProduct2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdProductsIdWithRequestBuilder(body: body, storeId: storeId, productId: productId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update product
        - PATCH /ecommerce/stores/{store_id}/products/{product_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "images" : [ {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     }, {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     } ],
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
     "image_url" : "image_url",
     "description" : "This is a cat hat.",
     "handle" : "cat-hat",
     "variants" : [ {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     }, {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     } ],
     "title" : "Cat Hat",
     "type" : "Accessories",
     "currency_code" : "currency_code",
     "url" : "url",
     "vendor" : "vendor",
     "published_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.

        - returns: RequestBuilder<EcommerceProduct1>
        */
  open class func patchEcommerceStoresIdProductsIdWithRequestBuilder(body: EcommerceProduct2, storeId: String, productId: String) -> RequestBuilder<EcommerceProduct1> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProduct1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update product image

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter imageId: (path) The id for the product image.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdProductsIdImagesId(body: EcommerceProductImage4, storeId: String, productId: String, imageId: String, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(body: body, storeId: storeId, productId: productId, imageId: imageId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update product image
        - PATCH /ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}

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
     "variant_ids" : [ "variant_ids", "variant_ids" ],
     "id" : "id",
     "url" : "url"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter imageId: (path) The id for the product image.

        - returns: RequestBuilder<EcommerceProductImage3>
        */
  open class func patchEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(body: EcommerceProductImage4, storeId: String, productId: String, imageId: String) -> RequestBuilder<EcommerceProductImage3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let imageIdPreEscape = "\(imageId)"
    let imageIdPostEscape = imageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{image_id}", with: imageIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProductImage3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update product variant

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter variantId: (path) The id for the product variant.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdProductsIdVariantsId(body: EcommerceProductVariant5, storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: body, storeId: storeId, productId: productId, variantId: variantId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update product variant
        - PATCH /ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "inventory_quantity" : 6,
     "visibility" : "visibility",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "backorders" : "backorders",
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
     "price" : 0.8008281904610115,
     "image_url" : "image_url",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id",
     "title" : "Cat Hat",
     "sku" : "sku",
     "url" : "url"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter variantId: (path) The id for the product variant.

        - returns: RequestBuilder<EcommerceProductVariant3>
        */
  open class func patchEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: EcommerceProductVariant5, storeId: String, productId: String, variantId: String) -> RequestBuilder<EcommerceProductVariant3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let variantIdPreEscape = "\(variantId)"
    let variantIdPostEscape = variantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{variant_id}", with: variantIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProductVariant3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update promo code

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter promoCodeId: (path) The id for the promo code of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdPromocodesId(body: EcommercePromoCode2, storeId: String, promoRuleId: String, promoCodeId: String, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdPromocodesIdWithRequestBuilder(body: body, storeId: storeId, promoRuleId: promoRuleId, promoCodeId: promoCodeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update promo code
        - PATCH /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "usage_count" : 0,
     "code" : "summersale",
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
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "redemption_url" : "A url that applies promo code directly at checkout or a url that points to sale page or store url",
     "enabled" : true
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter promoRuleId: (path) The id for the promo rule of a store.
        - parameter promoCodeId: (path) The id for the promo code of a store.

        - returns: RequestBuilder<EcommercePromoCode1>
        */
  open class func patchEcommerceStoresIdPromocodesIdWithRequestBuilder(body: EcommercePromoCode2, storeId: String, promoRuleId: String, promoCodeId: String) -> RequestBuilder<EcommercePromoCode1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let promoCodeIdPreEscape = "\(promoCodeId)"
    let promoCodeIdPostEscape = promoCodeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_code_id}", with: promoCodeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommercePromoCode1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Update promo rule

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func patchEcommerceStoresIdPromorulesId(body: EcommercePromoRule2, storeId: String, promoRuleId: String, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void)) {
    patchEcommerceStoresIdPromorulesIdWithRequestBuilder(body: body, storeId: storeId, promoRuleId: promoRuleId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Update promo rule
        - PATCH /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "starts_at" : "2000-01-23T04:56:07.000+00:00",
     "amount" : 0.5,
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
     "description" : "Save BIG during our summer sale!",
     "id" : "id",
     "ends_at" : "ends_at",
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "title" : "50% off Total Order",
     "type" : "fixed",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "enabled" : true,
     "target" : "per_item"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter promoRuleId: (path) The id for the promo rule of a store.

        - returns: RequestBuilder<EcommercePromoRule1>
        */
  open class func patchEcommerceStoresIdPromorulesIdWithRequestBuilder(body: EcommercePromoRule2, storeId: String, promoRuleId: String) -> RequestBuilder<EcommercePromoRule1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommercePromoRule1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PATCH", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add store

   - parameter body: (body)
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStores(body: EcommerceStore, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void)) {
    postEcommerceStoresWithRequestBuilder(body: body).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add store
        - POST /ecommerce/stores

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "is_syncing" : true,
     "automations" : {
       "abandoned_browse" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       },
       "abandoned_cart" : {
         "is_supported" : false,
         "id" : "355a72bfc3",
         "status" : "sending"
       }
     },
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "list_id" : "1a2df69511",
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
     "timezone" : "Eastern",
     "primary_locale" : "fr",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "list_is_active" : true,
     "platform" : "platform",
     "currency_code" : "USD",
     "money_format" : "$",
     "connected_site" : {
       "site_script" : {
         "fragment" : "<script id=\"mcjs\">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,\"script\",\"https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js\");</script>",
         "url" : "https://chimpstatic.com/mcjs-connected/js/users/{user-hash}/{site-hash}.js"
       },
       "site_foreign_id" : "a180c384d7db88b if created in-app, MC001 if created via API"
     },
     "email_address" : "freddie@mailchimp.com",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "phone" : "404-444-4444",
     "domain" : "example.com",
     "name" : "Freddie's Cat Hat Emporium",
     "id" : "example_store"
   }}]
        - parameter body: (body)

        - returns: RequestBuilder<EcommerceStore1>
        */
  open class func postEcommerceStoresWithRequestBuilder(body: EcommerceStore) -> RequestBuilder<EcommerceStore1> {
    let path = "/ecommerce/stores"
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceStore1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add cart

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdCarts(body: EcommerceCart, storeId: String, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdCartsWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add cart
        - POST /ecommerce/stores/{store_id}/carts

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "checkout_url" : "checkout_url",
     "tax_total" : 6.027456183070403,
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
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 1,
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
       "price" : 5.962133916683182,
       "product_id" : "product_id",
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "campaign_id" : "839488a60b",
     "currency_code" : "currency_code",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     }
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommerceCart1>
        */
  open class func postEcommerceStoresIdCartsWithRequestBuilder(body: EcommerceCart, storeId: String) -> RequestBuilder<EcommerceCart1> {
    var path = "/ecommerce/stores/{store_id}/carts"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCart1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add cart line item

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter cartId: (path) The id for the cart.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdCartsIdLines(body: EcommerceCartLineItem2, storeId: String, cartId: String, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdCartsIdLinesWithRequestBuilder(body: body, storeId: storeId, cartId: cartId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add cart line item
        - POST /ecommerce/stores/{store_id}/carts/{cart_id}/lines

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter cartId: (path) The id for the cart.

        - returns: RequestBuilder<EcommerceCartLineItem3>
        */
  open class func postEcommerceStoresIdCartsIdLinesWithRequestBuilder(body: EcommerceCartLineItem2, storeId: String, cartId: String) -> RequestBuilder<EcommerceCartLineItem3> {
    var path = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let cartIdPreEscape = "\(cartId)"
    let cartIdPostEscape = cartIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{cart_id}", with: cartIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCartLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add customer

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdCustomers(body: EcommerceCustomer2, storeId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdCustomersWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add customer
        - POST /ecommerce/stores/{store_id}/customers

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "total_spent" : 100.0,
     "orders_count" : 4,
     "email_address" : "email_address",
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "province_code" : "GA",
       "postal_code" : "30308"
     },
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
     "last_name" : "last_name",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "opt_in_status" : true,
     "company" : "company",
     "id" : "id",
     "first_name" : "first_name"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommerceCustomer3>
        */
  open class func postEcommerceStoresIdCustomersWithRequestBuilder(body: EcommerceCustomer2, storeId: String) -> RequestBuilder<EcommerceCustomer3> {
    var path = "/ecommerce/stores/{store_id}/customers"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCustomer3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add order

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdOrders(body: EcommerceOrder, storeId: String, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdOrdersWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add order
        - POST /ecommerce/stores/{store_id}/orders

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "store_id" : "store_id",
     "discount_total" : 6.027456183070403,
     "fulfillment_status" : "fulfillment_status",
     "tax_total" : 1.4658129805029452,
     "shipping_total" : 5.962133916683182,
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
     "outreach" : {
       "published_time" : "2000-01-23T04:56:07.000+00:00",
       "name" : "Freddie's Jokes",
       "id" : "839488a60b",
       "type" : "regular"
     },
     "processed_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "billing_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "tracking_code" : "prec",
     "currency_code" : "currency_code",
     "landing_site" : "http://www.example.com?source=abc",
     "order_url" : "order_url",
     "financial_status" : "financial_status",
     "order_total" : 0.8008281904610115,
     "id" : "id",
     "shipping_address" : {
       "country" : "United States",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "latitude" : 45.427408,
       "province_code" : "GA",
       "country_code" : "US",
       "province" : "Georgia",
       "phone" : "8675309",
       "name" : "Freddie Chimpenheimer",
       "company" : "company",
       "postal_code" : "30308",
       "longitude" : -75.68903
     },
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "lines" : [ {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     }, {
       "product_variant_title" : "product_variant_title",
       "quantity" : 2,
       "_links" : [ null, null ],
       "image_url" : "image_url",
       "price" : 7.061401241503109,
       "product_id" : "product_id",
       "discount" : 9.301444243932576,
       "id" : "id",
       "product_variant_id" : "product_variant_id",
       "product_title" : "product_title"
     } ],
     "promos" : [ {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     }, {
       "code" : "code",
       "amount_discounted" : 5.637376656633329,
       "type" : "fixed"
     } ],
     "campaign_id" : "839488a60b",
     "customer" : {
       "total_spent" : 100.0,
       "orders_count" : 4,
       "email_address" : "email_address",
       "address" : {
         "country" : "United States",
         "country_code" : "US",
         "province" : "Georgia",
         "address2" : "Suite 5000",
         "city" : "Atlanta",
         "address1" : "675 Ponce de Leon Ave NE",
         "province_code" : "GA",
         "postal_code" : "30308"
       },
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
       "last_name" : "last_name",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "opt_in_status" : true,
       "company" : "company",
       "id" : "id",
       "first_name" : "first_name"
     },
     "cancelled_at_foreign" : "2000-01-23T04:56:07.000+00:00"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommerceOrder1>
        */
  open class func postEcommerceStoresIdOrdersWithRequestBuilder(body: EcommerceOrder, storeId: String) -> RequestBuilder<EcommerceOrder1> {
    var path = "/ecommerce/stores/{store_id}/orders"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceOrder1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add order line item

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter orderId: (path) The id for the order in a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdOrdersIdLines(body: EcommerceOrderLineItem2, storeId: String, orderId: String, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdOrdersIdLinesWithRequestBuilder(body: body, storeId: storeId, orderId: orderId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add order line item
        - POST /ecommerce/stores/{store_id}/orders/{order_id}/lines

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "product_variant_title" : "product_variant_title",
     "quantity" : 0,
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
     "image_url" : "image_url",
     "price" : 6.027456183070403,
     "product_id" : "product_id",
     "discount" : 1.4658129805029452,
     "id" : "id",
     "product_variant_id" : "product_variant_id",
     "product_title" : "product_title"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter orderId: (path) The id for the order in a store.

        - returns: RequestBuilder<EcommerceOrderLineItem3>
        */
  open class func postEcommerceStoresIdOrdersIdLinesWithRequestBuilder(body: EcommerceOrderLineItem2, storeId: String, orderId: String) -> RequestBuilder<EcommerceOrderLineItem3> {
    var path = "/ecommerce/stores/{store_id}/orders/{order_id}/lines"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let orderIdPreEscape = "\(orderId)"
    let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceOrderLineItem3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add product

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdProducts(body: EcommerceProduct, storeId: String, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdProductsWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add product
        - POST /ecommerce/stores/{store_id}/products

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "images" : [ {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     }, {
       "_links" : [ null, null ],
       "variant_ids" : [ "variant_ids", "variant_ids" ],
       "id" : "id",
       "url" : "url"
     } ],
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
     "image_url" : "image_url",
     "description" : "This is a cat hat.",
     "handle" : "cat-hat",
     "variants" : [ {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     }, {
       "inventory_quantity" : 6,
       "visibility" : "visibility",
       "updated_at" : "2000-01-23T04:56:07.000+00:00",
       "backorders" : "backorders",
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
       "price" : 0.8008281904610115,
       "image_url" : "image_url",
       "created_at" : "2000-01-23T04:56:07.000+00:00",
       "id" : "id",
       "title" : "Cat Hat",
       "sku" : "sku",
       "url" : "url"
     } ],
     "title" : "Cat Hat",
     "type" : "Accessories",
     "currency_code" : "currency_code",
     "url" : "url",
     "vendor" : "vendor",
     "published_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommerceProduct1>
        */
  open class func postEcommerceStoresIdProductsWithRequestBuilder(body: EcommerceProduct, storeId: String) -> RequestBuilder<EcommerceProduct1> {
    var path = "/ecommerce/stores/{store_id}/products"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProduct1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add product image

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdProductsIdImages(body: EcommerceProductImage2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdProductsIdImagesWithRequestBuilder(body: body, storeId: storeId, productId: productId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add product image
        - POST /ecommerce/stores/{store_id}/products/{product_id}/images

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
     "variant_ids" : [ "variant_ids", "variant_ids" ],
     "id" : "id",
     "url" : "url"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.

        - returns: RequestBuilder<EcommerceProductImage3>
        */
  open class func postEcommerceStoresIdProductsIdImagesWithRequestBuilder(body: EcommerceProductImage2, storeId: String, productId: String) -> RequestBuilder<EcommerceProductImage3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/images"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProductImage3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add product variant

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdProductsIdVariants(body: EcommerceProductVariant2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdProductsIdVariantsWithRequestBuilder(body: body, storeId: storeId, productId: productId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add product variant
        - POST /ecommerce/stores/{store_id}/products/{product_id}/variants

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "inventory_quantity" : 6,
     "visibility" : "visibility",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "backorders" : "backorders",
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
     "price" : 0.8008281904610115,
     "image_url" : "image_url",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id",
     "title" : "Cat Hat",
     "sku" : "sku",
     "url" : "url"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.

        - returns: RequestBuilder<EcommerceProductVariant3>
        */
  open class func postEcommerceStoresIdProductsIdVariantsWithRequestBuilder(body: EcommerceProductVariant2, storeId: String, productId: String) -> RequestBuilder<EcommerceProductVariant3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProductVariant3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add promo code

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter promoRuleId: (path) The id for the promo rule of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdPromocodes(body: EcommercePromoCode, storeId: String, promoRuleId: String, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdPromocodesWithRequestBuilder(body: body, storeId: storeId, promoRuleId: promoRuleId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add promo code
        - POST /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "usage_count" : 0,
     "code" : "summersale",
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
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "redemption_url" : "A url that applies promo code directly at checkout or a url that points to sale page or store url",
     "enabled" : true
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter promoRuleId: (path) The id for the promo rule of a store.

        - returns: RequestBuilder<EcommercePromoCode1>
        */
  open class func postEcommerceStoresIdPromocodesWithRequestBuilder(body: EcommercePromoCode, storeId: String, promoRuleId: String) -> RequestBuilder<EcommercePromoCode1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let promoRuleIdPreEscape = "\(promoRuleId)"
    let promoRuleIdPostEscape = promoRuleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{promo_rule_id}", with: promoRuleIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommercePromoCode1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add promo rule

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func postEcommerceStoresIdPromorules(body: EcommercePromoRule, storeId: String, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void)) {
    postEcommerceStoresIdPromorulesWithRequestBuilder(body: body, storeId: storeId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add promo rule
        - POST /ecommerce/stores/{store_id}/promo-rules

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "starts_at" : "2000-01-23T04:56:07.000+00:00",
     "amount" : 0.5,
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
     "description" : "Save BIG during our summer sale!",
     "id" : "id",
     "ends_at" : "ends_at",
     "created_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "title" : "50% off Total Order",
     "type" : "fixed",
     "updated_at_foreign" : "2000-01-23T04:56:07.000+00:00",
     "enabled" : true,
     "target" : "per_item"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.

        - returns: RequestBuilder<EcommercePromoRule1>
        */
  open class func postEcommerceStoresIdPromorulesWithRequestBuilder(body: EcommercePromoRule, storeId: String) -> RequestBuilder<EcommercePromoRule1> {
    var path = "/ecommerce/stores/{store_id}/promo-rules"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommercePromoRule1>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "POST", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add or update customer

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter customerId: (path) The id for the customer of a store.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func putEcommerceStoresIdCustomersId(body: EcommerceCustomer4, storeId: String, customerId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void)) {
    putEcommerceStoresIdCustomersIdWithRequestBuilder(body: body, storeId: storeId, customerId: customerId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add or update customer
        - PUT /ecommerce/stores/{store_id}/customers/{customer_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "total_spent" : 100.0,
     "orders_count" : 4,
     "email_address" : "email_address",
     "address" : {
       "country" : "United States",
       "country_code" : "US",
       "province" : "Georgia",
       "address2" : "Suite 5000",
       "city" : "Atlanta",
       "address1" : "675 Ponce de Leon Ave NE",
       "province_code" : "GA",
       "postal_code" : "30308"
     },
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
     "last_name" : "last_name",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "opt_in_status" : true,
     "company" : "company",
     "id" : "id",
     "first_name" : "first_name"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter customerId: (path) The id for the customer of a store.

        - returns: RequestBuilder<EcommerceCustomer3>
        */
  open class func putEcommerceStoresIdCustomersIdWithRequestBuilder(body: EcommerceCustomer4, storeId: String, customerId: String) -> RequestBuilder<EcommerceCustomer3> {
    var path = "/ecommerce/stores/{store_id}/customers/{customer_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let customerIdPreEscape = "\(customerId)"
    let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{customer_id}", with: customerIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceCustomer3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PUT", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }

  /**
   Add or update product variant

   - parameter body: (body)
   - parameter storeId: (path) The store id.
   - parameter productId: (path) The id for the product of a store.
   - parameter variantId: (path) The id for the product variant.
   - parameter completion: completion handler to receive the data and the error objects
   */
  open class func putEcommerceStoresIdProductsIdVariantsId(body: EcommerceProductVariant4, storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void)) {
    putEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: body, storeId: storeId, productId: productId, variantId: variantId).execute { response, error -> Void in
      completion(response?.body, error)
    }
  }

  /**
        Add or update product variant
        - PUT /ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}

        - BASIC:
          - type: http
          - name: basicAuth
        - examples: [{contentType=application/json, example={
     "inventory_quantity" : 6,
     "visibility" : "visibility",
     "updated_at" : "2000-01-23T04:56:07.000+00:00",
     "backorders" : "backorders",
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
     "price" : 0.8008281904610115,
     "image_url" : "image_url",
     "created_at" : "2000-01-23T04:56:07.000+00:00",
     "id" : "id",
     "title" : "Cat Hat",
     "sku" : "sku",
     "url" : "url"
   }}]
        - parameter body: (body)
        - parameter storeId: (path) The store id.
        - parameter productId: (path) The id for the product of a store.
        - parameter variantId: (path) The id for the product variant.

        - returns: RequestBuilder<EcommerceProductVariant3>
        */
  open class func putEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: EcommerceProductVariant4, storeId: String, productId: String, variantId: String) -> RequestBuilder<EcommerceProductVariant3> {
    var path = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"
    let storeIdPreEscape = "\(storeId)"
    let storeIdPostEscape = storeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{store_id}", with: storeIdPostEscape, options: .literal, range: nil)
    let productIdPreEscape = "\(productId)"
    let productIdPostEscape = productIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{product_id}", with: productIdPostEscape, options: .literal, range: nil)
    let variantIdPreEscape = "\(variantId)"
    let variantIdPostEscape = variantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    path = path.replacingOccurrences(of: "{variant_id}", with: variantIdPostEscape, options: .literal, range: nil)
    let URLString = SwaggerClientAPI.basePath + path
    let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
    let url = URLComponents(string: URLString)

    let requestBuilder: RequestBuilder<EcommerceProductVariant3>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

    return requestBuilder.init(method: "PUT", URLString: url?.string ?? URLString, parameters: parameters, isBody: true)
  }
}
