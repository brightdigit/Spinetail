import Foundation

/** The tracking settings applied to this landing page. */

public struct TrackingSettings: Codable {
  /** Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/). */
  public var trackWithMailchimp: Bool?
  /** Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google&#x27;s restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/). */
  public var enableRestrictedDataProcessing: Bool?

  public init(trackWithMailchimp: Bool? = nil, enableRestrictedDataProcessing: Bool? = nil) {
    self.trackWithMailchimp = trackWithMailchimp
    self.enableRestrictedDataProcessing = enableRestrictedDataProcessing
  }

  public enum CodingKeys: String, CodingKey {
    case trackWithMailchimp = "track_with_mailchimp"
    case enableRestrictedDataProcessing = "enable_restricted_data_processing"
  }
}
