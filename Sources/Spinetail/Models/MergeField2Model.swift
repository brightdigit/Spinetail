import Foundation

import PrchModel
/** A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct MergeField2Model: Codable, Equatable, Content {
  /** The name of the merge field (audience field). */
  public var name: String

  /** The default value for the merge field if `null`. */
  public var defaultValue: String?

  /** The order that the merge field displays on the list signup form. */
  public var displayOrder: Int?

  /** Extra text to help the subscriber fill out the form. */
  public var helpText: String?

  public var options: MergeFieldOptions2Model?

  /** Whether the merge field is displayed on the signup form. */
  public var `public`: Bool?

  /** Whether the merge field is required to import a contact. */
  public var required: Bool?

  /** The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts). */
  public var tag: String?

  public init(name: String, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, options: MergeFieldOptions2Model? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil) {
    self.name = name
    self.defaultValue = defaultValue
    self.displayOrder = displayOrder
    self.helpText = helpText
    self.options = options
    self.public = `public`
    self.required = required
    self.tag = tag
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case defaultValue = "default_value"
    case displayOrder = "display_order"
    case helpText = "help_text"
    case options
    case `public`
    case required
    case tag
  }
}
