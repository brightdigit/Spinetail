//
// SegmentOptions2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object representing all segmentation options. */

public struct SegmentOptions2: Codable {

    public enum Match: String, Codable { 
        case any = "any"
        case all = "all"
    }
    /** The id for an existing saved segment. */
    public var savedSegmentId: Int?
    /** Segment match type. */
    public var match: Match?
    /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
    public var conditions: [ConditionFilter]?

    public init(savedSegmentId: Int? = nil, match: Match? = nil, conditions: [ConditionFilter]? = nil) {
        self.savedSegmentId = savedSegmentId
        self.match = match
        self.conditions = conditions
    }

    public enum CodingKeys: String, CodingKey { 
        case savedSegmentId = "saved_segment_id"
        case match
        case conditions
    }

}