import Foundation

/** A summary of a specific list&#x27;s growth activity for a specific month and year. */

public struct GrowthHistory1: Codable {
  /** The list id for the growth activity report. */
  public var listId: String?
  /** The month that the growth history is describing. */
  public var month: String?
  /** (deprecated) */
  public var existing: Int?
  /** (deprecated) */
  public var imports: Int?
  /** (deprecated) */
  public var optins: Int?
  /** Total subscribed members on the list at the end of the month. */
  public var subscribed: Int?
  /** Newly unsubscribed members on the list for a specific month. */
  public var unsubscribed: Int?
  /** Newly reconfirmed members on the list for a specific month. */
  public var reconfirm: Int?
  /** Newly cleaned (hard-bounced) members on the list for a specific month. */
  public var cleaned: Int?
  /** Pending members on the list for a specific month. */
  public var pending: Int?
  /** Newly deleted members on the list for a specific month. */
  public var deleted: Int?
  /** Subscribers that have been sent transactional emails via Mandrill. */
  public var transactional: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(listId: String? = nil, month: String? = nil, existing: Int? = nil, imports: Int? = nil, optins: Int? = nil, subscribed: Int? = nil, unsubscribed: Int? = nil, reconfirm: Int? = nil, cleaned: Int? = nil, pending: Int? = nil, deleted: Int? = nil, transactional: Int? = nil, links: [ResourceLink]? = nil) {
    self.listId = listId
    self.month = month
    self.existing = existing
    self.imports = imports
    self.optins = optins
    self.subscribed = subscribed
    self.unsubscribed = unsubscribed
    self.reconfirm = reconfirm
    self.cleaned = cleaned
    self.pending = pending
    self.deleted = deleted
    self.transactional = transactional
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case month
    case existing
    case imports
    case optins
    case subscribed
    case unsubscribed
    case reconfirm
    case cleaned
    case pending
    case deleted
    case transactional
    case links = "_links"
  }
}
