import Foundation

public enum Mailchimp {
  /// Whether to discard any errors when decoding optional properties
  public static var safeOptionalDecoding = false

  /// Whether to remove invalid elements instead of throwing when decoding arrays
  public static var safeArrayDecoding = false

  /// Used to encode Dates when uses as string params
  public static var dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                                                          locale: Locale(identifier: "en_US_POSIX"),
                                                          calendar: Calendar(identifier: .gregorian))

  public static let version = "3.0.55"



  public enum Server {
    public static let main = "https://server.api.mailchimp.com/3.0"
  }
}
public enum ActivityFeed {}
public enum AuthorizedApps {}
public enum Automations {}
public enum BatchWebhooks {}
public enum Batches {}
public enum CampaignFolders {}
public enum Campaigns {}
public enum ConnectedSites {}
public enum Conversations {}
public enum CustomerJourneys {}
public enum Ecommerce {}
public enum FacebookAds {}
public enum FileManager {}
public enum LandingPages {}
public enum Lists {}
public enum Ping {}
public enum Reporting {}
public enum Reports {}
public enum Root {}
public enum SearchCampaigns {}
public enum SearchMembers {}
public enum TemplateFolders {}
public enum Templates {}
public enum VerifiedDomains {}
