**ENUM**

# `Delay.Action`

```swift
public enum Action: String, Codable, Equatable, CaseIterable
```

The action that triggers the delay of an Automation email.

## Cases
### `previousCampaignSent`

```swift
case previousCampaignSent = "previous_campaign_sent"
```

### `previousCampaignOpened`

```swift
case previousCampaignOpened = "previous_campaign_opened"
```

### `previousCampaignNotOpened`

```swift
case previousCampaignNotOpened = "previous_campaign_not_opened"
```

### `previousCampaignClickedAny`

```swift
case previousCampaignClickedAny = "previous_campaign_clicked_any"
```

### `previousCampaignNotClickedAny`

```swift
case previousCampaignNotClickedAny = "previous_campaign_not_clicked_any"
```

### `previousCampaignSpecificClicked`

```swift
case previousCampaignSpecificClicked = "previous_campaign_specific_clicked"
```

### `ecommBoughtAny`

```swift
case ecommBoughtAny = "ecomm_bought_any"
```

### `ecommBoughtProduct`

```swift
case ecommBoughtProduct = "ecomm_bought_product"
```

### `ecommBoughtCategory`

```swift
case ecommBoughtCategory = "ecomm_bought_category"
```

### `ecommNotBoughtAny`

```swift
case ecommNotBoughtAny = "ecomm_not_bought_any"
```

### `ecommAbandonedCart`

```swift
case ecommAbandonedCart = "ecomm_abandoned_cart"
```

### `campaignSent`

```swift
case campaignSent = "campaign_sent"
```

### `openedEmail`

```swift
case openedEmail = "opened_email"
```

### `notOpenedEmail`

```swift
case notOpenedEmail = "not_opened_email"
```

### `clickedEmail`

```swift
case clickedEmail = "clicked_email"
```

### `notClickedEmail`

```swift
case notClickedEmail = "not_clicked_email"
```

### `campaignSpecificClicked`

```swift
case campaignSpecificClicked = "campaign_specific_clicked"
```

### `manual`

```swift
case manual
```

### `signup`

```swift
case signup
```

### `mergeChanged`

```swift
case mergeChanged = "merge_changed"
```

### `groupAdd`

```swift
case groupAdd = "group_add"
```

### `groupRemove`

```swift
case groupRemove = "group_remove"
```

### `mandrillSent`

```swift
case mandrillSent = "mandrill_sent"
```

### `mandrillOpened`

```swift
case mandrillOpened = "mandrill_opened"
```

### `mandrillClicked`

```swift
case mandrillClicked = "mandrill_clicked"
```

### `mandrillAny`

```swift
case mandrillAny = "mandrill_any"
```

### `api`

```swift
case api
```

### `goal`

```swift
case goal
```

### `annual`

```swift
case annual
```

### `birthday`

```swift
case birthday
```

### `date`

```swift
case date
```

### `dateAdded`

```swift
case dateAdded = "date_added"
```

### `tagAdd`

```swift
case tagAdd = "tag_add"
```
