//
// Location.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Subscriber location information. */

public struct Location: Codable {

    /** The location latitude. */
    public var latitude: Decimal?
    /** The location longitude. */
    public var longitude: Decimal?

    public init(latitude: Decimal? = nil, longitude: Decimal? = nil) {
        self.latitude = latitude
        self.longitude = longitude
    }


}