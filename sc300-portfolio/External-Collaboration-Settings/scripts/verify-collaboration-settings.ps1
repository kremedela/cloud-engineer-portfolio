# Verify external collaboration settings
Connect-AzureAD

$settings = Get-AzureADMSExternalIdentitiesPolicy
$settings | Format-List

Write-Host "External collaboration settings retrieved successfully."
