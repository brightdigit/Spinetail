import Foundation

public struct InlineResponse20011ReportSummaryExtendedAt: Codable {
  public var datetime: String?
  public var timezone: String?

  public init(datetime: String? = nil, timezone: String? = nil) {
    self.datetime = datetime
    self.timezone = timezone
  }
}
