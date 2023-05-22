import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf1Model: Codable, Equatable, Content {
  public var emailSourceName: String?

  public var endTime: DateTime?

  public var needsAttention: Bool?

  public var pausedAt: DateTime?

  public var wasCanceledByFacebook: Bool?

  public init(emailSourceName: String? = nil, endTime: DateTime? = nil, needsAttention: Bool? = nil, pausedAt: DateTime? = nil, wasCanceledByFacebook: Bool? = nil) {
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.wasCanceledByFacebook = wasCanceledByFacebook
  }

  public enum CodingKeys: String, CodingKey {
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
  }
}
