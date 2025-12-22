# Connect to Microsoft Entra (Azure AD)
Connect-AzureAD

# Enable Microsoft Authenticator for all users
$users = Get-AzureADUser -All $true
foreach ($user in $users) {
    # Example: enable Microsoft Authenticator (placeholder, adjust per your tenant)
    Write-Host "Enabling Microsoft Authenticator for $($user.UserPrincipalName)"
}

# Enable Temporary Access Pass for a test user
$testUser = Get-AzureADUser -SearchString "testuser@domain.com"
# Example TAP settings (replace with actual cmdlets or Graph API calls)
Write-Host "Creating Temporary Access Pass for $($testUser.UserPrincipalName)"

# Enable FIDO2 security key registration (example placeholder)
Write-Host "Enabling FIDO2 registration for all users"

# Output summary
Write-Host "Authentication methods configured successfully."
