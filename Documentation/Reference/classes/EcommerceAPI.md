**CLASS**

# `EcommerceAPI`

```swift
open class EcommerceAPI
```

## Methods
### `deleteEcommerceStoresId(storeId:completion:)`

```swift
open class func deleteEcommerceStoresId(storeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete store

- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdWithRequestBuilder(storeId:)`

```swift
open class func deleteEcommerceStoresIdWithRequestBuilder(storeId: String) -> RequestBuilder<Void>
```

Delete store
- DELETE /ecommerce/stores/{store_id}

- BASIC:
  - type: http
  - name: basicAuth
- examples: [{contentType=application/json, example={ }}]
- parameter storeId: (path) The store id.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |

### `deleteEcommerceStoresIdCartsId(storeId:cartId:completion:)`

```swift
open class func deleteEcommerceStoresIdCartsId(storeId: String, cartId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete cart

- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdCartsIdWithRequestBuilder(storeId:cartId:)`

```swift
open class func deleteEcommerceStoresIdCartsIdWithRequestBuilder(storeId: String, cartId: String) -> RequestBuilder<Void>
```

Delete cart
- DELETE /ecommerce/stores/{store_id}/carts/{cart_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |

### `deleteEcommerceStoresIdCartsLinesId(storeId:cartId:lineId:completion:)`

```swift
open class func deleteEcommerceStoresIdCartsLinesId(storeId: String, cartId: String, lineId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete cart line item

- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter lineId: (path) The id for the line item of a cart.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdCartsLinesIdWithRequestBuilder(storeId:cartId:lineId:)`

```swift
open class func deleteEcommerceStoresIdCartsLinesIdWithRequestBuilder(storeId: String, cartId: String, lineId: String) -> RequestBuilder<Void>
```

Delete cart line item
- DELETE /ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter lineId: (path) The id for the line item of a cart.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |

### `deleteEcommerceStoresIdCustomersId(storeId:customerId:completion:)`

```swift
open class func deleteEcommerceStoresIdCustomersId(storeId: String, customerId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete customer

- parameter storeId: (path) The store id.
- parameter customerId: (path) The id for the customer of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdCustomersIdWithRequestBuilder(storeId:customerId:)`

```swift
open class func deleteEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: String, customerId: String) -> RequestBuilder<Void>
```

Delete customer
- DELETE /ecommerce/stores/{store_id}/customers/{customer_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter customerId: (path) The id for the customer of a store.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |

### `deleteEcommerceStoresIdOrdersId(storeId:orderId:completion:)`

```swift
open class func deleteEcommerceStoresIdOrdersId(storeId: String, orderId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete order

- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdOrdersIdWithRequestBuilder(storeId:orderId:)`

```swift
open class func deleteEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: String, orderId: String) -> RequestBuilder<Void>
```

Delete order
- DELETE /ecommerce/stores/{store_id}/orders/{order_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |

### `deleteEcommerceStoresIdOrdersIdLinesId(storeId:orderId:lineId:completion:)`

```swift
open class func deleteEcommerceStoresIdOrdersIdLinesId(storeId: String, orderId: String, lineId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete order line item

- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter lineId: (path) The id for the line item of an order.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId:orderId:lineId:)`

```swift
open class func deleteEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: String, orderId: String, lineId: String) -> RequestBuilder<Void>
```

Delete order line item
- DELETE /ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter lineId: (path) The id for the line item of an order.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |

### `deleteEcommerceStoresIdProductsId(storeId:productId:completion:)`

```swift
open class func deleteEcommerceStoresIdProductsId(storeId: String, productId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete product

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdProductsIdWithRequestBuilder(storeId:productId:)`

```swift
open class func deleteEcommerceStoresIdProductsIdWithRequestBuilder(storeId: String, productId: String) -> RequestBuilder<Void>
```

Delete product
- DELETE /ecommerce/stores/{store_id}/products/{product_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |

### `deleteEcommerceStoresIdProductsIdImagesId(storeId:productId:imageId:completion:)`

```swift
open class func deleteEcommerceStoresIdProductsIdImagesId(storeId: String, productId: String, imageId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete product image

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter imageId: (path) The id for the product image.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId:productId:imageId:)`

```swift
open class func deleteEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: String, productId: String, imageId: String) -> RequestBuilder<Void>
```

Delete product image
- DELETE /ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter imageId: (path) The id for the product image.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |

### `deleteEcommerceStoresIdProductsIdVariantsId(storeId:productId:variantId:completion:)`

```swift
open class func deleteEcommerceStoresIdProductsIdVariantsId(storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete product variant

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter variantId: (path) The id for the product variant.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId:productId:variantId:)`

```swift
open class func deleteEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: String, productId: String, variantId: String) -> RequestBuilder<Void>
```

Delete product variant
- DELETE /ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter variantId: (path) The id for the product variant.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |

### `deleteEcommerceStoresIdPromocodesId(storeId:promoRuleId:promoCodeId:completion:)`

```swift
open class func deleteEcommerceStoresIdPromocodesId(storeId: String, promoRuleId: String, promoCodeId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete promo code

- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter promoCodeId: (path) The id for the promo code of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId:promoRuleId:promoCodeId:)`

```swift
open class func deleteEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: String, promoRuleId: String, promoCodeId: String) -> RequestBuilder<Void>
```

Delete promo code
- DELETE /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter promoCodeId: (path) The id for the promo code of a store.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |

### `deleteEcommerceStoresIdPromorulesId(storeId:promoRuleId:completion:)`

```swift
open class func deleteEcommerceStoresIdPromorulesId(storeId: String, promoRuleId: String, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void))
```

Delete promo rule

- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| completion | completion handler to receive the data and the error objects |

### `deleteEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId:promoRuleId:)`

```swift
open class func deleteEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: String, promoRuleId: String) -> RequestBuilder<Void>
```

Delete promo rule
- DELETE /ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}

- BASIC:
  - type: http
  - name: basicAuth
- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.

- returns: RequestBuilder<Void>

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |

### `getEcommerceOrders(fields:excludeFields:count:offset:campaignId:outreachId:customerId:hasOutreach:completion:)`

```swift
open class func getEcommerceOrders(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, completion: @escaping ((_ data: Orders?, _ error: Error?) -> Void))
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| campaignId | (query) Restrict results to orders with a specific `campaign_id` value. (optional) |
| outreachId | (query) Restrict results to orders with a specific `outreach_id` value. (optional) |
| customerId | (query) Restrict results to orders made by a specific customer. (optional) |
| hasOutreach | (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceOrdersWithRequestBuilder(fields:excludeFields:count:offset:campaignId:outreachId:customerId:hasOutreach:)`

```swift
open class func getEcommerceOrdersWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, campaignId: String? = nil, outreachId: String? = nil, customerId: String? = nil, hasOutreach: Bool? = nil) -> RequestBuilder<Orders>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| campaignId | (query) Restrict results to orders with a specific `campaign_id` value. (optional) |
| outreachId | (query) Restrict results to orders with a specific `outreach_id` value. (optional) |
| customerId | (query) Restrict results to orders made by a specific customer. (optional) |
| hasOutreach | (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional) |

### `getEcommerceStores(fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStores(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceStores?, _ error: Error?) -> Void))
```

List stores

- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresWithRequestBuilder(fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresWithRequestBuilder(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceStores>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresId(storeId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresId(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void))
```

Get store info

- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdWithRequestBuilder(storeId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceStore1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdCarts(storeId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdCarts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Carts?, _ error: Error?) -> Void))
```

List carts

- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCartsWithRequestBuilder(storeId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdCartsWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Carts>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdCartsId(storeId:cartId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdCartsId(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void))
```

Get cart info

- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCartsIdWithRequestBuilder(storeId:cartId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdCartsIdWithRequestBuilder(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCart1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdCartsIdLines(storeId:cartId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdCartsIdLines(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: CartLines?, _ error: Error?) -> Void))
```

List cart line items

- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCartsIdLinesWithRequestBuilder(storeId:cartId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdCartsIdLinesWithRequestBuilder(storeId: String, cartId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<CartLines>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdCartsIdLinesId(storeId:cartId:lineId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdCartsIdLinesId(storeId: String, cartId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void))
```

Get cart line item

- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter lineId: (path) The id for the line item of a cart.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(storeId:cartId:lineId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(storeId: String, cartId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCartLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdCustomers(storeId:fields:excludeFields:count:offset:emailAddress:completion:)`

```swift
open class func getEcommerceStoresIdCustomers(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailAddress: String? = nil, completion: @escaping ((_ data: Customers?, _ error: Error?) -> Void))
```

List customers

- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter emailAddress: (query) Restrict the response to customers with the email address. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| emailAddress | (query) Restrict the response to customers with the email address. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCustomersWithRequestBuilder(storeId:fields:excludeFields:count:offset:emailAddress:)`

```swift
open class func getEcommerceStoresIdCustomersWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, emailAddress: String? = nil) -> RequestBuilder<Customers>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| emailAddress | (query) Restrict the response to customers with the email address. (optional) |

### `getEcommerceStoresIdCustomersId(storeId:customerId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdCustomersId(storeId: String, customerId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void))
```

Get customer info

- parameter storeId: (path) The store id.
- parameter customerId: (path) The id for the customer of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdCustomersIdWithRequestBuilder(storeId:customerId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdCustomersIdWithRequestBuilder(storeId: String, customerId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceCustomer3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdOrders(storeId:fields:excludeFields:count:offset:customerId:hasOutreach:campaignId:outreachId:completion:)`

```swift
open class func getEcommerceStoresIdOrders(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil, completion: @escaping ((_ data: Orders1?, _ error: Error?) -> Void))
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| customerId | (query) Restrict results to orders made by a specific customer. (optional) |
| hasOutreach | (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional) |
| campaignId | (query) Restrict results to orders with a specific `campaign_id` value. (optional) |
| outreachId | (query) Restrict results to orders with a specific `outreach_id` value. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdOrdersWithRequestBuilder(storeId:fields:excludeFields:count:offset:customerId:hasOutreach:campaignId:outreachId:)`

```swift
open class func getEcommerceStoresIdOrdersWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil) -> RequestBuilder<Orders1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| customerId | (query) Restrict results to orders made by a specific customer. (optional) |
| hasOutreach | (query) Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. (optional) |
| campaignId | (query) Restrict results to orders with a specific `campaign_id` value. (optional) |
| outreachId | (query) Restrict results to orders with a specific `outreach_id` value. (optional) |

### `getEcommerceStoresIdOrdersId(storeId:orderId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdOrdersId(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void))
```

Get order info

- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdOrdersIdWithRequestBuilder(storeId:orderId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdOrdersIdWithRequestBuilder(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceOrder1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdOrdersIdLines(storeId:orderId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdOrdersIdLines(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: OrderLines?, _ error: Error?) -> Void))
```

List order line items

- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdOrdersIdLinesWithRequestBuilder(storeId:orderId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdOrdersIdLinesWithRequestBuilder(storeId: String, orderId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<OrderLines>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdOrdersIdLinesId(storeId:orderId:lineId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdOrdersIdLinesId(storeId: String, orderId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void))
```

Get order line item

- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter lineId: (path) The id for the line item of an order.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId:orderId:lineId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(storeId: String, orderId: String, lineId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceOrderLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdProducts(storeId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdProducts(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: Products?, _ error: Error?) -> Void))
```

List product

- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsWithRequestBuilder(storeId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdProductsWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<Products>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdProductsId(storeId:productId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdProductsId(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void))
```

Get product info

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsIdWithRequestBuilder(storeId:productId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdProductsIdWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProduct1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdProductsIdImages(storeId:productId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdProductsIdImages(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceProductImages?, _ error: Error?) -> Void))
```

List product images

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsIdImagesWithRequestBuilder(storeId:productId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdProductsIdImagesWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceProductImages>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdProductsIdImagesId(storeId:productId:imageId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdProductsIdImagesId(storeId: String, productId: String, imageId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void))
```

Get product image info

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter imageId: (path) The id for the product image.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId:productId:imageId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(storeId: String, productId: String, imageId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProductImage3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdProductsIdVariants(storeId:productId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdProductsIdVariants(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: EcommerceProductVariants?, _ error: Error?) -> Void))
```

List product variants

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsIdVariantsWithRequestBuilder(storeId:productId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdProductsIdVariantsWithRequestBuilder(storeId: String, productId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<EcommerceProductVariants>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdProductsIdVariantsId(storeId:productId:variantId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdProductsIdVariantsId(storeId: String, productId: String, variantId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void))
```

Get product variant info

- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter variantId: (path) The id for the product variant.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId:productId:variantId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(storeId: String, productId: String, variantId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommerceProductVariant3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdPromocodes(promoRuleId:storeId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdPromocodes(promoRuleId: String, storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: PromoCodes?, _ error: Error?) -> Void))
```

List promo codes

- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| promoRuleId | (path) The id for the promo rule of a store. |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdPromocodesWithRequestBuilder(promoRuleId:storeId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdPromocodesWithRequestBuilder(promoRuleId: String, storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<PromoCodes>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| promoRuleId | (path) The id for the promo rule of a store. |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdPromocodesId(storeId:promoRuleId:promoCodeId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdPromocodesId(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void))
```

Get promo code

- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter promoCodeId: (path) The id for the promo code of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId:promoRuleId:promoCodeId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdPromocodesIdWithRequestBuilder(storeId: String, promoRuleId: String, promoCodeId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommercePromoCode1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `getEcommerceStoresIdPromorules(storeId:fields:excludeFields:count:offset:completion:)`

```swift
open class func getEcommerceStoresIdPromorules(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, completion: @escaping ((_ data: PromoRules?, _ error: Error?) -> Void))
```

List promo rules

- parameter storeId: (path) The store id.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter count: (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10)
- parameter offset: (query) Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. (optional, default to 0)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdPromorulesWithRequestBuilder(storeId:fields:excludeFields:count:offset:)`

```swift
open class func getEcommerceStoresIdPromorulesWithRequestBuilder(storeId: String, fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil) -> RequestBuilder<PromoRules>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| count | (query) The number of records to return. Default value is 10. Maximum value is 1000 (optional, default to 10) |
| offset | (query) Used for , this it the number of records from a collection to skip. Default value is 0. (optional, default to 0) |

### `getEcommerceStoresIdPromorulesId(storeId:promoRuleId:fields:excludeFields:completion:)`

```swift
open class func getEcommerceStoresIdPromorulesId(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void))
```

Get promo rule

- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter fields: (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional)
- parameter excludeFields: (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |
| completion | completion handler to receive the data and the error objects |

### `getEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId:promoRuleId:fields:excludeFields:)`

```swift
open class func getEcommerceStoresIdPromorulesIdWithRequestBuilder(storeId: String, promoRuleId: String, fields: [String]? = nil, excludeFields: [String]? = nil) -> RequestBuilder<EcommercePromoRule1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| fields | (query) A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. (optional) |
| excludeFields | (query) A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. (optional) |

### `patchEcommerceStoresId(body:storeId:completion:)`

```swift
open class func patchEcommerceStoresId(body: EcommerceStore2, storeId: String, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void))
```

Update store

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdWithRequestBuilder(body:storeId:)`

```swift
open class func patchEcommerceStoresIdWithRequestBuilder(body: EcommerceStore2, storeId: String) -> RequestBuilder<EcommerceStore1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `patchEcommerceStoresIdCartsId(body:storeId:cartId:completion:)`

```swift
open class func patchEcommerceStoresIdCartsId(body: EcommerceCart2, storeId: String, cartId: String, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void))
```

Update cart

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdCartsIdWithRequestBuilder(body:storeId:cartId:)`

```swift
open class func patchEcommerceStoresIdCartsIdWithRequestBuilder(body: EcommerceCart2, storeId: String, cartId: String) -> RequestBuilder<EcommerceCart1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |

### `patchEcommerceStoresIdCartsIdLinesId(body:storeId:cartId:lineId:completion:)`

```swift
open class func patchEcommerceStoresIdCartsIdLinesId(body: EcommerceCartLineItem4, storeId: String, cartId: String, lineId: String, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void))
```

Update cart line item

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter lineId: (path) The id for the line item of a cart.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(body:storeId:cartId:lineId:)`

```swift
open class func patchEcommerceStoresIdCartsIdLinesIdWithRequestBuilder(body: EcommerceCartLineItem4, storeId: String, cartId: String, lineId: String) -> RequestBuilder<EcommerceCartLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| lineId | (path) The id for the line item of a cart. |

### `patchEcommerceStoresIdCustomersId(body:storeId:customerId:completion:)`

```swift
open class func patchEcommerceStoresIdCustomersId(body: EcommerceCustomer5, storeId: String, customerId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void))
```

Update customer

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter customerId: (path) The id for the customer of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdCustomersIdWithRequestBuilder(body:storeId:customerId:)`

```swift
open class func patchEcommerceStoresIdCustomersIdWithRequestBuilder(body: EcommerceCustomer5, storeId: String, customerId: String) -> RequestBuilder<EcommerceCustomer3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |

### `patchEcommerceStoresIdOrdersId(body:storeId:orderId:completion:)`

```swift
open class func patchEcommerceStoresIdOrdersId(body: EcommerceOrder2, storeId: String, orderId: String, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void))
```

Update order

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdOrdersIdWithRequestBuilder(body:storeId:orderId:)`

```swift
open class func patchEcommerceStoresIdOrdersIdWithRequestBuilder(body: EcommerceOrder2, storeId: String, orderId: String) -> RequestBuilder<EcommerceOrder1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |

### `patchEcommerceStoresIdOrdersIdLinesId(body:storeId:orderId:lineId:completion:)`

```swift
open class func patchEcommerceStoresIdOrdersIdLinesId(body: EcommerceOrderLineItem4, storeId: String, orderId: String, lineId: String, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void))
```

Update order line item

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter lineId: (path) The id for the line item of an order.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(body:storeId:orderId:lineId:)`

```swift
open class func patchEcommerceStoresIdOrdersIdLinesIdWithRequestBuilder(body: EcommerceOrderLineItem4, storeId: String, orderId: String, lineId: String) -> RequestBuilder<EcommerceOrderLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| lineId | (path) The id for the line item of an order. |

### `patchEcommerceStoresIdProductsId(body:storeId:productId:completion:)`

```swift
open class func patchEcommerceStoresIdProductsId(body: EcommerceProduct2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void))
```

Update product

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdProductsIdWithRequestBuilder(body:storeId:productId:)`

```swift
open class func patchEcommerceStoresIdProductsIdWithRequestBuilder(body: EcommerceProduct2, storeId: String, productId: String) -> RequestBuilder<EcommerceProduct1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |

### `patchEcommerceStoresIdProductsIdImagesId(body:storeId:productId:imageId:completion:)`

```swift
open class func patchEcommerceStoresIdProductsIdImagesId(body: EcommerceProductImage4, storeId: String, productId: String, imageId: String, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void))
```

Update product image

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter imageId: (path) The id for the product image.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(body:storeId:productId:imageId:)`

```swift
open class func patchEcommerceStoresIdProductsIdImagesIdWithRequestBuilder(body: EcommerceProductImage4, storeId: String, productId: String, imageId: String) -> RequestBuilder<EcommerceProductImage3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| imageId | (path) The id for the product image. |

### `patchEcommerceStoresIdProductsIdVariantsId(body:storeId:productId:variantId:completion:)`

```swift
open class func patchEcommerceStoresIdProductsIdVariantsId(body: EcommerceProductVariant5, storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void))
```

Update product variant

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter variantId: (path) The id for the product variant.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body:storeId:productId:variantId:)`

```swift
open class func patchEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: EcommerceProductVariant5, storeId: String, productId: String, variantId: String) -> RequestBuilder<EcommerceProductVariant3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |

### `patchEcommerceStoresIdPromocodesId(body:storeId:promoRuleId:promoCodeId:completion:)`

```swift
open class func patchEcommerceStoresIdPromocodesId(body: EcommercePromoCode2, storeId: String, promoRuleId: String, promoCodeId: String, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void))
```

Update promo code

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter promoCodeId: (path) The id for the promo code of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdPromocodesIdWithRequestBuilder(body:storeId:promoRuleId:promoCodeId:)`

```swift
open class func patchEcommerceStoresIdPromocodesIdWithRequestBuilder(body: EcommercePromoCode2, storeId: String, promoRuleId: String, promoCodeId: String) -> RequestBuilder<EcommercePromoCode1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| promoCodeId | (path) The id for the promo code of a store. |

### `patchEcommerceStoresIdPromorulesId(body:storeId:promoRuleId:completion:)`

```swift
open class func patchEcommerceStoresIdPromorulesId(body: EcommercePromoRule2, storeId: String, promoRuleId: String, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void))
```

Update promo rule

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| completion | completion handler to receive the data and the error objects |

### `patchEcommerceStoresIdPromorulesIdWithRequestBuilder(body:storeId:promoRuleId:)`

```swift
open class func patchEcommerceStoresIdPromorulesIdWithRequestBuilder(body: EcommercePromoRule2, storeId: String, promoRuleId: String) -> RequestBuilder<EcommercePromoRule1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |

### `postEcommerceStores(body:completion:)`

```swift
open class func postEcommerceStores(body: EcommerceStore, completion: @escaping ((_ data: EcommerceStore1?, _ error: Error?) -> Void))
```

Add store

- parameter body: (body)
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresWithRequestBuilder(body:)`

```swift
open class func postEcommerceStoresWithRequestBuilder(body: EcommerceStore) -> RequestBuilder<EcommerceStore1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |

### `postEcommerceStoresIdCarts(body:storeId:completion:)`

```swift
open class func postEcommerceStoresIdCarts(body: EcommerceCart, storeId: String, completion: @escaping ((_ data: EcommerceCart1?, _ error: Error?) -> Void))
```

Add cart

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdCartsWithRequestBuilder(body:storeId:)`

```swift
open class func postEcommerceStoresIdCartsWithRequestBuilder(body: EcommerceCart, storeId: String) -> RequestBuilder<EcommerceCart1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `postEcommerceStoresIdCartsIdLines(body:storeId:cartId:completion:)`

```swift
open class func postEcommerceStoresIdCartsIdLines(body: EcommerceCartLineItem2, storeId: String, cartId: String, completion: @escaping ((_ data: EcommerceCartLineItem3?, _ error: Error?) -> Void))
```

Add cart line item

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter cartId: (path) The id for the cart.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdCartsIdLinesWithRequestBuilder(body:storeId:cartId:)`

```swift
open class func postEcommerceStoresIdCartsIdLinesWithRequestBuilder(body: EcommerceCartLineItem2, storeId: String, cartId: String) -> RequestBuilder<EcommerceCartLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| cartId | (path) The id for the cart. |

### `postEcommerceStoresIdCustomers(body:storeId:completion:)`

```swift
open class func postEcommerceStoresIdCustomers(body: EcommerceCustomer2, storeId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void))
```

Add customer

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdCustomersWithRequestBuilder(body:storeId:)`

```swift
open class func postEcommerceStoresIdCustomersWithRequestBuilder(body: EcommerceCustomer2, storeId: String) -> RequestBuilder<EcommerceCustomer3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `postEcommerceStoresIdOrders(body:storeId:completion:)`

```swift
open class func postEcommerceStoresIdOrders(body: EcommerceOrder, storeId: String, completion: @escaping ((_ data: EcommerceOrder1?, _ error: Error?) -> Void))
```

Add order

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdOrdersWithRequestBuilder(body:storeId:)`

```swift
open class func postEcommerceStoresIdOrdersWithRequestBuilder(body: EcommerceOrder, storeId: String) -> RequestBuilder<EcommerceOrder1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `postEcommerceStoresIdOrdersIdLines(body:storeId:orderId:completion:)`

```swift
open class func postEcommerceStoresIdOrdersIdLines(body: EcommerceOrderLineItem2, storeId: String, orderId: String, completion: @escaping ((_ data: EcommerceOrderLineItem3?, _ error: Error?) -> Void))
```

Add order line item

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter orderId: (path) The id for the order in a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdOrdersIdLinesWithRequestBuilder(body:storeId:orderId:)`

```swift
open class func postEcommerceStoresIdOrdersIdLinesWithRequestBuilder(body: EcommerceOrderLineItem2, storeId: String, orderId: String) -> RequestBuilder<EcommerceOrderLineItem3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| orderId | (path) The id for the order in a store. |

### `postEcommerceStoresIdProducts(body:storeId:completion:)`

```swift
open class func postEcommerceStoresIdProducts(body: EcommerceProduct, storeId: String, completion: @escaping ((_ data: EcommerceProduct1?, _ error: Error?) -> Void))
```

Add product

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdProductsWithRequestBuilder(body:storeId:)`

```swift
open class func postEcommerceStoresIdProductsWithRequestBuilder(body: EcommerceProduct, storeId: String) -> RequestBuilder<EcommerceProduct1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `postEcommerceStoresIdProductsIdImages(body:storeId:productId:completion:)`

```swift
open class func postEcommerceStoresIdProductsIdImages(body: EcommerceProductImage2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProductImage3?, _ error: Error?) -> Void))
```

Add product image

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdProductsIdImagesWithRequestBuilder(body:storeId:productId:)`

```swift
open class func postEcommerceStoresIdProductsIdImagesWithRequestBuilder(body: EcommerceProductImage2, storeId: String, productId: String) -> RequestBuilder<EcommerceProductImage3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |

### `postEcommerceStoresIdProductsIdVariants(body:storeId:productId:completion:)`

```swift
open class func postEcommerceStoresIdProductsIdVariants(body: EcommerceProductVariant2, storeId: String, productId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void))
```

Add product variant

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdProductsIdVariantsWithRequestBuilder(body:storeId:productId:)`

```swift
open class func postEcommerceStoresIdProductsIdVariantsWithRequestBuilder(body: EcommerceProductVariant2, storeId: String, productId: String) -> RequestBuilder<EcommerceProductVariant3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |

### `postEcommerceStoresIdPromocodes(body:storeId:promoRuleId:completion:)`

```swift
open class func postEcommerceStoresIdPromocodes(body: EcommercePromoCode, storeId: String, promoRuleId: String, completion: @escaping ((_ data: EcommercePromoCode1?, _ error: Error?) -> Void))
```

Add promo code

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter promoRuleId: (path) The id for the promo rule of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdPromocodesWithRequestBuilder(body:storeId:promoRuleId:)`

```swift
open class func postEcommerceStoresIdPromocodesWithRequestBuilder(body: EcommercePromoCode, storeId: String, promoRuleId: String) -> RequestBuilder<EcommercePromoCode1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| promoRuleId | (path) The id for the promo rule of a store. |

### `postEcommerceStoresIdPromorules(body:storeId:completion:)`

```swift
open class func postEcommerceStoresIdPromorules(body: EcommercePromoRule, storeId: String, completion: @escaping ((_ data: EcommercePromoRule1?, _ error: Error?) -> Void))
```

Add promo rule

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| completion | completion handler to receive the data and the error objects |

### `postEcommerceStoresIdPromorulesWithRequestBuilder(body:storeId:)`

```swift
open class func postEcommerceStoresIdPromorulesWithRequestBuilder(body: EcommercePromoRule, storeId: String) -> RequestBuilder<EcommercePromoRule1>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |

### `putEcommerceStoresIdCustomersId(body:storeId:customerId:completion:)`

```swift
open class func putEcommerceStoresIdCustomersId(body: EcommerceCustomer4, storeId: String, customerId: String, completion: @escaping ((_ data: EcommerceCustomer3?, _ error: Error?) -> Void))
```

Add or update customer

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter customerId: (path) The id for the customer of a store.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |
| completion | completion handler to receive the data and the error objects |

### `putEcommerceStoresIdCustomersIdWithRequestBuilder(body:storeId:customerId:)`

```swift
open class func putEcommerceStoresIdCustomersIdWithRequestBuilder(body: EcommerceCustomer4, storeId: String, customerId: String) -> RequestBuilder<EcommerceCustomer3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| customerId | (path) The id for the customer of a store. |

### `putEcommerceStoresIdProductsIdVariantsId(body:storeId:productId:variantId:completion:)`

```swift
open class func putEcommerceStoresIdProductsIdVariantsId(body: EcommerceProductVariant4, storeId: String, productId: String, variantId: String, completion: @escaping ((_ data: EcommerceProductVariant3?, _ error: Error?) -> Void))
```

Add or update product variant

- parameter body: (body)
- parameter storeId: (path) The store id.
- parameter productId: (path) The id for the product of a store.
- parameter variantId: (path) The id for the product variant.
- parameter completion: completion handler to receive the data and the error objects

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |
| completion | completion handler to receive the data and the error objects |

### `putEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body:storeId:productId:variantId:)`

```swift
open class func putEcommerceStoresIdProductsIdVariantsIdWithRequestBuilder(body: EcommerceProductVariant4, storeId: String, productId: String, variantId: String) -> RequestBuilder<EcommerceProductVariant3>
```

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

#### Parameters

| Name | Description |
| ---- | ----------- |
| body | (body) |
| storeId | (path) The store id. |
| productId | (path) The id for the product of a store. |
| variantId | (path) The id for the product variant. |