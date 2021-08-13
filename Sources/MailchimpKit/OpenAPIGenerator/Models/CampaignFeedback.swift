import Foundation

/** A specific feedback message from a specific campaign. */

public struct CampaignFeedback: Codable {
  /** The block id for the editable block that the feedback addresses. */
  public var blockId: Int?
  /** The content of the feedback. */
  public var message: String
  /** The status of feedback. */
  public var isComplete: Bool?

  public init(blockId: Int? = nil, message: String, isComplete: Bool? = nil) {
    self.blockId = blockId
    self.message = message
    self.isComplete = isComplete
  }

  public enum CodingKeys: String, CodingKey {
    case blockId = "block_id"
    case message
    case isComplete = "is_complete"
  }
}
