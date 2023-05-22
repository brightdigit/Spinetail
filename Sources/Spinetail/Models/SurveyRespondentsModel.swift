import Foundation

import PrchModel
/** Survey respondent details. */
public struct SurveyRespondentsModel: Codable, Equatable, Content {
  public var contact: ContactModel?

  /** If this contact was added to the Mailchimp audience via this survey. */
  public var isNewContact: Bool?

  /** The ID for the survey response. */
  public var responseId: String?

  /** The date and time when the survey response was submitted in ISO 8601 format. */
  public var submittedAt: DateTime?

  public init(contact: ContactModel? = nil, isNewContact: Bool? = nil, responseId: String? = nil, submittedAt: DateTime? = nil) {
    self.contact = contact
    self.isNewContact = isNewContact
    self.responseId = responseId
    self.submittedAt = submittedAt
  }

  public enum CodingKeys: String, CodingKey {
    case contact
    case isNewContact = "is_new_contact"
    case responseId = "response_id"
    case submittedAt = "submitted_at"
  }
}
