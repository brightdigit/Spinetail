import Foundation

import PrchModel
/** A summary of an individual landing page's settings and content. */
public struct LandingPageReportModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The number of clicks to this landing pages. */
  public var clicks: Int?

  /** The percentage of people who visited your landing page and were added to your list. */
  public var conversionRate: Double?

  public var ecommerce: LandingPageReportEcommerceModel?

  /** A string that uniquely identifies this landing page. */
  public var id: String?

  /** The list id connected to this landing page. */
  public var listId: String?

  /** List Name */
  public var listName: String?

  /** The name of this landing page the user will see. */
  public var name: String?

  /** The time this landing page was published. */
  public var publishedAt: DateTime?

  /** A list of tags associated to the landing page. */
  public var signupTags: [TagModel]?

  /** The status of the landing page. */
  public var status: String?

  /** The number of subscribes to this landing pages. */
  public var subscribes: Int?

  public var timeseries: LandingPageReportTimeseriesModel?

  /** The name of the landing page the user's customers will see. */
  public var title: String?

  /** The number of unique visits to this landing pages. */
  public var uniqueVisits: Int?

  /** The time this landing page was unpublished. */
  public var unpublishedAt: DateTime?

  /** The landing page url. */
  public var url: String?

  /** The number of visits to this landing pages. */
  public var visits: Int?

  /** The ID used in the Mailchimp web application. */
  public var webId: Int?

  public init(links: [ResourceLinkModel]? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: LandingPageReportEcommerceModel? = nil, id: String? = nil, listId: String? = nil, listName: String? = nil, name: String? = nil, publishedAt: DateTime? = nil, signupTags: [TagModel]? = nil, status: String? = nil, subscribes: Int? = nil, timeseries: LandingPageReportTimeseriesModel? = nil, title: String? = nil, uniqueVisits: Int? = nil, unpublishedAt: DateTime? = nil, url: String? = nil, visits: Int? = nil, webId: Int? = nil) {
    self.links = links
    self.clicks = clicks
    self.conversionRate = conversionRate
    self.ecommerce = ecommerce
    self.id = id
    self.listId = listId
    self.listName = listName
    self.name = name
    self.publishedAt = publishedAt
    self.signupTags = signupTags
    self.status = status
    self.subscribes = subscribes
    self.timeseries = timeseries
    self.title = title
    self.uniqueVisits = uniqueVisits
    self.unpublishedAt = unpublishedAt
    self.url = url
    self.visits = visits
    self.webId = webId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case clicks
    case conversionRate = "conversion_rate"
    case ecommerce
    case id
    case listId = "list_id"
    case listName = "list_name"
    case name
    case publishedAt = "published_at"
    case signupTags = "signup_tags"
    case status
    case subscribes
    case timeseries
    case title
    case uniqueVisits = "unique_visits"
    case unpublishedAt = "unpublished_at"
    case url
    case visits
    case webId = "web_id"
  }
}
