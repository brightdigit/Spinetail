{ % include "Includes/Header.stencil" % }

import Foundation
import PrchModel

  { % if options.modelProtocol % }
public protocol {{ options.modelProtocol }}: Codable, Equatable {}
{ % endif % }

{ % for type, typealias in options.typeAliases % }
public typealias {{ type }} = {{ typealias }}
{ % endfor % }

{ % for tag in tags % }
public enum {{ options.tagPrefix }} {{ tag | upperCamelCase }} {{ options.tagSuffix }} {}
{ % endfor % }

public protocol BaseURLProvider {
  var baseURLComponents: URLComponents? { get }
}

public class SpinetailAPI: API {
  public init(baseURLProvider: BaseURLProvider) {
    self.baseURLProvider = baseURLProvider
  }

  public var isReady: Bool {
    baseURLProvider.baseURLComponents != nil
  }

  public let baseURLProvider: BaseURLProvider
  public var baseURLComponents: URLComponents {
    guard let baseURLComponents = baseURLProvider.baseURLComponents else {
      assertionFailure("BaseURLProvider is not ready")
      return URLComponents()
    }

    return baseURLComponents
  }

  public var headers: [String: String] {
    Defaults.headers
  }

  public var encoder: any Encoder<Data> {
    Defaults.encoder
  }

  public var decoder: any Decoder<Data> {
    Defaults.decoder
  }

  public typealias RequestDataType = Data

  public typealias ResponseDataType = Data
}

extension JSONDecoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateDecodingStrategy = .formatted(dateFormatter)
  }
}

extension JSONEncoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateEncodingStrategy = .formatted(dateFormatter)
  }
}

extension SpinetailAPI {
  enum Defaults {
    public static let dateEncodingFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
      formatter.locale = Locale(identifier: "en_US_POSIX")
      formatter.calendar = Calendar(identifier: .gregorian)
      return formatter
    }()

    public static let encoder: any Encoder<Data> = JSONEncoder(dateFormatter: Self.dateEncodingFormatter)

    public static let decoder: any Decoder<Data> = JSONDecoder(dateFormatter: Self.dateEncodingFormatter)

    public static let headers: [String: String] =
      ["Content-Type": "application/json; charset=utf-8"]
  }
}
