# Connect to Microsoft Entra
Connect-AzureAD

# Get test users to disable
$users = Get-AzureADUser -All $true | Where-Object {$_.Department -eq "Test"}

foreach ($user in $users) {
    # Disable account
    Set-AzureADUser -ObjectId $user.ObjectId -AccountEnabled $false
    Write-Host "Disabled account for $($user.UserPrincipalName)"

    # Revoke all active sessions
    Revoke-AzureADUserAllRefreshToken -ObjectId $user.ObjectId
    Write-Host "Revoked active sessions for $($user.UserPrincipalName)"
}

Write-Host "All selected user accounts disabled and sessions revoked."
