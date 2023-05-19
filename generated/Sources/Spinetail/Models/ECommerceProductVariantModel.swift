//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
/** Information about a specific product variant. */
public struct ECommerceProductVariantModel: Codable, Equatable, Content {

    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLinkModel]?

    /** The backorders of a product variant. */
    public var backorders: String?

    /** The date and time the product was created in ISO 8601 format. */
    public var createdAt: DateTime?

    /** A unique identifier for the product variant. */
    public var id: String?

    /** The image URL for a product variant. */
    public var imageURL: String?

    /** The inventory quantity of a product variant. */
    public var inventoryQuantity: Int?

    /** The price of a product variant. */
    public var price: Double?

    /** The stock keeping unit (SKU) of a product variant. */
    public var sku: String?

    /** The title of a product variant. */
    public var title: String?

    /** The date and time the product was last updated in ISO 8601 format. */
    public var updatedAt: DateTime?

    /** The URL for a product variant. */
    public var url: String?

    /** The visibility of a product variant. */
    public var visibility: String?

    public init(links: [ResourceLinkModel]? = nil, backorders: String? = nil, createdAt: DateTime? = nil, id: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, updatedAt: DateTime? = nil, url: String? = nil, visibility: String? = nil) {
        self.links = links
        self.backorders = backorders
        self.createdAt = createdAt
        self.id = id
        self.imageURL = imageURL
        self.inventoryQuantity = inventoryQuantity
        self.price = price
        self.sku = sku
        self.title = title
        self.updatedAt = updatedAt
        self.url = url
        self.visibility = visibility
    }

    public enum CodingKeys: String, CodingKey {
        case links = "_links"
        case backorders = "backorders"
        case createdAt = "created_at"
        case id = "id"
        case imageURL = "image_url"
        case inventoryQuantity = "inventory_quantity"
        case price = "price"
        case sku = "sku"
        case title = "title"
        case updatedAt = "updated_at"
        case url = "url"
        case visibility = "visibility"
    }


}
