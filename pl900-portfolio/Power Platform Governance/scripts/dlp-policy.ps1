{
  "displayName": "Enterprise-DLP-Standard",
  "connectorGroups": [
    {
      "classification": "Business",
      "connectors": ["shared_sharepointonline", "shared_office365", "shared_commondataservice"]
    },
    {
      "classification": "NonBusiness",
      "connectors": ["shared_twitter", "shared_linkedin", "shared_gmail"]
    }
  ],
  "blockedConnectors": ["shared_ftp", "shared_sql"],
  "environmentFilter": {
    "environmentIds": ["prod-env-id", "test-env-id"]
  }
}
