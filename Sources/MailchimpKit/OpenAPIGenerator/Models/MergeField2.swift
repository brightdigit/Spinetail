import Foundation

/** A merge field ([audience field](https://mailchimp.com/help/getting-started-with-merge-tags/)) for a list. */

public struct MergeField2: Codable {
  /** The merge tag used in Mailchimp campaigns and for the /members endpoint. */
  public var tag: String?
  /** The name of the merge field (audience field). */
  public var name: String
  /** Whether the merge field is required to import a contact. */
  public var _required: Bool?
  /** The default value for the merge field if &#x60;null&#x60;. */
  public var defaultValue: String?
  /** Whether the merge field is displayed on the signup form. */
  public var _public: Bool?
  /** The order that the merge field displays on the list signup form. */
  public var displayOrder: Int?
  public var options: MergeFieldOptions1?
  /** Extra text to help the subscriber fill out the form. */
  public var helpText: String?

  public init(tag: String? = nil, name: String, _required: Bool? = nil, defaultValue: String? = nil, _public: Bool? = nil, displayOrder: Int? = nil, options: MergeFieldOptions1? = nil, helpText: String? = nil) {
    self.tag = tag
    self.name = name
    self._required = _required
    self.defaultValue = defaultValue
    self._public = _public
    self.displayOrder = displayOrder
    self.options = options
    self.helpText = helpText
  }

  public enum CodingKeys: String, CodingKey {
    case tag
    case name
    case _required = "required"
    case defaultValue = "default_value"
    case _public = "public"
    case displayOrder = "display_order"
    case options
    case helpText = "help_text"
  }
}
