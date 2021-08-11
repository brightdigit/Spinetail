//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension MailchimpKit.Reports {

    /**
    List top open activities

    Get top open locations for a specific campaign.
    */
    public enum GetReportsIdLocations {

        public static let service = APIService<Response>(id: "getReportsIdLocations", tag: "reports", method: "GET", path: "/reports/{campaign_id}/locations", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
                public var fields: [String]?

                /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
                public var excludeFields: [String]?

                /** The unique id for the campaign. */
                public var campaignId: String

                /** The number of records to return. Default value is 10. Maximum value is 1000 */
                public var count: Int?

                /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
                public var offset: Int?

                public init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, count: Int? = nil, offset: Int? = nil) {
                    self.fields = fields
                    self.excludeFields = excludeFields
                    self.campaignId = campaignId
                    self.count = count
                    self.offset = offset
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetReportsIdLocations.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, campaignId: String, count: Int? = nil, offset: Int? = nil) {
                let options = Options(fields: fields, excludeFields: excludeFields, campaignId: campaignId, count: count, offset: offset)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(self.options.campaignId)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let fields = options.fields?.joined(separator: ",") {
                  params["fields"] = fields
                }
                if let excludeFields = options.excludeFields?.joined(separator: ",") {
                  params["exclude_fields"] = excludeFields
                }
                if let count = options.count {
                  params["count"] = count
                }
                if let offset = options.offset {
                  params["offset"] = offset
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Top open locations for a specific campaign. */
            public struct Status200: MailchimpModel {

                /** A list of link types and descriptions for the API schema documents. */
                public var links: [Links]?

                /** The campaign id. */
                public var campaignId: String?

                /** An array of objects, each representing a top location for opens. */
                public var locations: [Locations]?

                /** The total number of items matching the query regardless of pagination. */
                public var totalItems: Int?

                /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
                public struct Links: MailchimpModel {

                    /** The HTTP method that should be used when accessing the URL defined in 'href'. */
                    public enum Method: String, Codable, Equatable, CaseIterable {
                        case get = "GET"
                        case post = "POST"
                        case put = "PUT"
                        case patch = "PATCH"
                        case delete = "DELETE"
                        case options = "OPTIONS"
                        case head = "HEAD"
                    }

                    /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
                    public var href: String?

                    /** The HTTP method that should be used when accessing the URL defined in 'href'. */
                    public var method: Method?

                    /** As with an HTML 'rel' attribute, this describes the type of link. */
                    public var rel: String?

                    /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
                    public var schema: String?

                    /** For GETs, this is a URL representing the schema that the response should conform to. */
                    public var targetSchema: String?

                    public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
                        self.href = href
                        self.method = method
                        self.rel = rel
                        self.schema = schema
                        self.targetSchema = targetSchema
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        href = try container.decodeIfPresent("href")
                        method = try container.decodeIfPresent("method")
                        rel = try container.decodeIfPresent("rel")
                        schema = try container.decodeIfPresent("schema")
                        targetSchema = try container.decodeIfPresent("targetSchema")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(href, forKey: "href")
                        try container.encodeIfPresent(method, forKey: "method")
                        try container.encodeIfPresent(rel, forKey: "rel")
                        try container.encodeIfPresent(schema, forKey: "schema")
                        try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
                    }

                }

                /** Top open locations for a specific campaign. */
                public struct Locations: MailchimpModel {

                    /** The ISO 3166 2 digit country code. */
                    public var countryCode: String?

                    /** The number of unique campaign opens for a region. */
                    public var opens: Int?

                    /** An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region. */
                    public var region: String?

                    /** The name of the region, if we have one. For blank "region" values, this will be "Rest of Country". */
                    public var regionName: String?

                    public init(countryCode: String? = nil, opens: Int? = nil, region: String? = nil, regionName: String? = nil) {
                        self.countryCode = countryCode
                        self.opens = opens
                        self.region = region
                        self.regionName = regionName
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: StringCodingKey.self)

                        countryCode = try container.decodeIfPresent("country_code")
                        opens = try container.decodeIfPresent("opens")
                        region = try container.decodeIfPresent("region")
                        regionName = try container.decodeIfPresent("region_name")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: StringCodingKey.self)

                        try container.encodeIfPresent(countryCode, forKey: "country_code")
                        try container.encodeIfPresent(opens, forKey: "opens")
                        try container.encodeIfPresent(region, forKey: "region")
                        try container.encodeIfPresent(regionName, forKey: "region_name")
                    }

                }

                public init(links: [Links]? = nil, campaignId: String? = nil, locations: [Locations]? = nil, totalItems: Int? = nil) {
                    self.links = links
                    self.campaignId = campaignId
                    self.locations = locations
                    self.totalItems = totalItems
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    links = try container.decodeArrayIfPresent("_links")
                    campaignId = try container.decodeIfPresent("campaign_id")
                    locations = try container.decodeArrayIfPresent("locations")
                    totalItems = try container.decodeIfPresent("total_items")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(links, forKey: "_links")
                    try container.encodeIfPresent(campaignId, forKey: "campaign_id")
                    try container.encodeIfPresent(locations, forKey: "locations")
                    try container.encodeIfPresent(totalItems, forKey: "total_items")
                }

            }

            /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
            public struct DefaultResponse: MailchimpModel {

                /** A human-readable explanation specific to this occurrence of the problem. [Learn more about errors](/developer/guides/get-started-with-mailchimp-api-3/#Errors). */
                public var detail: String

                /** A string that identifies this specific occurrence of the problem. Please provide this ID when contacting support. */
                public var instance: String

                /** The HTTP status code (RFC2616, Section 6) generated by the origin server for this occurrence of the problem. */
                public var status: Int

                /** A short, human-readable summary of the problem type. It shouldn't change based on the occurrence of the problem, except for purposes of localization. */
                public var title: String

                /** An absolute URI that identifies the problem type. When dereferenced, it should provide human-readable documentation for the problem type. */
                public var type: String

                public init(detail: String, instance: String, status: Int, title: String, type: String) {
                    self.detail = detail
                    self.instance = instance
                    self.status = status
                    self.title = title
                    self.type = type
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    detail = try container.decode("detail")
                    instance = try container.decode("instance")
                    status = try container.decode("status")
                    title = try container.decode("title")
                    type = try container.decode("type")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(detail, forKey: "detail")
                    try container.encode(instance, forKey: "instance")
                    try container.encode(status, forKey: "status")
                    try container.encode(title, forKey: "title")
                    try container.encode(type, forKey: "type")
                }

            }
            public typealias SuccessType = Status200
            case status200(Status200)

            /** An error generated by the Mailchimp API. */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: DefaultResponse? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, DefaultResponse> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
