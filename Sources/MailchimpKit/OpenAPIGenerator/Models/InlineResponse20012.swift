//
// InlineResponse20012.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A collection of landing pages. */

public struct InlineResponse20012: Codable {

    public var landingPages: [LandingPageReport1]?
    /** The total number of items matching the query regardless of pagination. */
    public var totalItems: Int?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(landingPages: [LandingPageReport1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
        self.landingPages = landingPages
        self.totalItems = totalItems
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case landingPages = "landing_pages"
        case totalItems = "total_items"
        case links = "_links"
    }

}