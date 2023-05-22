import Foundation

import PrchModel
/** The report for a survey. */
public struct SurveyReportModel: Codable, Equatable, Content {
  /** The survey's status. */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case published
    case unpublished
  }

  /** The date and time the survey was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** A string that uniquely identifies this survey. */
  public var id: String?

  /** The ID of the list connected to this survey. */
  public var listId: String?

  /** The name of the list connected to this survey. */
  public var listName: String?

  /** The date and time the survey was published in ISO 8601 format. */
  public var publishedAt: DateTime?

  /** The survey's status. */
  public var status: Status?

  /** The title of the survey. */
  public var title: String?

  /** The total number of responses to this survey. */
  public var totalResponses: Int?

  /** The date and time the survey was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  /** The URL for the survey. */
  public var url: String?

  /** The ID used in the Mailchimp web application. View this survey report in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/surveys/results?survey_id={web_id}`. */
  public var webId: Int?

  public init(createdAt: DateTime? = nil, id: String? = nil, listId: String? = nil, listName: String? = nil, publishedAt: DateTime? = nil, status: Status? = nil, title: String? = nil, totalResponses: Int? = nil, updatedAt: DateTime? = nil, url: String? = nil, webId: Int? = nil) {
    self.createdAt = createdAt
    self.id = id
    self.listId = listId
    self.listName = listName
    self.publishedAt = publishedAt
    self.status = status
    self.title = title
    self.totalResponses = totalResponses
    self.updatedAt = updatedAt
    self.url = url
    self.webId = webId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case id
    case listId = "list_id"
    case listName = "list_name"
    case publishedAt = "published_at"
    case status
    case title
    case totalResponses = "total_responses"
    case updatedAt = "updated_at"
    case url
    case webId = "web_id"
  }
}
