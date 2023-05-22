internal enum Fixtures {
  /// A `getCampaigns` OK response with two sent campaigns.
  internal static let campaigns = """
    {"campaigns":[\
    {"id":"camp1","long_archive_url":"https://archive/1",\
    "send_time":"2020-01-01T00:00:00+00:00",\
    "recipients":{"segment_text":"brightdigit-business"},\
    "settings":{"subject_line":"BrightDigit Newsletter #1","title":"Issue One",\
    "preview_text":"first preview"},\
    "social_card":{"image_url":"https://img/1.jpg"}},\
    {"id":"camp2","long_archive_url":"https://archive/2",\
    "send_time":"2020-02-02T00:00:00+00:00",\
    "recipients":{"segment_text":"other"},\
    "settings":{"subject_line":"BrightDigit Newsletter #2","title":"Issue Two",\
    "preview_text":"second preview"},\
    "social_card":{"image_url":"https://img/2.jpg"}}],\
    "total_items":2}
    """

  /// A `getCampaignsIdContent` OK response carrying archive HTML.
  internal static let campaignContent = """
    {"archive_html":"<html><body>Hello</body></html>","html":"<p>Hello</p>"}
    """

  /// A `getCampaignsIdContent` OK response with no archive HTML.
  internal static let campaignContentNoHTML = """
    {"html":"<p>Hello</p>"}
    """

  /// A Mailchimp problem+json error body, returned for non-200 responses.
  internal static let problem = """
    {"type":"https://mailchimp.com/developer/marketing/docs/errors/",\
    "title":"Internal Server Error","status":500,\
    "detail":"An unexpected internal error occurred.","instance":"abc"}
    """
}
