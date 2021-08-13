import Foundation

/** A summary of an individual landing page&#x27;s settings and content. */

public struct LandingPageReport: Codable {
  /** A string that uniquely identifies this landing page. */
  public var _id: String?
  /** The name of this landing page the user will see. */
  public var name: String?
  /** The name of the landing page the user&#x27;s customers will see. */
  public var title: String?
  /** The landing page url. */
  public var url: String?
  /** The time this landing page was published. */
  public var publishedAt: Date?
  /** The time this landing page was unpublished. */
  public var unpublishedAt: Date?
  /** The status of the landing page. */
  public var status: String?
  /** The list id connected to this landing page. */
  public var listId: String?
  /** The number of visits to this landing pages. */
  public var visits: Int?
  /** The number of unique visits to this landing pages. */
  public var uniqueVisits: Int?
  /** The number of subscribes to this landing pages. */
  public var subscribes: Int?
  /** The number of clicks to this landing pages. */
  public var clicks: Int?
  /** The percentage of people who visited your landing page and were added to your list. */
  public var conversionRate: Decimal?
  public var timeseries: LandingPageReportTimeseries?
  public var ecommerce: LandingPageReportEcommerce?
  /** The ID used in the Mailchimp web application. */
  public var webId: Int?
  /** List Name */
  public var listName: String?
  /** A list of tags associated to the landing page. */
  public var signupTags: [Tag]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, name: String? = nil, title: String? = nil, url: String? = nil, publishedAt: Date? = nil, unpublishedAt: Date? = nil, status: String? = nil, listId: String? = nil, visits: Int? = nil, uniqueVisits: Int? = nil, subscribes: Int? = nil, clicks: Int? = nil, conversionRate: Decimal? = nil, timeseries: LandingPageReportTimeseries? = nil, ecommerce: LandingPageReportEcommerce? = nil, webId: Int? = nil, listName: String? = nil, signupTags: [Tag]? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.name = name
    self.title = title
    self.url = url
    self.publishedAt = publishedAt
    self.unpublishedAt = unpublishedAt
    self.status = status
    self.listId = listId
    self.visits = visits
    self.uniqueVisits = uniqueVisits
    self.subscribes = subscribes
    self.clicks = clicks
    self.conversionRate = conversionRate
    self.timeseries = timeseries
    self.ecommerce = ecommerce
    self.webId = webId
    self.listName = listName
    self.signupTags = signupTags
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case title
    case url
    case publishedAt = "published_at"
    case unpublishedAt = "unpublished_at"
    case status
    case listId = "list_id"
    case visits
    case uniqueVisits = "unique_visits"
    case subscribes
    case clicks
    case conversionRate = "conversion_rate"
    case timeseries
    case ecommerce
    case webId = "web_id"
    case listName = "list_name"
    case signupTags = "signup_tags"
    case links = "_links"
  }
}
