# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.Read.All","User.Read.All","Directory.Read.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# Get Dynamic Group
$group = Get-MgGroup -Filter "displayName eq 'Dynamic-IT-Users'"

if ($group) {
    Write-Host "`nMembers of Dynamic Group:" -ForegroundColor Yellow
    Get-MgGroupMember -GroupId $group.Id |
    ForEach-Object {
        Write-Host " - $($_.AdditionalProperties.displayName)"
    }
} else {
    Write-Host "Dynamic group not found."
}

Write-Host "`nGroup membership verification complete." -ForegroundColor Green
