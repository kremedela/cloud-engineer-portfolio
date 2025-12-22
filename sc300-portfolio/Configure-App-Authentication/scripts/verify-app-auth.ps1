# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Application.Read.All"

Write-Host "Retrieving app authentication configurations..." -ForegroundColor Cyan

Get-MgApplication |
Select DisplayName, AppId, ObjectId, RequiredResourceAccess

Write-Host "`nReview Certificates & Secrets in portal to confirm active authentication methods." -ForegroundColor Green
