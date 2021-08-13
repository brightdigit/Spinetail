import Foundation

/** A summary of the interaction with the campaign. */

public struct MemberActivity: Codable {
  /** One of the following actions: &#x27;open&#x27;, &#x27;click&#x27;, or &#x27;bounce&#x27; */
  public var action: String?
  /** If the action is a &#x27;bounce&#x27;, the type of bounce received: &#x27;hard&#x27;, &#x27;soft&#x27;. */
  public var type: String?
  /** The date and time recorded for the action in ISO 8601 format. */
  public var timestamp: Date?
  /** If the action is a &#x27;click&#x27;, the URL on which the member clicked. */
  public var url: String?
  /** The IP address recorded for the action. */
  public var ip: String?

  public init(action: String? = nil, type: String? = nil, timestamp: Date? = nil, url: String? = nil, ip: String? = nil) {
    self.action = action
    self.type = type
    self.timestamp = timestamp
    self.url = url
    self.ip = ip
  }
}
