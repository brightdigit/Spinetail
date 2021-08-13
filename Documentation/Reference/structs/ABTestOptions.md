**STRUCT**

# `ABTestOptions`

```swift
public struct ABTestOptions: Codable
```

The settings specific to A/B test campaigns.

## Properties
### `winnerCriteria`

```swift
public var winnerCriteria: WinnerCriteria
```

The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with &#x27;manual&#x27; as the winner_criteria, the winner must be chosen in the Mailchimp web application.

### `waitTime`

```swift
public var waitTime: Int?
```

The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes.

### `testSize`

```swift
public var testSize: Int?
```

The percentage of recipients to send the test combinations to, must be a value between 10 and 100.

### `subjectLines`

```swift
public var subjectLines: [String]?
```

The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used.

### `sendTimes`

```swift
public var sendTimes: [Date]?
```

The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored.

### `fromNames`

```swift
public var fromNames: [String]?
```

The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used.

### `replyToAddresses`

```swift
public var replyToAddresses: [String]?
```

The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used.

## Methods
### `init(winnerCriteria:waitTime:testSize:subjectLines:sendTimes:fromNames:replyToAddresses:)`

```swift
public init(winnerCriteria: WinnerCriteria, waitTime: Int? = nil, testSize: Int? = nil, subjectLines: [String]? = nil, sendTimes: [Date]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil)
```
