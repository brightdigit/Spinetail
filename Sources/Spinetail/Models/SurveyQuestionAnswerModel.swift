import Foundation

import PrchModel
/** The details of a survey question's answer. */
public struct SurveyQuestionAnswerModel: Codable, Equatable, Content {
  public var contact: ContactModel?

  /** The ID of the answer. */
  public var id: String?

  /** If this contact was added to the Mailchimp audience via this survey. */
  public var isNewContact: Bool?

  /** The ID of the survey response. */
  public var responseId: String?

  /** The date and time when the survey response was submitted in ISO 8601 format. */
  public var submittedAt: DateTime?

  /** The raw text answer. */
  public var value: String?

  public init(contact: ContactModel? = nil, id: String? = nil, isNewContact: Bool? = nil, responseId: String? = nil, submittedAt: DateTime? = nil, value: String? = nil) {
    self.contact = contact
    self.id = id
    self.isNewContact = isNewContact
    self.responseId = responseId
    self.submittedAt = submittedAt
    self.value = value
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case contact
    case id
    case isNewContact = "is_new_contact"
    case responseId = "response_id"
    case submittedAt = "submitted_at"
    case value
  }
}
