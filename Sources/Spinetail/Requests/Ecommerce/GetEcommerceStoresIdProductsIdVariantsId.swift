import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Get product variant info

   Get information about a specific product variant.
   */
  struct GetEcommerceStoresIdProductsIdVariantsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)").replacingOccurrences(of: "{" + "variant_id" + "}", with: "\(variantId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The store id. */
    public let storeId: String

    /** The id for the product of a store. */
    public let productId: String

    /** The id for the product variant. */
    public let variantId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, productId: String, variantId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.storeId = storeId
      self.productId = productId
      self.variantId = variantId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProductVariant
    public typealias BodyType = Empty
  }
}
