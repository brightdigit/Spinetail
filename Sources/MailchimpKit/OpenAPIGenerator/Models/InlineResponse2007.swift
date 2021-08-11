//
// InlineResponse2007.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A collection of ecommerce products. */

public struct InlineResponse2007: Codable {

    public var products: [InlineResponse2007Products]?
    /** The total number of items matching the query regardless of pagination. */
    public var totalItems: Int?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(products: [InlineResponse2007Products]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
        self.products = products
        self.totalItems = totalItems
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case products
        case totalItems = "total_items"
        case links = "_links"
    }

}