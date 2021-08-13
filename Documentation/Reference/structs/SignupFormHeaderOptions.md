**STRUCT**

# `SignupFormHeaderOptions`

```swift
public struct SignupFormHeaderOptions: Codable
```

Options for customizing your signup form header.

## Properties
### `imageUrl`

```swift
public var imageUrl: String?
```

Header image URL.

### `text`

```swift
public var text: String?
```

Header text.

### `imageWidth`

```swift
public var imageWidth: String?
```

Image width, in pixels.

### `imageHeight`

```swift
public var imageHeight: String?
```

Image height, in pixels.

### `imageAlt`

```swift
public var imageAlt: String?
```

Alt text for the image.

### `imageLink`

```swift
public var imageLink: String?
```

The URL that the header image will link to.

### `imageAlign`

```swift
public var imageAlign: ImageAlign?
```

Image alignment.

### `imageBorderWidth`

```swift
public var imageBorderWidth: String?
```

Image border width.

### `imageBorderStyle`

```swift
public var imageBorderStyle: ImageBorderStyle?
```

Image border style.

### `imageBorderColor`

```swift
public var imageBorderColor: String?
```

Image border color.

### `imageTarget`

```swift
public var imageTarget: ImageTarget?
```

Image link target.

## Methods
### `init(imageUrl:text:imageWidth:imageHeight:imageAlt:imageLink:imageAlign:imageBorderWidth:imageBorderStyle:imageBorderColor:imageTarget:)`

```swift
public init(imageUrl: String? = nil, text: String? = nil, imageWidth: String? = nil, imageHeight: String? = nil, imageAlt: String? = nil, imageLink: String? = nil, imageAlign: ImageAlign? = nil, imageBorderWidth: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderColor: String? = nil, imageTarget: ImageTarget? = nil)
```
