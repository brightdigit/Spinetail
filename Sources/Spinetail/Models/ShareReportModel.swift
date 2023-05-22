import Foundation

import PrchModel
/** The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/). */
public struct ShareReportModel: Codable, Equatable, Content {
  /** If password protected, the password for the VIP report. */
  public var sharePassword: String?

  /** The URL for the VIP report. */
  public var shareURL: String?

  public init(sharePassword: String? = nil, shareURL: String? = nil) {
    self.sharePassword = sharePassword
    self.shareURL = shareURL
  }

  public enum CodingKeys: String, CodingKey {
    case sharePassword = "share_password"
    case shareURL = "share_url"
  }
}
