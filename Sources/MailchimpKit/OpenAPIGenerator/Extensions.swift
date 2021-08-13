import Alamofire
import Foundation

extension Bool: JSONEncodable {
  func encodeToJSON() -> Any { self as Any }
}

extension Float: JSONEncodable {
  func encodeToJSON() -> Any { self as Any }
}

extension Int: JSONEncodable {
  func encodeToJSON() -> Any { self as Any }
}

extension Int32: JSONEncodable {
  func encodeToJSON() -> Any { NSNumber(value: self as Int32) }
}

extension Int64: JSONEncodable {
  func encodeToJSON() -> Any { NSNumber(value: self as Int64) }
}

extension Double: JSONEncodable {
  func encodeToJSON() -> Any { self as Any }
}

extension String: JSONEncodable {
  func encodeToJSON() -> Any { self as Any }
}

private func encodeIfPossible<T>(_ object: T) -> Any {
  if let encodableObject = object as? JSONEncodable {
    return encodableObject.encodeToJSON()
  } else {
    return object as Any
  }
}

extension Array: JSONEncodable {
  func encodeToJSON() -> Any {
    map(encodeIfPossible)
  }
}

extension Dictionary: JSONEncodable {
  func encodeToJSON() -> Any {
    var dictionary = [AnyHashable: Any]()
    for (key, value) in self {
      dictionary[key] = encodeIfPossible(value)
    }
    return dictionary as Any
  }
}

extension Data: JSONEncodable {
  func encodeToJSON() -> Any {
    base64EncodedString(options: Data.Base64EncodingOptions())
  }
}

private let dateFormatter: DateFormatter = {
  let fmt = DateFormatter()
  fmt.dateFormat = Configuration.dateFormat
  fmt.locale = Locale(identifier: "en_US_POSIX")
  return fmt
}()

extension Date: JSONEncodable {
  func encodeToJSON() -> Any {
    dateFormatter.string(from: self) as Any
  }
}

extension UUID: JSONEncodable {
  func encodeToJSON() -> Any {
    uuidString
  }
}

extension String: CodingKey {
  public var stringValue: String {
    self
  }

  public init?(stringValue: String) {
    self.init(stringLiteral: stringValue)
  }

  public var intValue: Int? {
    nil
  }

  public init?(intValue _: Int) {
    nil
  }
}

public extension KeyedEncodingContainerProtocol {
  mutating func encodeArray<T>(_ values: [T], forKey key: Self.Key) throws where T: Encodable {
    var arrayContainer = nestedUnkeyedContainer(forKey: key)
    try arrayContainer.encode(contentsOf: values)
  }

  mutating func encodeArrayIfPresent<T>(_ values: [T]?, forKey key: Self.Key) throws where T: Encodable {
    if let values = values {
      try encodeArray(values, forKey: key)
    }
  }

  mutating func encodeMap<T>(_ pairs: [Self.Key: T]) throws where T: Encodable {
    for (key, value) in pairs {
      try encode(value, forKey: key)
    }
  }

  mutating func encodeMapIfPresent<T>(_ pairs: [Self.Key: T]?) throws where T: Encodable {
    if let pairs = pairs {
      try encodeMap(pairs)
    }
  }
}

public extension KeyedDecodingContainerProtocol {
  func decodeArray<T>(_: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable {
    var tmpArray = [T]()

    var nestedContainer = try nestedUnkeyedContainer(forKey: key)
    while !nestedContainer.isAtEnd {
      let arrayValue = try nestedContainer.decode(T.self)
      tmpArray.append(arrayValue)
    }

    return tmpArray
  }

  func decodeArrayIfPresent<T>(_: T.Type, forKey key: Self.Key) throws -> [T]? where T: Decodable {
    var tmpArray: [T]?

    if contains(key) {
      tmpArray = try decodeArray(T.self, forKey: key)
    }

    return tmpArray
  }

  func decodeMap<T>(_: T.Type, excludedKeys: Set<Self.Key>) throws -> [Self.Key: T] where T: Decodable {
    var map: [Self.Key: T] = [:]

    for key in allKeys {
      if !excludedKeys.contains(key) {
        let value = try decode(T.self, forKey: key)
        map[key] = value
      }
    }

    return map
  }
}
