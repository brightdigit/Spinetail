import Foundation

/** The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/). */

public struct ShareReport: Codable {
  /** The URL for the VIP report. */
  public var shareUrl: String?
  /** If password protected, the password for the VIP report. */
  public var sharePassword: String?

  public init(shareUrl: String? = nil, sharePassword: String? = nil) {
    self.shareUrl = shareUrl
    self.sharePassword = sharePassword
  }

  public enum CodingKeys: String, CodingKey {
    case shareUrl = "share_url"
    case sharePassword = "share_password"
  }
}
