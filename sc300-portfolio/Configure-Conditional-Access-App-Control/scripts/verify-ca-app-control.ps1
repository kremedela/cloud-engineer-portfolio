# Connect to Microsoft Graph and MDCA APIs
Connect-MgGraph -Scopes "CloudAppSecurity.Read.All","Policy.Read.All"

Write-Host "Retrieving Conditional Access App Control policies..." -ForegroundColor Cyan

$caacPolicies = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/cloudAppSecurity/conditionalAccessAppControl/policies"
$caacPolicies.value | Select displayName, enforcementType, targetApps | Format-Table

Write-Host "`nReview the MDCA portal to verify session controls enforcement." -ForegroundColor Green
