//
// ProblemDetailDocument.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An error generated by the Mailchimp API. Conforms to IETF draft &#x27;draft-nottingham-http-problem-06&#x27;. */

public struct ProblemDetailDocument: Codable {

    /** An absolute URI that identifies the problem type. When dereferenced, it should provide human-readable documentation for the problem type. */
    public var type: String
    /** A short, human-readable summary of the problem type. It shouldn&#x27;t change based on the occurrence of the problem, except for purposes of localization. */
    public var title: String
    /** The HTTP status code (RFC2616, Section 6) generated by the origin server for this occurrence of the problem. */
    public var status: Int
    /** A human-readable explanation specific to this occurrence of the problem. [Learn more about errors](/developer/guides/get-started-with-mailchimp-api-3/#Errors). */
    public var detail: String
    /** A string that identifies this specific occurrence of the problem. Please provide this ID when contacting support. */
    public var instance: String

    public init(type: String, title: String, status: Int, detail: String, instance: String) {
        self.type = type
        self.title = title
        self.status = status
        self.detail = detail
        self.instance = instance
    }


}