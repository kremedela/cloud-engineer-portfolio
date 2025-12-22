# Connect to Microsoft Graph (MDCA APIs)
Connect-MgGraph -Scopes "CloudAppDiscovery.Read.All"

Write-Host "Retrieving Cloud Discovery applications..." -ForegroundColor Cyan

$apps = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/cloudAppSecurity/analytics/discoveredApps"
$apps.value | Select-Object displayName, riskScore, category | Format-Table

Write-Host "`nReview the portal dashboards for full analysis." -ForegroundColor Green
