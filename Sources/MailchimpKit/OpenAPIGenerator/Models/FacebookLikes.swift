import Foundation

/** An object describing campaign engagement on Facebook. */

public struct FacebookLikes: Codable {
  /** The number of recipients who liked the campaign on Facebook. */
  public var recipientLikes: Int?
  /** The number of unique likes. */
  public var uniqueLikes: Int?
  /** The number of Facebook likes for the campaign. */
  public var facebookLikes: Int?

  public init(recipientLikes: Int? = nil, uniqueLikes: Int? = nil, facebookLikes: Int? = nil) {
    self.recipientLikes = recipientLikes
    self.uniqueLikes = uniqueLikes
    self.facebookLikes = facebookLikes
  }

  public enum CodingKeys: String, CodingKey {
    case recipientLikes = "recipient_likes"
    case uniqueLikes = "unique_likes"
    case facebookLikes = "facebook_likes"
  }
}
