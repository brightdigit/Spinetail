//
// TemplateContent1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Use this template to generate the HTML content for the campaign. */

public struct TemplateContent1: Codable {

    /** The id of the template to use. */
    public var _id: Int
    /** Content for the sections of the template. Each key should be the unique [mc:edit area](https://mailchimp.com/help/create-editable-content-areas-with-mailchimps-template-language/) name from the template. */
    public var sections: [String:String]?

    public init(_id: Int, sections: [String:String]? = nil) {
        self._id = _id
        self.sections = sections
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case sections
    }

}
