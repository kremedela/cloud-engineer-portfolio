# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Policy.Read.All","AuditLog.Read.All"

Write-Host "Retrieving Conditional Access policies..." -ForegroundColor Cyan
Get-MgIdentityConditionalAccessPolicy |
Select DisplayName, State

Write-Host "`nReview sign-in logs in Entra Admin Center to confirm enforcement." -ForegroundColor Green
