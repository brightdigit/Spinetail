import Foundation
import PrchModel

public class SpinetailAPI: API {
  private let apiKey: String
  private let dc: String

  public init?(apiKey: String) {
    self.apiKey = apiKey
    let apiKeyComponents = apiKey.components(separatedBy: "-")

    guard let dc = apiKeyComponents.last, apiKeyComponents.count == 2 else {
      return nil
    }

    self.dc = dc

    guard let baseURLComponents = URLComponents(string: "https://\(dc).api.mailchimp.com/3.0") else {
      return nil
    }
    self.baseURLComponents = baseURLComponents
  }

  public let baseURLComponents: URLComponents

  public var headers: [String: String] {
    [
      "Authorization": "anystring \(apiKey)",
      "Content-type": "application/json; charset=utf-8"
    ]
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

extension AutomationsAutomationsJSONDecoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateDecodingStrategy = .formatted(dateFormatter)
  }
}

extension AutomationsAutomationsJSONEncoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateEncodingStrategy = .formatted(dateFormatter)
  }
}


public struct MailchimpOptionalDate: Codable, Equatable {
  public init(value: Date? = nil) {
    self.value = value
  }

  public let value: Date?

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let string = try container.decode(String.self)
    if string == "" {
      value = nil
    } else {
      value = try container.decode(Date.self)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    if let value = value {
      try container.encode(value)
    } else {
      try container.encode("")
    }
  }
}

extension AutomationsAutomationsSpinetailAPI {
  enum AutomationsAutomationsDefaults {
    public static let dateEncodingFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
      formatter.locale = Locale(identifier: "en_US_POSIX")
      formatter.calendar = Calendar(identifier: .gregorian)
      return formatter
    }()

    public static let encoder: any Encoder<Data> = JSONEncoder(dateFormatter: Self.dateEncodingFormatter)

    public static let decoder: any Decoder<Data> = JSONDecoder(dateFormatter: Self.dateEncodingFormatter)
  }
}
