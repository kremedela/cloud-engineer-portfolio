# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Application.Read.All","AuditLog.Read.All"

Write-Host "Retrieving app registrations and API permissions..." -ForegroundColor Cyan

Get-MgApplication |
Select DisplayName, AppId, ObjectId

Write-Host "`nCheck API permissions in portal or via Graph Explorer for delegated/app permissions and admin consent." -ForegroundColor Green
