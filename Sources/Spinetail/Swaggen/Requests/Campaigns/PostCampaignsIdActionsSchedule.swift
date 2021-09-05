import Foundation
import Prch

public extension Campaigns {
  /**
   Schedule campaign

   Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead.
   */
  enum PostCampaignsIdActionsSchedule {
    public static let service = APIService<Response>(id: "postCampaignsIdActionsSchedule", tag: "campaigns", method: "POST", path: "/campaigns/{campaign_id}/actions/schedule", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public final class Request: APIRequest<Response> {
      /** Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead. */
      public struct Body: Model {
        /** The UTC date and time to schedule the campaign for delivery in ISO 8601 format. Campaigns may only be scheduled to send on the quarter-hour (:00, :15, :30, :45). */
        public var scheduleTime: DateTime

        /** Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/). */
        public var batchDelivery: BatchDelivery?

        /** Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. Campaigns scheduled with Timewarp are localized based on the recipients' time zones. For example, a Timewarp campaign with a `schedule_time` of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to `true` for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). */
        public var timewarp: Bool?

        /** Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/). */
        public struct BatchDelivery: Model {
          /** The number of batches for the campaign send. */
          public var batchCount: Int

          /** The delay, in minutes, between batches. */
          public var batchDelay: Int

          public init(batchCount: Int, batchDelay: Int) {
            self.batchCount = batchCount
            self.batchDelay = batchDelay
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            batchCount = try container.decode("batch_count")
            batchDelay = try container.decode("batch_delay")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(batchCount, forKey: "batch_count")
            try container.encode(batchDelay, forKey: "batch_delay")
          }
        }

        public init(scheduleTime: DateTime, batchDelivery: BatchDelivery? = nil, timewarp: Bool? = nil) {
          self.scheduleTime = scheduleTime
          self.batchDelivery = batchDelivery
          self.timewarp = timewarp
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          scheduleTime = try container.decode("schedule_time")
          batchDelivery = try container.decodeIfPresent("batch_delivery")
          timewarp = try container.decodeIfPresent("timewarp")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(scheduleTime, forKey: "schedule_time")
          try container.encodeIfPresent(batchDelivery, forKey: "batch_delivery")
          try container.encodeIfPresent(timewarp, forKey: "timewarp")
        }
      }

      public struct Options {
        /** The unique id for the campaign. */
        public var campaignId: String

        public init(campaignId: String) {
          self.campaignId = campaignId
        }
      }

      public var options: Options

      public var body: Body

      public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
        self.body = body
        self.options = options
        super.init(service: PostCampaignsIdActionsSchedule.service) { defaultEncoder in
          try (encoder ?? defaultEncoder).encode(body)
        }
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(campaignId: String, body: Body) {
        let options = Options(campaignId: campaignId)
        self.init(body: body, options: options)
      }

      override public var path: String {
        super.path.replacingOccurrences(of: "{" + "campaign_id" + "}", with: "\(options.campaignId)")
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      /** An error generated by the Mailchimp API. Conforms to IETF draft 'draft-nottingham-http-problem-06'. */
      public struct DefaultResponse: Model {
        /** A human-readable explanation specific to this occurrence of the problem. [Learn more about errors](/developer/guides/get-started-with-mailchimp-api-3/#Errors). */
        public var detail: String

        /** A string that identifies this specific occurrence of the problem. Please provide this ID when contacting support. */
        public var instance: String

        /** The HTTP status code (RFC2616, Section 6) generated by the origin server for this occurrence of the problem. */
        public var status: Int

        /** A short, human-readable summary of the problem type. It shouldn't change based on the occurrence of the problem, except for purposes of localization. */
        public var title: String

        /** An absolute URI that identifies the problem type. When dereferenced, it should provide human-readable documentation for the problem type. */
        public var type: String

        public init(detail: String, instance: String, status: Int, title: String, type: String) {
          self.detail = detail
          self.instance = instance
          self.status = status
          self.title = title
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          detail = try container.decode("detail")
          instance = try container.decode("instance")
          status = try container.decode("status")
          title = try container.decode("title")
          type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(detail, forKey: "detail")
          try container.encode(instance, forKey: "instance")
          try container.encode(status, forKey: "status")
          try container.encode(title, forKey: "title")
          try container.encode(type, forKey: "type")
        }
      }

      public typealias SuccessType = Void

      /** Empty Response */
      case status204

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var success: Void? {
        switch self {
        case .status204: return ()
        default: return nil
        }
      }

      public var failure: DefaultResponse? {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<Void, DefaultResponse> {
        if let successValue = success {
          return .success(successValue)
        } else if let failureValue = failure {
          return .failure(failureValue)
        } else {
          fatalError("Response does not have success or failure response")
        }
      }

      public var response: Any {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return ()
        }
      }

      public var statusCode: Int {
        switch self {
        case .status204: return 204
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public var successful: Bool {
        switch self {
        case .status204: return true
        case .defaultResponse: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 204: self = .status204
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }

      public var description: String {
        "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(response)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
