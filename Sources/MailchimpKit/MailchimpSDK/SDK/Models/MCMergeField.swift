import Foundation

public enum MergeFieldValue: Codable {
  case string(String)
  case address(MCAddress)
}

public extension MergeFieldValue {
  internal enum CodingError: Error { case decoding(String) }

  init(string: String) {
    self = .string(string)
  }

  init(address: MCAddress) {
    self = .address(address)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()

    if let string = try? container.decode(String.self) {
      self = .string(string)
      return
    }

    if let address = try? container.decode(MCAddress.self) {
      self = .address(address)
      return
    }

    throw CodingError.decoding("Decoding Failed.")
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()

    switch self {
    case let .string(string):
      try container.encode(string)

    case let .address(address):
      try container.encode(address)
    }
  }
}

public struct MCAddress: Codable, Equatable {
  public var addressLineOne: String
  public var addressLineTwo: String?
  public var city: String
  public var state: String?
  public var zipCode: String
  public var country: CountryCode

  enum CodingKeys: String, CodingKey {
    case addressLineOne = "addr1"
    case addressLineTwo = "addr2"
    case city
    case state
    case zipCode = "zip"
    case country
  }

  public init(
    addressLineOne: String,
    addressLineTwo: String?,
    city: String,
    state: String?,
    zipCode: String,
    country: CountryCode
  ) {
    self.addressLineOne = addressLineOne
    self.addressLineTwo = addressLineTwo
    self.city = city
    self.state = state
    self.zipCode = zipCode
    self.country = country
  }
}
