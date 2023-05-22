import Foundation
import SpinetailOpenAPI

/// A Mailchimp campaign, reduced to the fields the newsletter importer reads.
///
/// All fields are optional because the importer is responsible for validating
/// presence and emitting domain-specific errors; this type intentionally does
/// not throw. It is mapped from the generated OpenAPI campaign payload.
public struct MailchimpCampaign: Equatable, Sendable {
  /// The unique campaign id.
  public let id: String?
  /// The long-form archive URL for the campaign.
  public let longArchiveURL: String?
  /// The time the campaign was sent.
  public let sendTime: Date?
  /// The campaign subject line (from `settings.subject_line`).
  public let subjectLine: String?
  /// The campaign title (from `settings.title`).
  public let title: String?
  /// The campaign preview text (from `settings.preview_text`).
  public let previewText: String?
  /// The recipients' segment text (from `recipients.segment_text`).
  public let segmentText: String?
  /// The social-card image URL (from `social_card.image_url`).
  public let socialCardImageURL: String?

  /// Memberwise initializer.
  public init(
    id: String?,
    longArchiveURL: String?,
    sendTime: Date?,
    subjectLine: String?,
    title: String?,
    previewText: String?,
    segmentText: String?,
    socialCardImageURL: String?
  ) {
    self.id = id
    self.longArchiveURL = longArchiveURL
    self.sendTime = sendTime
    self.subjectLine = subjectLine
    self.title = title
    self.previewText = previewText
    self.segmentText = segmentText
    self.socialCardImageURL = socialCardImageURL
  }
}

extension MailchimpCampaign {
  /// Maps a generated OpenAPI campaign payload into the flat importer model.
  internal init(
    from campaign: Operations.getCampaigns.Output.Ok.Body.jsonPayload
      .campaignsPayloadPayload
  ) {
    self.init(
      id: campaign.id,
      longArchiveURL: campaign.long_archive_url,
      sendTime: campaign.send_time,
      subjectLine: campaign.settings?.subject_line,
      title: campaign.settings?.title,
      previewText: campaign.settings?.preview_text,
      segmentText: campaign.recipients?.segment_text,
      socialCardImageURL: campaign.social_card?.image_url
    )
  }
}
