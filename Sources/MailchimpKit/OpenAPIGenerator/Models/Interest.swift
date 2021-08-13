import Foundation

/** Assign subscribers to interests to group them together. Interests are referred to as &#x27;group names&#x27; in the Mailchimp application. */

public struct Interest: Codable {
  /** The name of the interest. This can be shown publicly on a subscription form. */
  public var name: String
  /** The display order for interests. */
  public var displayOrder: Int?

  public init(name: String, displayOrder: Int? = nil) {
    self.name = name
    self.displayOrder = displayOrder
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case displayOrder = "display_order"
  }
}
