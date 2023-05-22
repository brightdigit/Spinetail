import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfModel: Codable, Equatable, Content {
  /** Campaign, Ad, or Page status */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case active
    case disconnected
    case somepaused
    case draft
    case completed
    case partialRejected
    case pending
    case rejected
    case published
    case unpublished
  }

  /** Supported Campaign, Ad, Page type */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case rss
    case reconfirm
    case variate
    case absplit
    case automation
    case facebook
    case google
    case autoresponder
    case transactional
    case page
    case website
    case survey
  }

  public var canceledAt: DateTime?

  public var createTime: DateTime?

  public var hasSegment: Bool?

  /** Unique ID of an Outreach */
  public var id: String?

  /** Title or name of an Outreach */
  public var name: String?

  public var publishedTime: DateTime?

  public var recipients: List10Model?

  public var reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel?

  /** Outreach report availability */
  public var showReport: Bool?

  public var startTime: DateTime?

  /** Campaign, Ad, or Page status */
  public var status: Status?

  /** The URL of the thumbnail for this outreach */
  public var thumbnail: String?

  /** Supported Campaign, Ad, Page type */
  public var type: `Type`?

  public var updatedAt: DateTime?

  /** Web ID */
  public var webId: Int?

  public init(canceledAt: DateTime? = nil, createTime: DateTime? = nil, hasSegment: Bool? = nil, id: String? = nil, name: String? = nil, publishedTime: DateTime? = nil, recipients: List10Model? = nil, reportSummary: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel? = nil, showReport: Bool? = nil, startTime: DateTime? = nil, status: Status? = nil, thumbnail: String? = nil, type: Type? = nil, updatedAt: DateTime? = nil, webId: Int? = nil) {
    self.canceledAt = canceledAt
    self.createTime = createTime
    self.hasSegment = hasSegment
    self.id = id
    self.name = name
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.startTime = startTime
    self.status = status
    self.thumbnail = thumbnail
    self.type = type
    self.updatedAt = updatedAt
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case canceledAt = "canceled_at"
    case createTime = "create_time"
    case hasSegment = "has_segment"
    case id
    case name
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case webId = "web_id"
  }
}
