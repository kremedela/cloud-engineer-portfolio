# Connect to Graph
Connect-MgGraph -Scopes "Directory.ReadWrite.All","RoleManagement.ReadWrite.Directory"

Write-Host "Creating Administrative Unit..."

# 1. Create AU
$au = New-MgDirectoryAdministrativeUnit -DisplayName "HR-Administrative-Unit" -Description "Contains HR users and groups"

Write-Host "AU created: $($au.Id)"

# 2. Add user to AU
# Replace with your actual test user ID
$userId = "<TEST-USER-ID>"
New-MgDirectoryAdministrativeUnitMemberByRef -AdministrativeUnitId $au.Id -BodyParameter @{ "@odata.id" = "https://graph.microsoft.com/v1.0/users/$userId" }

Write-Host "User added to AU."

# 3. Assign scoped role
$role = Get-MgDirectoryRole | Where-Object DisplayName -eq "User Administrator"

New-MgDirectoryRoleAssignment -PrincipalId $userId -RoleDefinitionId $role.Id -DirectoryScopeId $au.Id

Write-Host "Scoped role assigned."
