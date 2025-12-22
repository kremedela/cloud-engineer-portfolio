# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Application.Read.All","AuditLog.Read.All"

Write-Host "Retrieving applications and consent settings..." -ForegroundColor Cyan

Get-MgServicePrincipal |
Select DisplayName, AppId, ObjectId, RequiredResourceAccess | Format-Table

Write-Host "`nReview user and admin consent events in portal audit logs." -ForegroundColor Green
