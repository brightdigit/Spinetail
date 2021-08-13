import Foundation

/** One day&#x27;s worth of list activity. Doesn&#x27;t include Automation activity. */

public struct DailyListActivity: Codable {
  /** The date for the activity summary. */
  public var day: String?
  /** The total number of emails sent on the date for the activity summary. */
  public var emailsSent: Int?
  /** The number of unique opens. */
  public var uniqueOpens: Int?
  /** The number of clicks. */
  public var recipientClicks: Int?
  /** The number of hard bounces. */
  public var hardBounce: Int?
  /** The number of soft bounces */
  public var softBounce: Int?
  /** The number of subscribes. */
  public var subs: Int?
  /** The number of unsubscribes. */
  public var unsubs: Int?
  /** The number of subscribers who may have been added outside of the [double opt-in process](https://mailchimp.com/help/about-double-opt-in/), such as imports or API activity. */
  public var otherAdds: Int?
  /** The number of subscribers who may have been removed outside of unsubscribing or reporting an email as spam (for example, deleted subscribers). */
  public var otherRemoves: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(day: String? = nil, emailsSent: Int? = nil, uniqueOpens: Int? = nil, recipientClicks: Int? = nil, hardBounce: Int? = nil, softBounce: Int? = nil, subs: Int? = nil, unsubs: Int? = nil, otherAdds: Int? = nil, otherRemoves: Int? = nil, links: [ResourceLink]? = nil) {
    self.day = day
    self.emailsSent = emailsSent
    self.uniqueOpens = uniqueOpens
    self.recipientClicks = recipientClicks
    self.hardBounce = hardBounce
    self.softBounce = softBounce
    self.subs = subs
    self.unsubs = unsubs
    self.otherAdds = otherAdds
    self.otherRemoves = otherRemoves
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case day
    case emailsSent = "emails_sent"
    case uniqueOpens = "unique_opens"
    case recipientClicks = "recipient_clicks"
    case hardBounce = "hard_bounce"
    case softBounce = "soft_bounce"
    case subs
    case unsubs
    case otherAdds = "other_adds"
    case otherRemoves = "other_removes"
    case links = "_links"
  }
}
