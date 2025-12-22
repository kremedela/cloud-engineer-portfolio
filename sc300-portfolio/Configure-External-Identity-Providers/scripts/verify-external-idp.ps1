# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All","Application.Read.All","AuditLog.Read.All"

Write-Host "Retrieving external identity providers and users..." -ForegroundColor Cyan

Get-MgIdentityProvider | Select DisplayName, Type, Status | Format-Table
Get-MgUser -Filter "userType eq 'Guest'" | Select DisplayName, UserPrincipalName | Format-Table

Write-Host "`nReview Entra ID portal for IdP claims mapping and sign-in logs." -ForegroundColor Green
