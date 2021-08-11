//
// CampaignReports1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A list of reports containing campaigns marked as Sent. */

public struct CampaignReports1: Codable {

    /** An array of objects, each representing a report resource. */
    public var reports: [CampaignReport1]?
    /** The total number of items matching the query regardless of pagination. */
    public var totalItems: Int?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(reports: [CampaignReport1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
        self.reports = reports
        self.totalItems = totalItems
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case reports
        case totalItems = "total_items"
        case links = "_links"
    }

}