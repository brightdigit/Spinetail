//
// ABTestingOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** [A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign. */

public struct ABTestingOptions: Codable {

    public enum SplitTest: String, Codable { 
        case subject = "subject"
        case fromName = "from_name"
        case schedule = "schedule"
    }
    public enum PickWinner: String, Codable { 
        case opens = "opens"
        case clicks = "clicks"
        case manual = "manual"
    }
    public enum WaitUnits: String, Codable { 
        case hours = "hours"
        case days = "days"
    }
    /** The type of AB split to run. */
    public var splitTest: SplitTest?
    /** How we should evaluate a winner. Based on &#x27;opens&#x27;, &#x27;clicks&#x27;, or &#x27;manual&#x27;. */
    public var pickWinner: PickWinner?
    /** How unit of time for measuring the winner (&#x27;hours&#x27; or &#x27;days&#x27;). This cannot be changed after a campaign is sent. */
    public var waitUnits: WaitUnits?
    /** The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent. */
    public var waitTime: Int?
    /** The size of the split groups. Campaigns split based on &#x27;schedule&#x27; are forced to have a 50/50 split. Valid split integers are between 1-50. */
    public var splitSize: Int?
    /** For campaigns split on &#x27;From Name&#x27;, the name for Group A. */
    public var fromNameA: String?
    /** For campaigns split on &#x27;From Name&#x27;, the name for Group B. */
    public var fromNameB: String?
    /** For campaigns split on &#x27;From Name&#x27;, the reply-to address for Group A. */
    public var replyEmailA: String?
    /** For campaigns split on &#x27;From Name&#x27;, the reply-to address for Group B. */
    public var replyEmailB: String?
    /** For campaigns split on &#x27;Subject Line&#x27;, the subject line for Group A. */
    public var subjectA: String?
    /** For campaigns split on &#x27;Subject Line&#x27;, the subject line for Group B. */
    public var subjectB: String?
    /** The send time for Group A. */
    public var sendTimeA: Date?
    /** The send time for Group B. */
    public var sendTimeB: Date?
    /** The send time for the winning version. */
    public var sendTimeWinner: String?

    public init(splitTest: SplitTest? = nil, pickWinner: PickWinner? = nil, waitUnits: WaitUnits? = nil, waitTime: Int? = nil, splitSize: Int? = nil, fromNameA: String? = nil, fromNameB: String? = nil, replyEmailA: String? = nil, replyEmailB: String? = nil, subjectA: String? = nil, subjectB: String? = nil, sendTimeA: Date? = nil, sendTimeB: Date? = nil, sendTimeWinner: String? = nil) {
        self.splitTest = splitTest
        self.pickWinner = pickWinner
        self.waitUnits = waitUnits
        self.waitTime = waitTime
        self.splitSize = splitSize
        self.fromNameA = fromNameA
        self.fromNameB = fromNameB
        self.replyEmailA = replyEmailA
        self.replyEmailB = replyEmailB
        self.subjectA = subjectA
        self.subjectB = subjectB
        self.sendTimeA = sendTimeA
        self.sendTimeB = sendTimeB
        self.sendTimeWinner = sendTimeWinner
    }

    public enum CodingKeys: String, CodingKey { 
        case splitTest = "split_test"
        case pickWinner = "pick_winner"
        case waitUnits = "wait_units"
        case waitTime = "wait_time"
        case splitSize = "split_size"
        case fromNameA = "from_name_a"
        case fromNameB = "from_name_b"
        case replyEmailA = "reply_email_a"
        case replyEmailB = "reply_email_b"
        case subjectA = "subject_a"
        case subjectB = "subject_b"
        case sendTimeA = "send_time_a"
        case sendTimeB = "send_time_b"
        case sendTimeWinner = "send_time_winner"
    }

}