import Foundation

/** Report details about a sent campaign. */

public struct CampaignReport: Codable {
  /** A string that uniquely identifies this campaign. */
  public var _id: String?
  /** The title of the campaign. */
  public var campaignTitle: String?
  /** The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto). */
  public var type: String?
  /** The unique list id. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** The name of the list. */
  public var listName: String?
  /** The subject line for the campaign. */
  public var subjectLine: String?
  /** The preview text for the campaign. */
  public var previewText: String?
  /** The total number of emails sent for this campaign. */
  public var emailsSent: Int?
  /** The number of abuse reports generated for this campaign. */
  public var abuseReports: Int?
  /** The total number of unsubscribed members for this campaign. */
  public var unsubscribed: Int?
  /** The date and time a campaign was sent in ISO 8601 format. */
  public var sendTime: Date?
  /** For RSS campaigns, the date and time of the last send in ISO 8601 format. */
  public var rssLastSend: Date?
  public var bounces: Bounces?
  public var forwards: Forwards?
  public var opens: Opens?
  public var clicks: Clicks?
  public var facebookLikes: FacebookLikes?
  public var industryStats: IndustryStats?
  public var listStats: ListStats?
  public var abSplit: ABSplitStats?
  /** An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp. */
  public var timewarp: [CampaignReports1Timewarp]?
  /** An hourly breakdown of the performance of the campaign over the first 24 hours. */
  public var timeseries: [CampaignReports1Timeseries]?
  public var shareReport: ShareReport?
  public var ecommerce: ECommerceReport?
  public var deliveryStatus: CampaignDeliveryStatus?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, campaignTitle: String? = nil, type: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, subjectLine: String? = nil, previewText: String? = nil, emailsSent: Int? = nil, abuseReports: Int? = nil, unsubscribed: Int? = nil, sendTime: Date? = nil, rssLastSend: Date? = nil, bounces: Bounces? = nil, forwards: Forwards? = nil, opens: Opens? = nil, clicks: Clicks? = nil, facebookLikes: FacebookLikes? = nil, industryStats: IndustryStats? = nil, listStats: ListStats? = nil, abSplit: ABSplitStats? = nil, timewarp: [CampaignReports1Timewarp]? = nil, timeseries: [CampaignReports1Timeseries]? = nil, shareReport: ShareReport? = nil, ecommerce: ECommerceReport? = nil, deliveryStatus: CampaignDeliveryStatus? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.campaignTitle = campaignTitle
    self.type = type
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.subjectLine = subjectLine
    self.previewText = previewText
    self.emailsSent = emailsSent
    self.abuseReports = abuseReports
    self.unsubscribed = unsubscribed
    self.sendTime = sendTime
    self.rssLastSend = rssLastSend
    self.bounces = bounces
    self.forwards = forwards
    self.opens = opens
    self.clicks = clicks
    self.facebookLikes = facebookLikes
    self.industryStats = industryStats
    self.listStats = listStats
    self.abSplit = abSplit
    self.timewarp = timewarp
    self.timeseries = timeseries
    self.shareReport = shareReport
    self.ecommerce = ecommerce
    self.deliveryStatus = deliveryStatus
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case campaignTitle = "campaign_title"
    case type
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case subjectLine = "subject_line"
    case previewText = "preview_text"
    case emailsSent = "emails_sent"
    case abuseReports = "abuse_reports"
    case unsubscribed
    case sendTime = "send_time"
    case rssLastSend = "rss_last_send"
    case bounces
    case forwards
    case opens
    case clicks
    case facebookLikes = "facebook_likes"
    case industryStats = "industry_stats"
    case listStats = "list_stats"
    case abSplit = "ab_split"
    case timewarp
    case timeseries
    case shareReport = "share_report"
    case ecommerce
    case deliveryStatus = "delivery_status"
    case links = "_links"
  }
}
