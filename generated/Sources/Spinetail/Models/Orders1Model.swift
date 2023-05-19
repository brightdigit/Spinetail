//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
/** A collection of orders in a store. */
public struct Orders1Model: Codable, Equatable, Content {

    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLinkModel]?

    /** An array of objects, each representing an order in a store. */
    public var orders: [ECommerceOrderModel]?

    /** The unique identifier for the store. */
    public var storeId: String?

    /** The total number of items matching the query regardless of pagination. */
    public var totalItems: Int?

    public init(links: [ResourceLinkModel]? = nil, orders: [ECommerceOrderModel]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
        self.links = links
        self.orders = orders
        self.storeId = storeId
        self.totalItems = totalItems
    }

    public enum CodingKeys: String, CodingKey {
        case links = "_links"
        case orders = "orders"
        case storeId = "store_id"
        case totalItems = "total_items"
    }


}
