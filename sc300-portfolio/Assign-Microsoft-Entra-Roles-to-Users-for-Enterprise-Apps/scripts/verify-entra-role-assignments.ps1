# Connect to Microsoft Graph
Connect-MgGraph -Scopes "RoleManagement.Read.All","Directory.Read.All","User.Read.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# List application-related Entra ID roles
Write-Host "`nApplication-Related Entra ID Roles:" -ForegroundColor Yellow
Get-MgDirectoryRole | Where-Object {
    $_.DisplayName -match "Application"
} | Select DisplayName, Id

# List members of Application Administrator role
$role = Get-MgDirectoryRole | Where-Object { $_.DisplayName -eq "Application Administrator" }

if ($role) {
    Write-Host "`nMembers of Application Administrator role:" -ForegroundColor Yellow
    Get-MgDirectoryRoleMember -DirectoryRoleId $role.Id |
    ForEach-Object {
        Write-Host " - $($_.AdditionalProperties.displayName)"
    }
} else {
    Write-Host "Application Administrator role not found."
}

Write-Host "`nRole assignment verification complete." -ForegroundColor Green
