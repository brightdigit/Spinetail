import Foundation

/** Channel settings */

public struct InlineResponse2009Channel: Codable {
  /** Is this for facebook feed */
  public var fbPlacementFeed: Bool?
  /** Is this for facebook audience */
  public var fbPlacementAudience: Bool?
  /** Is this for instagram feed */
  public var igPlacementFeed: Bool?

  public init(fbPlacementFeed: Bool? = nil, fbPlacementAudience: Bool? = nil, igPlacementFeed: Bool? = nil) {
    self.fbPlacementFeed = fbPlacementFeed
    self.fbPlacementAudience = fbPlacementAudience
    self.igPlacementFeed = igPlacementFeed
  }

  public enum CodingKeys: String, CodingKey {
    case fbPlacementFeed = "fb_placement_feed"
    case fbPlacementAudience = "fb_placement_audience"
    case igPlacementFeed = "ig_placement_feed"
  }
}
