import Foundation

import PrchModel
/** Add or remove tags on a member by declaring a tag either active or inactive on a member. */
public struct MemberTagModel: Codable, Equatable, Content {
  /** The status for the tag on the member, pass in active to add a tag or inactive to remove it. */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case inactive
    case active
  }

  /** The name of the tag. */
  public var name: String

  /** The status for the tag on the member, pass in active to add a tag or inactive to remove it. */
  public var status: Status

  public init(name: String, status: Status) {
    self.name = name
    self.status = status
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
    case status
  }
}
