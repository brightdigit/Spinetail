import Foundation

/** The script used to connect your site with Mailchimp. */

public struct Script: Codable {
  /** The URL used for any integrations that offer built-in support for connected sites. */
  public var url: String?
  /** A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp. */
  public var fragment: String?

  public init(url: String? = nil, fragment: String? = nil) {
    self.url = url
    self.fragment = fragment
  }
}
