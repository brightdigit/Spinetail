import Foundation

import PrchModel
/** A specific feedback message from a specific campaign. */
public struct CampaignFeedback1Model: Codable, Equatable, Content {
  /** The content of the feedback. */
  public var message: String

  /** The block id for the editable block that the feedback addresses. */
  public var blockId: Int?

  /** The status of feedback. */
  public var isComplete: Bool?

  public init(message: String, blockId: Int? = nil, isComplete: Bool? = nil) {
    self.message = message
    self.blockId = blockId
    self.isComplete = isComplete
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case message
    case blockId = "block_id"
    case isComplete = "is_complete"
  }
}
