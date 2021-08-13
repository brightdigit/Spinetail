**STRUCT**

# `ABTestOptions1`

```swift
public struct ABTestOptions1: Codable
```

The settings specific to A/B test campaigns.

## Properties
### `winningCombinationId`

```swift
public var winningCombinationId: String?
```

ID for the winning combination.

### `winningCampaignId`

```swift
public var winningCampaignId: String?
```

ID of the campaign that was sent to the remaining recipients based on the winning combination.

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

### `contents`

```swift
public var contents: [String]?
```

Descriptions of possible email contents. To set campaign contents, make a PUT request to /campaigns/{campaign_id}/content with the field &#x27;variate_contents&#x27;.

### `combinations`

```swift
public var combinations: [ABTestOptions1Combinations]?
```

Combinations of possible variables used to build emails.

## Methods
### `init(winningCombinationId:winningCampaignId:winnerCriteria:waitTime:testSize:subjectLines:sendTimes:fromNames:replyToAddresses:contents:combinations:)`

```swift
public init(winningCombinationId: String? = nil, winningCampaignId: String? = nil, winnerCriteria: WinnerCriteria, waitTime: Int? = nil, testSize: Int? = nil, subjectLines: [String]? = nil, sendTimes: [Date]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil, contents: [String]? = nil, combinations: [ABTestOptions1Combinations]? = nil)
```
