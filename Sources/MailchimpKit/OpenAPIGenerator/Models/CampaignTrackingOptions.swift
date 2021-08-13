import Foundation

/** The tracking options for a campaign. */

public struct CampaignTrackingOptions: Codable {
  /** Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns. */
  public var opens: Bool?
  /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns. */
  public var htmlClicks: Bool?
  /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to &#x60;true&#x60;. Cannot be set to false for variate campaigns. */
  public var textClicks: Bool?
  /** Deprecated */
  public var goalTracking: Bool?
  /** Whether to enable e-commerce tracking. */
  public var ecomm360: Bool?
  /** The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes). */
  public var googleAnalytics: String?
  /** The custom slug for [ClickTale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes). */
  public var clicktale: String?
  public var salesforce: SalesforceCRMTracking?
  public var capsule: CapsuleCRMTracking?

  public init(opens: Bool? = nil, htmlClicks: Bool? = nil, textClicks: Bool? = nil, goalTracking: Bool? = nil, ecomm360: Bool? = nil, googleAnalytics: String? = nil, clicktale: String? = nil, salesforce: SalesforceCRMTracking? = nil, capsule: CapsuleCRMTracking? = nil) {
    self.opens = opens
    self.htmlClicks = htmlClicks
    self.textClicks = textClicks
    self.goalTracking = goalTracking
    self.ecomm360 = ecomm360
    self.googleAnalytics = googleAnalytics
    self.clicktale = clicktale
    self.salesforce = salesforce
    self.capsule = capsule
  }

  public enum CodingKeys: String, CodingKey {
    case opens
    case htmlClicks = "html_clicks"
    case textClicks = "text_clicks"
    case goalTracking = "goal_tracking"
    case ecomm360
    case googleAnalytics = "google_analytics"
    case clicktale
    case salesforce
    case capsule
  }
}
