# Connect to Microsoft Graph
Connect-MgGraph -Scopes "RoleManagement.Read.Directory","User.Read.All"
Write-Host "Connected to Microsoft Graph."

# Select test user
$UserPrincipalName = "testuser@contoso.com"

# List direct and inherited role assignments
Write-Host "`n=== User Role Assignments ==="
Get-MgUserAppRoleAssignment -UserId $UserPrincipalName | Select-Object Id,ResourceDisplayName,AppRoleId

# List effective permissions (simulation)
Write-Host "`n=== Effective Permissions Overview ==="
Write-Host "(Review in portal for detailed effective permissions per role)"
