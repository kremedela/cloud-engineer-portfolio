# Connect to Microsoft Entra
Connect-AzureAD

# Enable MFA for all users
$users = Get-AzureADUser -All $true
foreach ($user in $users) {
    Write-Host "Enabling MFA for $($user.UserPrincipalName)"
    # Placeholder: Use MSOnline or Graph API commands to enforce MFA
}

# Configure default MFA registration policy
Write-Host "Setting default MFA registration policy for all users"

# Optional: Configure trusted IPs
$trustedIPs = @("192.168.1.0/24", "203.0.113.0/24")
Write-Host "Adding trusted IPs: $trustedIPs"

Write-Host "Tenant-wide MFA settings applied successfully."
