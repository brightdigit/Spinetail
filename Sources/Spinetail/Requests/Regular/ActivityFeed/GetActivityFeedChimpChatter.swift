import Foundation
import Prch

#if !os(watchOS)
  public extension ActivityFeed {
    /**
     Get latest chimp chatter

     Return the Chimp Chatter for this account ordered by most recent.
     */
    enum GetActivityFeedChimpChatter {
      public static let service = Service<Response>(id: "getActivityFeedChimpChatter", tag: "activityFeed", method: "GET", path: "/activity-feed/chimp-chatter", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** The number of records to return. Default value is 10. Maximum value is 1000 */
          public var count: Int?

          /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
          public var offset: Int?

          public init(count: Int? = nil, offset: Int? = nil) {
            self.count = count
            self.offset = offset
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          GetActivityFeedChimpChatter.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(count: Int? = nil, offset: Int? = nil) {
          let options = Options(count: count, offset: offset)
          self.init(options: options)
        }

        public var queryParameters: [String: Any] {
          var params: [String: Any] = [:]
          if let count = options.count {
            params["count"] = count
          }
          if let offset = options.offset {
            params["offset"] = offset
          }
          return params
        }
      }

      public typealias APIType = MailchimpAPI
      public typealias Response = BasicResponse<Status200, DefaultResponse, MailchimpAPI>
      /** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
      public struct Status200: SuccessModel {
        public static let statusCode: Int = 200
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** An array of Chimp Chatter messages. There's a maximum of 200 messages present for an account. */
        public var chimpChatter: [ChimpChatter]?

        /** The total number of items matching the query regardless of pagination. */
        public var totalItems: Int?

        /** A Chimp Chatter message */
        public struct ChimpChatter: Model {
          /** The type of activity */
          public enum `Type`: String, Codable, Equatable, CaseIterable {
            case listsnewSubscriber = "lists:new-subscriber"
            case listsunsubscribes = "lists:unsubscribes"
            case listsprofileUpdates = "lists:profile-updates"
            case campaignsfacebookLikes = "campaigns:facebook-likes"
            case campaignsforwardToFriend = "campaigns:forward-to-friend"
            case listsimports = "lists:imports"
          }

          /** If it exists, campaign ID for the associated campaign */
          public var campaignId: String?

          /** If it exists, list ID for the associated list */
          public var listId: String?

          public var message: String?

          public var title: String?

          /** The type of activity */
          public var type: `Type`?

          /** The date and time this activity was updated. */
          public var updateTime: Date?

          /** URL to a report that includes this activity */
          public var url: String?

          public init(campaignId: String? = nil, listId: String? = nil, message: String? = nil, title: String? = nil, type: Type? = nil, updateTime: Date? = nil, url: String? = nil) {
            self.campaignId = campaignId
            self.listId = listId
            self.message = message
            self.title = title
            self.type = type
            self.updateTime = updateTime
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            campaignId = try container.decodeIfPresent("campaign_id")
            listId = try container.decodeIfPresent("list_id")
            message = try container.decodeIfPresent("message")
            title = try container.decodeIfPresent("title")
            type = try container.decodeIfPresent("type")
            updateTime = try container.decodeIfPresent("update_time")
            url = try container.decodeIfPresent("url")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(campaignId, forKey: "campaign_id")
            try container.encodeIfPresent(listId, forKey: "list_id")
            try container.encodeIfPresent(message, forKey: "message")
            try container.encodeIfPresent(title, forKey: "title")
            try container.encodeIfPresent(type, forKey: "type")
            try container.encodeIfPresent(updateTime, forKey: "update_time")
            try container.encodeIfPresent(url, forKey: "url")
          }
        }

        public init(links: [Links]? = nil, chimpChatter: [ChimpChatter]? = nil, totalItems: Int? = nil) {
          self.links = links
          self.chimpChatter = chimpChatter
          self.totalItems = totalItems
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          chimpChatter = try container.decodeArrayIfPresent("chimp_chatter")
          totalItems = try container.decodeIfPresent("total_items")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(chimpChatter, forKey: "chimp_chatter")
          try container.encodeIfPresent(totalItems, forKey: "total_items")
        }
      }
    }
  }
#endif
