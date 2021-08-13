import Foundation

/** A specific feedback message from a specific campaign. */

public struct CampaignFeedback1: Codable {
  public enum Source: String, Codable {
    case api
    case email
    case sms
    case web
    case ios
    case android
  }

  /** The individual id for the feedback item. */
  public var feedbackId: Int?
  /** If a reply, the id of the parent feedback item. */
  public var parentId: Int?
  /** The block id for the editable block that the feedback addresses. */
  public var blockId: Int?
  /** The content of the feedback. */
  public var message: String?
  /** The status of feedback. */
  public var isComplete: Bool?
  /** The login name of the user who created the feedback. */
  public var createdBy: String?
  /** The date and time the feedback item was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the feedback was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** The source of the feedback. */
  public var source: Source?
  /** The unique id for the campaign. */
  public var campaignId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(feedbackId: Int? = nil, parentId: Int? = nil, blockId: Int? = nil, message: String? = nil, isComplete: Bool? = nil, createdBy: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, source: Source? = nil, campaignId: String? = nil, links: [ResourceLink]? = nil) {
    self.feedbackId = feedbackId
    self.parentId = parentId
    self.blockId = blockId
    self.message = message
    self.isComplete = isComplete
    self.createdBy = createdBy
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.source = source
    self.campaignId = campaignId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case feedbackId = "feedback_id"
    case parentId = "parent_id"
    case blockId = "block_id"
    case message
    case isComplete = "is_complete"
    case createdBy = "created_by"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case source
    case campaignId = "campaign_id"
    case links = "_links"
  }
}
