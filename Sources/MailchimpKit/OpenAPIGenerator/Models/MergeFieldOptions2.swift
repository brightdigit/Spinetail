import Foundation

/** Extra options for some merge field types. */

public struct MergeFieldOptions2: Codable {
  /** In an address field, the default country code if none supplied. */
  public var defaultCountry: Int?
  /** In a phone field, the phone number type: US or International. */
  public var phoneFormat: String?
  /** In a date or birthday field, the format of the date. */
  public var dateFormat: String?
  /** In a radio or dropdown non-group field, the available options for members to pick from. */
  public var choices: [String]?
  /** In a text field, the default length of the text field. */
  public var size: Int?

  public init(defaultCountry: Int? = nil, phoneFormat: String? = nil, dateFormat: String? = nil, choices: [String]? = nil, size: Int? = nil) {
    self.defaultCountry = defaultCountry
    self.phoneFormat = phoneFormat
    self.dateFormat = dateFormat
    self.choices = choices
    self.size = size
  }

  public enum CodingKeys: String, CodingKey {
    case defaultCountry = "default_country"
    case phoneFormat = "phone_format"
    case dateFormat = "date_format"
    case choices
    case size
  }
}
