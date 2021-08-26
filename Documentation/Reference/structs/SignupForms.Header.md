**STRUCT**

# `SignupForms.Header`

```swift
public struct Header: Model
```

Options for customizing your signup form header.

## Properties
### `imageAlign`

```swift
public var imageAlign: ImageAlign?
```

Image alignment.

### `imageAlt`

```swift
public var imageAlt: String?
```

Alt text for the image.

### `imageBorderColor`

```swift
public var imageBorderColor: String?
```

Image border color.

### `imageBorderStyle`

```swift
public var imageBorderStyle: ImageBorderStyle?
```

Image border style.

### `imageBorderWidth`

```swift
public var imageBorderWidth: String?
```

Image border width.

### `imageHeight`

```swift
public var imageHeight: String?
```

Image height, in pixels.

### `imageLink`

```swift
public var imageLink: String?
```

The URL that the header image will link to.

### `imageTarget`

```swift
public var imageTarget: ImageTarget?
```

Image link target.

### `imageURL`

```swift
public var imageURL: String?
```

Header image URL.

### `imageWidth`

```swift
public var imageWidth: String?
```

Image width, in pixels.

### `text`

```swift
public var text: String?
```

Header text.

## Methods
### `init(imageAlign:imageAlt:imageBorderColor:imageBorderStyle:imageBorderWidth:imageHeight:imageLink:imageTarget:imageURL:imageWidth:text:)`

```swift
public init(imageAlign: ImageAlign? = nil, imageAlt: String? = nil, imageBorderColor: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderWidth: String? = nil, imageHeight: String? = nil, imageLink: String? = nil, imageTarget: ImageTarget? = nil, imageURL: String? = nil, imageWidth: String? = nil, text: String? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
