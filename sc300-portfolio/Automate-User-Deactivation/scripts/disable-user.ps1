# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All","Directory.ReadWrite.All"

$userUPN = "test.user@yourtenant.onmicrosoft.com"

# Disable sign-in
Update-MgUser -UserId $userUPN -AccountEnabled:$false
Write-Host "User sign-in disabled." -ForegroundColor Yellow

# Remove group memberships
$groups = Get-MgUserMemberOf -UserId $userUPN

foreach ($group in $groups) {
    if ($group.AdditionalProperties["@odata.type"] -eq "#microsoft.graph.group") {
        Remove-MgGroupMemberByRef -GroupId $group.Id -DirectoryObjectId $userUPN
        Write-Host "Removed from group: $($group.AdditionalProperties.displayName)"
    }
}

Write-Host "User deactivation complete." -ForegroundColor Green
