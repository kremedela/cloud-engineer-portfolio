# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Application.Read.All","AuditLog.Read.All"

Write-Host "Retrieving connected enterprise applications..." -ForegroundColor Cyan

Get-MgServicePrincipal |
Select DisplayName, AppId, ObjectId, AccountEnabled | Format-Table

Write-Host "`nReview SSO and user assignments in portal for each connected app." -ForegroundColor Green
