# Connect to Microsoft Graph
Connect-MgGraph -Scopes "AccessReview.ReadWrite.All","Group.Read.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# List existing access reviews
Write-Host "`nExisting Access Reviews:" -ForegroundColor Yellow
Get-MgIdentityGovernanceAccessReviewDefinition |
Select DisplayName, Status, CreatedDateTime

Write-Host "`nAccess Review verification complete." -ForegroundColor Green
