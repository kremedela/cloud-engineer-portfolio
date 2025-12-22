# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All","AuditLog.Read.All"

$userUPN = "test.user@yourtenant.onmicrosoft.com"

$user = Get-MgUser -UserId $userUPN
Write-Host "Account Enabled: $($user.AccountEnabled)" -ForegroundColor Cyan

Write-Host "`nRecent audit events:" -ForegroundColor Yellow
Get-MgAuditLogDirectoryAudit -Filter "targetResources/any(tr: tr.userPrincipalName eq '$userUPN')" -Top 5 |
ForEach-Object {
    Write-Host "$($_.ActivityDisplayName) - $($_.ActivityDateTime)"
}

Write-Host "`nVerification complete." -ForegroundColor Green
