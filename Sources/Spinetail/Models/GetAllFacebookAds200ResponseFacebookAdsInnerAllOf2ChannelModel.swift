import Foundation

import PrchModel
/** Channel settings */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel: Codable, Equatable, Content {
  /** Is this for facebook audience */
  public var fbPlacementAudience: Bool?

  /** Is this for facebook feed */
  public var fbPlacementFeed: Bool?

  /** Is this for instagram feed */
  public var igPlacementFeed: Bool?

  public init(fbPlacementAudience: Bool? = nil, fbPlacementFeed: Bool? = nil, igPlacementFeed: Bool? = nil) {
    self.fbPlacementAudience = fbPlacementAudience
    self.fbPlacementFeed = fbPlacementFeed
    self.igPlacementFeed = igPlacementFeed
  }

  public enum CodingKeys: String, CodingKey {
    case fbPlacementAudience = "fb_placement_audience"
    case fbPlacementFeed = "fb_placement_feed"
    case igPlacementFeed = "ig_placement_feed"
  }
}
