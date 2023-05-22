import Foundation

import PrchModel
/** A summary of the interaction with the campaign. */
public struct MemberActivity2Model: Codable, Equatable, Content {
  /** One of the following actions: 'open', 'click', or 'bounce' */
  public var action: String?

  /** The IP address recorded for the action. */
  public var ip: String?

  /** The date and time recorded for the action in ISO 8601 format. */
  public var timestamp: DateTime?

  /** If the action is a 'bounce', the type of bounce received: 'hard', 'soft'. */
  public var type: String?

  /** If the action is a 'click', the URL on which the member clicked. */
  public var url: String?

  public init(action: String? = nil, ip: String? = nil, timestamp: DateTime? = nil, type: String? = nil, url: String? = nil) {
    self.action = action
    self.ip = ip
    self.timestamp = timestamp
    self.type = type
    self.url = url
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case action
    case ip
    case timestamp
    case type
    case url
  }
}
