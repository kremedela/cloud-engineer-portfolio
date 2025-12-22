# Connect to Microsoft Graph
Connect-MgGraph -Scopes "CloudAppSecurity.Read.All","Policy.Read.All"

Write-Host "Retrieving MDCA access and session policies..." -ForegroundColor Cyan

$policies = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/cloudAppSecurity/policies"
$policies.value | Select displayName, policyType, enforcementMode | Format-Table

Write-Host "`nReview the MDCA portal to verify policy enforcement and logs." -ForegroundColor Green
