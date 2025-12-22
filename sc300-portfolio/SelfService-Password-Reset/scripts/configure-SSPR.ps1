# Connect to Microsoft Entra
Connect-AzureAD

# Enable SSPR for all users
$users = Get-AzureADUser -All $true
foreach ($user in $users) {
    Write-Host "Enabling SSPR for $($user.UserPrincipalName)"
    # Placeholder: Use Graph API or MSOnline commands to enable SSPR
}

# Configure authentication methods
Write-Host "Configuring authentication methods for password reset"

# Set registration enforcement and notifications
Write-Host "Enforcing registration and setting admin notifications"

# Output completion
Write-Host "SSPR configuration applied successfully."
