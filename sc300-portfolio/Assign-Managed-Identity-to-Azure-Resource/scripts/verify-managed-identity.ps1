# Connect to Azure
Connect-AzAccount

Write-Host "Connected to Azure" -ForegroundColor Cyan

# List resources with managed identities
Write-Host "`nResources with Managed Identities:" -ForegroundColor Yellow
Get-AzResource | Where-Object { $_.Identity -ne $null } |
Select Name, ResourceType, Location

Write-Host "`nManaged Identity verification complete." -ForegroundColor Green
