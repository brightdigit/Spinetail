import Foundation

import PrchModel
/** A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience. */
public struct MergeFieldModel: Codable, Equatable, Content {
  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case text
    case number
    case address
    case phone
    case date
    case url
    case imageurl
    case radio
    case dropdown
    case birthday
    case zip
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The default value for the merge field if `null`. */
  public var defaultValue: String?

  /** The order that the merge field displays on the list signup form. */
  public var displayOrder: Int?

  /** Extra text to help the subscriber fill out the form. */
  public var helpText: String?

  /** The ID that identifies this merge field's audience'. */
  public var listId: String?

  /** An unchanging id for the merge field. */
  public var mergeId: Int?

  /** The name of the merge field (audience field). */
  public var name: String?

  public var options: MergeFieldOptionsModel?

  /** Whether the merge field is displayed on the signup form. */
  public var `public`: Bool?

  /** The boolean value if the merge field is required. */
  public var required: Bool?

  /** The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts). */
  public var tag: String?

  /** The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field. */
  public var type: `Type`?

  public init(links: [ResourceLinkModel]? = nil, defaultValue: String? = nil, displayOrder: Int? = nil, helpText: String? = nil, listId: String? = nil, mergeId: Int? = nil, name: String? = nil, options: MergeFieldOptionsModel? = nil, public: Bool? = nil, required: Bool? = nil, tag: String? = nil, type: Type? = nil) {
    self.links = links
    self.defaultValue = defaultValue
    self.displayOrder = displayOrder
    self.helpText = helpText
    self.listId = listId
    self.mergeId = mergeId
    self.name = name
    self.options = options
    self.public = `public`
    self.required = required
    self.tag = tag
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case defaultValue = "default_value"
    case displayOrder = "display_order"
    case helpText = "help_text"
    case listId = "list_id"
    case mergeId = "merge_id"
    case name
    case options
    case `public`
    case required
    case tag
    case type
  }
}
