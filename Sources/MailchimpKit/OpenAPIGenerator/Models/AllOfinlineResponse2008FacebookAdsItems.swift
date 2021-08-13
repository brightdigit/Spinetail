import Foundation

//
//
// public struct AllOfinlineResponse2008FacebookAdsItems: Codable {
//
//    public var emailSourceName: String?
//    public var pausedAt: Date?
//    public var endTime: Date?
//    public var needsAttention: Bool?
//    public var wasCanceledByFacebook: Bool?
//    /** Check if this ad is connected to a facebook page */
//    public var isConnected: Bool?
//    /** Check if this ad has audience setup */
//    public var hasAudience: Bool?
//    /** Check if this ad has content */
//    public var hasContent: Bool?
//    /** Channel settings */
//    public var channel: Any?
//    /** Check if this ad is connected to a facebook page */
//    public var feedback: Any?
//    /** Connected Site */
//    public var site: Any?
//    /** Audience settings */
//    public var audience: Any?
//    public var budget: Any?
//    public var content: Any?
//    /** A list of link types and descriptions for the API schema documents. */
//    public var links: [Any]?
//
//    public init(emailSourceName: String? = nil, pausedAt: Date? = nil, endTime: Date? = nil, needsAttention: Bool? = nil, wasCanceledByFacebook: Bool? = nil, isConnected: Bool? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, channel: Any? = nil, feedback: Any? = nil, site: Any? = nil, audience: Any? = nil, budget: Any? = nil, content: Any? = nil, links: [Any]? = nil) {
//        self.emailSourceName = emailSourceName
//        self.pausedAt = pausedAt
//        self.endTime = endTime
//        self.needsAttention = needsAttention
//        self.wasCanceledByFacebook = wasCanceledByFacebook
//        self.isConnected = isConnected
//        self.hasAudience = hasAudience
//        self.hasContent = hasContent
//        self.channel = channel
//        self.feedback = feedback
//        self.site = site
//        self.audience = audience
//        self.budget = budget
//        self.content = content
//        self.links = links
//    }
//
//    public enum CodingKeys: String, CodingKey {
//        case emailSourceName = "email_source_name"
//        case pausedAt = "paused_at"
//        case endTime = "end_time"
//        case needsAttention = "needs_attention"
//        case wasCanceledByFacebook = "was_canceled_by_facebook"
//        case isConnected = "is_connected"
//        case hasAudience = "has_audience"
//        case hasContent = "has_content"
//        case channel
//        case feedback
//        case site
//        case audience
//        case budget
//        case content
//        case links = "_links"
//    }
//
// }
