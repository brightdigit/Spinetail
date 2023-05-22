import Foundation

import PrchModel
/** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
public struct AddListMembersModel: Codable, Equatable, Content {
  /** Subscriber's current status. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
  }

  /** Email address for a subscriber. */
  public var emailAddress: String?

  /** Type of email this member asked to get ('html' or 'text'). */
  public var emailType: String?

  /** The key of this object's properties is the ID of the interest in question. */
  public var interests: [String: Bool]?

  /** The IP address the subscriber used to confirm their opt-in status. */
  public var ipOpt: String?

  /** IP address the subscriber signed up from. */
  public var ipSignup: String?

  /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
  public var language: String?

  public var location: LocationModel?

  /** A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure. */
  public var mergeFields: [String: String]?

  /** Subscriber's current status. */
  public var status: Status?

  /** The date and time the subscriber confirmed their opt-in status in ISO 8601 format. */
  public var timestampOpt: DateTime?

  /** The date and time the subscriber signed up for the list in ISO 8601 format. */
  public var timestampSignup: DateTime?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?

  public init(emailAddress: String? = nil, emailType: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, location: LocationModel? = nil, mergeFields: [String: String]? = nil, status: Status? = nil, timestampOpt: DateTime? = nil, timestampSignup: DateTime? = nil, vip: Bool? = nil) {
    self.emailAddress = emailAddress
    self.emailType = emailType
    self.interests = interests
    self.ipOpt = ipOpt
    self.ipSignup = ipSignup
    self.language = language
    self.location = location
    self.mergeFields = mergeFields
    self.status = status
    self.timestampOpt = timestampOpt
    self.timestampSignup = timestampSignup
    self.vip = vip
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
    case emailType = "email_type"
    case interests
    case ipOpt = "ip_opt"
    case ipSignup = "ip_signup"
    case language
    case location
    case mergeFields = "merge_fields"
    case status
    case timestampOpt = "timestamp_opt"
    case timestampSignup = "timestamp_signup"
    case vip
  }
}
