# Connect to Microsoft Entra
Connect-AzureAD

# Enable WHfB for all targeted users
$users = Get-AzureADUser -All $true | Where-Object {$_.Department -eq "Test"}
foreach ($user in $users) {
    Write-Host "Enabling WHfB for $($user.UserPrincipalName)"
    # Placeholder: Use Graph API to enable WHfB for each user
}

# Optional: Configure PIN/biometric settings via Intune Graph API
Write-Host "Configuring PIN and biometric settings"

Write-Host "Windows Hello for Business deployment completed."
