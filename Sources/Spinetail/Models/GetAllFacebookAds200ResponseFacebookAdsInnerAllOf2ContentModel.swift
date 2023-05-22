import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentModel: Codable, Equatable, Content {
  public var attachments: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInnerModel]?

  public var callToAction: String?

  public var description: String?

  public var imageURL: String?

  public var linkURL: String?

  public var message: String?

  public var title: String?

  public init(attachments: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInnerModel]? = nil, callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, message: String? = nil, title: String? = nil) {
    self.attachments = attachments
    self.callToAction = callToAction
    self.description = description
    self.imageURL = imageURL
    self.linkURL = linkURL
    self.message = message
    self.title = title
  }

  public enum CodingKeys: String, CodingKey {
    case attachments
    case callToAction = "call_to_action"
    case description
    case imageURL = "image_url"
    case linkURL = "link_url"
    case message
    case title
  }
}
