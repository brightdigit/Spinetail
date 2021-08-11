//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension MailchimpKit.Lists {

    /**
    Add event

    Add an event for a list member.
    */
    public enum PostListMemberEvents {

        public static let service = APIService<Response>(id: "postListMemberEvents", tag: "lists", method: "POST", path: "/lists/{list_id}/members/{subscriber_hash}/events", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public final class Request: APIRequest<Response> {

            /** A new event for a specific list member */
            public struct Body: MailchimpModel {

                /** The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length */
                public var name: String

                /** Events created with the is_syncing value set to `true` will not trigger automations. */
                public var isSyncing: Bool?

                /** The date and time the event occurred in ISO 8601 format. */
                public var occurredAt: DateTime?

                /** An optional list of properties */
                public var properties: [String: String]?

                public init(name: String, isSyncing: Bool? = nil, occurredAt: DateTime? = nil, properties: [String: String]? = nil) {
                    self.name = name
                    self.isSyncing = isSyncing
                    self.occurredAt = occurredAt
                    self.properties = properties
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    name = try container.decode("name")
                    isSyncing = try container.decodeIfPresent("is_syncing")
                    occurredAt = try container.decodeIfPresent("occurred_at")
                    properties = try container.decodeIfPresent("properties")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(name, forKey: "name")
                    try container.encodeIfPresent(isSyncing, forKey: "is_syncing")
                    try container.encodeIfPresent(occurredAt, forKey: "occurred_at")
                    try container.encodeIfPresent(properties, forKey: "properties")
                }

            }

            public struct Options {

                /** The unique ID for the list. */
                public var listId: String

                /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts email addresses. */
                public var subscriberHash: String

                public init(listId: String, subscriberHash: String) {
                    self.listId = listId
                    self.subscriberHash = subscriberHash
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: PostListMemberEvents.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(listId: String, subscriberHash: String, body: Body) {
                let options = Options(listId: listId, subscriberHash: subscriberHash)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.options.listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(self.options.subscriberHash)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

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
            public typealias SuccessType = Void

            /** Empty Response */
            case status204

            /** An error generated by the Mailchimp API. */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Void? {
                switch self {
                case .status204: return ()
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
            public var responseResult: APIResponseResult<Void, DefaultResponse> {
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
                case .defaultResponse(_, let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
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