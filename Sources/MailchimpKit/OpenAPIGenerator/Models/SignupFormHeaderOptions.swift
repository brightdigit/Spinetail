import Foundation

/** Options for customizing your signup form header. */

public struct SignupFormHeaderOptions: Codable {
  public enum ImageAlign: String, Codable {
    case _none = "none"
    case _left = "left"
    case center
    case _right = "right"
  }

  public enum ImageBorderStyle: String, Codable {
    case _none = "none"
    case solid
    case dotted
    case dashed
    case double
    case groove
    case outset
    case inset
    case ridge
  }

  public enum ImageTarget: String, Codable {
    case blank = "_blank"
    case null
  }

  /** Header image URL. */
  public var imageUrl: String?
  /** Header text. */
  public var text: String?
  /** Image width, in pixels. */
  public var imageWidth: String?
  /** Image height, in pixels. */
  public var imageHeight: String?
  /** Alt text for the image. */
  public var imageAlt: String?
  /** The URL that the header image will link to. */
  public var imageLink: String?
  /** Image alignment. */
  public var imageAlign: ImageAlign?
  /** Image border width. */
  public var imageBorderWidth: String?
  /** Image border style. */
  public var imageBorderStyle: ImageBorderStyle?
  /** Image border color. */
  public var imageBorderColor: String?
  /** Image link target. */
  public var imageTarget: ImageTarget?

  public init(imageUrl: String? = nil, text: String? = nil, imageWidth: String? = nil, imageHeight: String? = nil, imageAlt: String? = nil, imageLink: String? = nil, imageAlign: ImageAlign? = nil, imageBorderWidth: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderColor: String? = nil, imageTarget: ImageTarget? = nil) {
    self.imageUrl = imageUrl
    self.text = text
    self.imageWidth = imageWidth
    self.imageHeight = imageHeight
    self.imageAlt = imageAlt
    self.imageLink = imageLink
    self.imageAlign = imageAlign
    self.imageBorderWidth = imageBorderWidth
    self.imageBorderStyle = imageBorderStyle
    self.imageBorderColor = imageBorderColor
    self.imageTarget = imageTarget
  }

  public enum CodingKeys: String, CodingKey {
    case imageUrl = "image_url"
    case text
    case imageWidth = "image_width"
    case imageHeight = "image_height"
    case imageAlt = "image_alt"
    case imageLink = "image_link"
    case imageAlign = "image_align"
    case imageBorderWidth = "image_border_width"
    case imageBorderStyle = "image_border_style"
    case imageBorderColor = "image_border_color"
    case imageTarget = "image_target"
  }
}
