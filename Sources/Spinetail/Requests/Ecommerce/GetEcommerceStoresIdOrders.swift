import Foundation
import PrchModel

public extension Ecommerce {
  /**
   List orders

   Get information about a store's orders.
   */
  struct GetEcommerceStoresIdOrders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public var count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public var offset: Int?

    /** The store id. */
    public var storeId: String

    /** Restrict results to orders made by a specific customer. */
    public var customerId: String?

    /** Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad. */
    public var hasOutreach: Bool?

    /** Restrict results to orders with a specific `campaign_id` value. */
    public var campaignId: String?

    /** Restrict results to orders with a specific `outreach_id` value. */
    public var outreachId: String?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      if let customerId = self.customerId {
        params["customer_id"] = String(describing: customerId)
      }
      if let hasOutreach = self.hasOutreach {
        params["has_outreach"] = String(describing: hasOutreach)
      }
      if let campaignId = self.campaignId {
        params["campaign_id"] = String(describing: campaignId)
      }
      if let outreachId = self.outreachId {
        params["outreach_id"] = String(describing: outreachId)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getEcommerceStoresIdOrders", tag: "ecommerce", method: "GET", path: "/ecommerce/stores/{store_id}/orders", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Orders1Model
    public typealias BodyType = Empty
  }
}
