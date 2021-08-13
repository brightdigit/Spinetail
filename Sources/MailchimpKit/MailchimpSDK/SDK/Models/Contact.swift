import Foundation

public struct Contact: Codable {
  public var emailAddress: String
  public var tags: [Tag]?
  public var marketingPermissions: [MarketingPermission]?
  public var mergeFields: [String: MergeFieldValue]?
  public var status: Status?

  enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
    case tags
    case marketingPermissions = "marketing_permissions"
    case mergeFields = "merge_fields"
    case status
  }

  public enum TagStatus: String, Codable {
    case active
    case inactive
  }

  public enum Status: String, Codable {
    case subscribed
    case transactional
  }

  public struct Tag: Codable {
    public let name: String
    public let status: TagStatus

    public init(name: String, status: TagStatus) {
      self.name = name
      self.status = status
    }
  }

  public struct MarketingPermission: Codable {
    public let marketingPermissionId: String
    public let enabled: Bool

    enum CodingKeys: String, CodingKey {
      case marketingPermissionId = "marketing_permission_id"
      case enabled
    }

    public init(marketingPermissionId: String, enabled: Bool) {
      self.marketingPermissionId = marketingPermissionId
      self.enabled = enabled
    }
  }

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }
}
