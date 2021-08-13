import Foundation

/** Updates on campaigns in the process of sending. */

public struct CampaignDeliveryStatus: Codable {
  public enum Status: String, Codable {
    case delivering
    case delivered
    case canceling
    case canceled
  }

  /** Whether Campaign Delivery Status is enabled for this account and campaign. */
  public var enabled: Bool?
  /** Whether a campaign send can be canceled. */
  public var canCancel: Bool?
  /** The current state of a campaign delivery. */
  public var status: Status?
  /** The total number of emails confirmed sent for this campaign so far. */
  public var emailsSent: Int?
  /** The total number of emails canceled for this campaign. */
  public var emailsCanceled: Int?

  public init(enabled: Bool? = nil, canCancel: Bool? = nil, status: Status? = nil, emailsSent: Int? = nil, emailsCanceled: Int? = nil) {
    self.enabled = enabled
    self.canCancel = canCancel
    self.status = status
    self.emailsSent = emailsSent
    self.emailsCanceled = emailsCanceled
  }

  public enum CodingKeys: String, CodingKey {
    case enabled
    case canCancel = "can_cancel"
    case status
    case emailsSent = "emails_sent"
    case emailsCanceled = "emails_canceled"
  }
}
