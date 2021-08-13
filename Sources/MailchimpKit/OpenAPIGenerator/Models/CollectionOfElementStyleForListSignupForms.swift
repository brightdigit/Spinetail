import Foundation

/** Collection of Element style for List Signup Forms. */

public struct CollectionOfElementStyleForListSignupForms: Codable {
  public enum Selector: String, Codable {
    case pageBackground = "page_background"
    case pageHeader = "page_header"
    case pageOuterWrapper = "page_outer_wrapper"
    case bodyBackground = "body_background"
    case bodyLinkStyle = "body_link_style"
    case formsButtons = "forms_buttons"
    case formsButtonsHovered = "forms_buttons_hovered"
    case formsFieldLabel = "forms_field_label"
    case formsFieldText = "forms_field_text"
    case formsRequired = "forms_required"
    case formsRequiredLegend = "forms_required_legend"
    case formsHelpText = "forms_help_text"
    case formsErrors = "forms_errors"
    case monkeyRewardsBadge = "monkey_rewards_badge"
  }

  /** A string that identifies the element selector. */
  public var selector: Selector?
  /** A collection of options for a selector. */
  public var options: [AnOptionForSignupFormStyles]?

  public init(selector: Selector? = nil, options: [AnOptionForSignupFormStyles]? = nil) {
    self.selector = selector
    self.options = options
  }
}
