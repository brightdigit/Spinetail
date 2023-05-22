import Foundation

import PrchModel
/** Updates on campaigns in the process of sending. */
public struct CampaignDeliveryStatusModel: Codable, Equatable, Content {
  /** The current state of a campaign delivery. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case delivering
    case delivered
    case canceling
    case canceled
  }

  /** Whether a campaign send can be canceled. */
  public var canCancel: Bool?

  /** The total number of emails canceled for this campaign. */
  public var emailsCanceled: Int?

  /** The total number of emails confirmed sent for this campaign so far. */
  public var emailsSent: Int?

  /** Whether Campaign Delivery Status is enabled for this account and campaign. */
  public var enabled: Bool?

  /** The current state of a campaign delivery. */
  public var status: Status?

  public init(canCancel: Bool? = nil, emailsCanceled: Int? = nil, emailsSent: Int? = nil, enabled: Bool? = nil, status: Status? = nil) {
    self.canCancel = canCancel
    self.emailsCanceled = emailsCanceled
    self.emailsSent = emailsSent
    self.enabled = enabled
    self.status = status
  }

  public enum CodingKeys: String, CodingKey {
    case canCancel = "can_cancel"
    case emailsCanceled = "emails_canceled"
    case emailsSent = "emails_sent"
    case enabled
    case status
  }
}
