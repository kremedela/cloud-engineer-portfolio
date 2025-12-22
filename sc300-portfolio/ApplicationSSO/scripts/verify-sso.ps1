# Connect to Microsoft Graph
Connect-MgGraph -Scopes "AuditLog.Read.All","Application.Read.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# List Enterprise Applications
Write-Host "`nEnterprise Applications:" -ForegroundColor Yellow
Get-MgServicePrincipal | Select DisplayName, AppId | Sort-Object DisplayName

# Display recent sign-in logs
Write-Host "`nRecent Application Sign-ins:" -ForegroundColor Yellow
Get-MgAuditLogSignIn -Top 5 | Select AppDisplayName, UserDisplayName, Status

Write-Host "`nSSO verification complete." -ForegroundColor Green
