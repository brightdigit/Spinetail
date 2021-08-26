import Foundation


public protocol Model: Codable, Equatable {}

public typealias DateTime = JSONOptionalDate
public typealias File = Data
public typealias ID = UUID

fileprivate let _dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                                                        locale: Locale(identifier: "en_US_POSIX"),
                                                        calendar: Calendar(identifier: .gregorian))

public protocol ResponseDecoder {
  func decode<T: Decodable>(_ type: T.Type, from: Data) throws -> T
}

extension JSONDecoder: ResponseDecoder {}

public protocol RequestEncoder {
  func encode<T: Encodable>(_ value: T) throws -> Data
}

extension JSONEncoder: RequestEncoder {}

extension Model {
  func encode() -> [String: Any] {
    guard
      let jsonData = try? JSONEncoder().encode(self),
      let jsonValue = try? JSONSerialization.jsonObject(with: jsonData),
      let jsonDictionary = jsonValue as? [String: Any] else {
      return [:]
    }
    return jsonDictionary
  }
}

public struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
  private let string: String
  private let int: Int?

  public var stringValue: String { string }

  public init(string: String) {
    self.string = string
    int = nil
  }

  public init?(stringValue: String) {
    string = stringValue
    int = nil
  }

  public var intValue: Int? { int }
  public init?(intValue: Int) {
    string = String(describing: intValue)
    int = intValue
  }

  public init(stringLiteral value: String) {
    string = value
    int = nil
  }
}

// any json decoding
public extension ResponseDecoder {
  func decodeAny<T>(_: T.Type, from data: Data) throws -> T {
    guard let decoded = try decode(AnyCodable.self, from: data) as? T else {
      throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: [StringCodingKey(string: "")], debugDescription: "Decoding of \(T.self) failed"))
    }
    return decoded
  }
}

// any decoding
public extension KeyedDecodingContainer {
  func decodeAny<T>(_: T.Type, forKey key: K) throws -> T {
    guard let value = try decode(AnyCodable.self, forKey: key).value as? T else {
      throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: codingPath, debugDescription: "Decoding of \(T.self) failed"))
    }
    return value
  }

  func decodeAnyIfPresent<T>(_: T.Type, forKey key: K) throws -> T? {
    try decodeOptional {
      guard let value = try decodeIfPresent(AnyCodable.self, forKey: key)?.value else { return nil }
      if let typedValue = value as? T {
        return typedValue
      } else {
        throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: codingPath, debugDescription: "Decoding of \(T.self) failed"))
      }
    }
  }

  func toDictionary() throws -> [String: Any] {
    var dictionary: [String: Any] = [:]
    for key in allKeys {
      dictionary[key.stringValue] = try decodeAny(key)
    }
    return dictionary
  }

  func decode<T>(_ key: KeyedDecodingContainer.Key) throws -> T where T: Decodable {
    try decode(T.self, forKey: key)
  }

  func decodeIfPresent<T>(_ key: KeyedDecodingContainer.Key) throws -> T? where T: Decodable {
    try decodeOptional {
      try decodeIfPresent(T.self, forKey: key)
    }
  }

  func decodeIfPresent(_ key: KeyedDecodingContainer.Key) throws -> DateTime {
    try decodeIfPresent(DateTime.self, forKey: key) ?? .none
  }

  func decodeAny<T>(_ key: K) throws -> T {
    try decodeAny(T.self, forKey: key)
  }

  func decodeAnyIfPresent<T>(_ key: K) throws -> T? {
    try decodeAnyIfPresent(T.self, forKey: key)
  }

  func decodeArray<T: Decodable>(_ key: K, safeArrayDecoding: Bool = false) throws -> [T] {
    var container: UnkeyedDecodingContainer
    var array: [T] = []

    do {
      container = try nestedUnkeyedContainer(forKey: key)
    } catch {
      if safeArrayDecoding {
        return array
      } else {
        throw error
      }
    }

    while !container.isAtEnd {
      do {
        let element = try container.decode(T.self)
        array.append(element)
      } catch {
        if safeArrayDecoding {
          // hack to advance the current index
          _ = try? container.decode(AnyCodable.self)
        } else {
          throw error
        }
      }
    }
    return array
  }

  public func decodeArrayIfPresent<T: Decodable>(_ key: K) throws -> [T]? {
    try decodeOptional {
      if contains(key) {
        return try decodeArray(key)
      } else {
        return nil
      }
    }
  }

  private func decodeOptional<T>(_ closure: () throws -> T?, safeOptionalDecoding: Bool = false) throws -> T? {
    if safeOptionalDecoding {
      do {
        return try closure()
      } catch {
        return nil
      }
    } else {
      return try closure()
    }
  }
}

// any encoding
public extension KeyedEncodingContainer {
  mutating func encodeAnyIfPresent<T>(_ value: T?, forKey key: K) throws {
    guard let value = value else { return }
    try encodeIfPresent(AnyCodable(value), forKey: key)
  }

  mutating func encodeAny<T>(_ value: T, forKey key: K) throws {
    try encode(AnyCodable(value), forKey: key)
  }
}

// Date structs for date and date-time formats

public extension DateFormatter {
  convenience init(formatString: String, locale: Locale? = nil, timeZone: TimeZone? = nil, calendar: Calendar? = nil) {
    self.init()
    dateFormat = formatString
    if let locale = locale {
      self.locale = locale
    }
    if let timeZone = timeZone {
      self.timeZone = timeZone
    }
    if let calendar = calendar {
      self.calendar = calendar
    }
  }

  convenience init(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) {
    self.init()
    self.dateStyle = dateStyle
    self.timeStyle = timeStyle
  }
}

let dateDecoder: (Decoder) throws -> Date = { decoder in
  let container = try decoder.singleValueContainer()
  let string = try container.decode(String.self)

  let formatterWithMilliseconds = DateFormatter()
  formatterWithMilliseconds.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
  formatterWithMilliseconds.locale = Locale(identifier: "en_US_POSIX")
  formatterWithMilliseconds.timeZone = TimeZone(identifier: "UTC")
  formatterWithMilliseconds.calendar = Calendar(identifier: .gregorian)

  let formatterWithoutMilliseconds = DateFormatter()
  formatterWithoutMilliseconds.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
  formatterWithoutMilliseconds.locale = Locale(identifier: "en_US_POSIX")
  formatterWithoutMilliseconds.timeZone = TimeZone(identifier: "UTC")
  formatterWithoutMilliseconds.calendar = Calendar(identifier: .gregorian)

  guard let date = formatterWithMilliseconds.date(from: string) ??
    formatterWithoutMilliseconds.date(from: string) else {
    throw DecodingError.dataCorruptedError(in: container, debugDescription: "Could not decode date")
  }
  return date
}

public struct DateDay: Codable, Comparable {
  /// The date formatter used for encoding and decoding
  public static let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.calendar = .current
    return formatter
  }()

  public let date: Date
  public let year: Int
  public let month: Int
  public let day: Int

  public init(date: Date = Date()) {
    self.date = date
    let dateComponents = Calendar.current.dateComponents([.day, .month, .year], from: date)
    guard let year = dateComponents.year,
          let month = dateComponents.month,
          let day = dateComponents.day else {
      fatalError("Date does not contain correct components")
    }
    self.year = year
    self.month = month
    self.day = day
  }

  public init(year: Int, month: Int, day: Int) {
    let dateComponents = DateComponents(calendar: .current, year: year, month: month, day: day)
    guard let date = dateComponents.date else {
      fatalError("Could not create date in current calendar")
    }
    self.date = date
    self.year = year
    self.month = month
    self.day = day
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let string = try container.decode(String.self)
    guard let date = DateDay.dateFormatter.date(from: string) else {
      throw DecodingError.dataCorruptedError(in: container, debugDescription: "Date not in correct format of \(DateDay.dateFormatter.dateFormat ?? "")")
    }
    self.init(date: date)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    let string = DateDay.dateFormatter.string(from: date)
    try container.encode(string)
  }

  public static func == (lhs: DateDay, rhs: DateDay) -> Bool {
    lhs.year == rhs.year &&
      lhs.month == rhs.month &&
      lhs.day == rhs.day
  }

  public static func < (lhs: DateDay, rhs: DateDay) -> Bool {
    lhs.date < rhs.date
  }
}

public extension DateFormatter {
  func string(from dateDay: DateDay) -> String {
    string(from: dateDay.date)
  }
}

// for parameter encoding

public extension DateDay {
  func encode() -> Any {
    DateDay.dateFormatter.string(from: date)
  }
}

public extension Date {
  func encode() -> Any {
    _dateEncodingFormatter.string(from: self)
  }
}

public extension JSONOptionalDate {
  func encode() -> Any? {
    date?.encode()
  }
}

public extension URL {
  func encode() -> Any {
    absoluteString
  }
}

public extension RawRepresentable {
  func encode() -> Any {
    rawValue
  }
}

public extension Array where Element: RawRepresentable {
  func encode() -> [Any] {
    map { $0.rawValue }
  }
}

public extension Dictionary where Key == String, Value: RawRepresentable {
  func encode() -> [String: Any] {
    mapValues { $0.rawValue }
  }
}

public extension UUID {
  func encode() -> Any {
    uuidString
  }
}

extension String {
  func encode() -> Any {
    self
  }
}

extension Data {
  func encode() -> Any {
    self
  }
}
