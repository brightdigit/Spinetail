import Foundation

/** The settings specific to A/B test campaigns. */

public struct ABTestOptions: Codable {
  public enum WinnerCriteria: String, Codable {
    case opens
    case clicks
    case manual
    case totalRevenue = "total_revenue"
  }

  /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with &#x27;manual&#x27; as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
  public var winnerCriteria: WinnerCriteria
  /** The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes. */
  public var waitTime: Int?
  /** The percentage of recipients to send the test combinations to, must be a value between 10 and 100. */
  public var testSize: Int?
  /** The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used. */
  public var subjectLines: [String]?
  /** The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored. */
  public var sendTimes: [Date]?
  /** The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used. */
  public var fromNames: [String]?
  /** The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used. */
  public var replyToAddresses: [String]?

  public init(winnerCriteria: WinnerCriteria, waitTime: Int? = nil, testSize: Int? = nil, subjectLines: [String]? = nil, sendTimes: [Date]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil) {
    self.winnerCriteria = winnerCriteria
    self.waitTime = waitTime
    self.testSize = testSize
    self.subjectLines = subjectLines
    self.sendTimes = sendTimes
    self.fromNames = fromNames
    self.replyToAddresses = replyToAddresses
  }

  public enum CodingKeys: String, CodingKey {
    case winnerCriteria = "winner_criteria"
    case waitTime = "wait_time"
    case testSize = "test_size"
    case subjectLines = "subject_lines"
    case sendTimes = "send_times"
    case fromNames = "from_names"
    case replyToAddresses = "reply_to_addresses"
  }
}
