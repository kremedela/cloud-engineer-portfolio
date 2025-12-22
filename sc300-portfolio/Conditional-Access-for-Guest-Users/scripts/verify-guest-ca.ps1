# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Policy.Read.All","AuditLog.Read.All"

Write-Host "Retrieving Conditional Access policies targeting guest users..." -ForegroundColor Cyan
Get-MgIdentityConditionalAccessPolicy |
Where-Object { $_.Conditions.Users.IncludeGuestsOrExternalUsers -eq $true } |
Select DisplayName, State

Write-Host "`nReview sign-in logs for guest users in Entra Admin Center to confirm enforcement." -ForegroundColor Green
