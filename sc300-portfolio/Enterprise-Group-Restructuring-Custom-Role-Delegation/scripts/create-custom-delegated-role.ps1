# Connect to Graph
Connect-MgGraph -Scopes "RoleManagement.ReadWrite.Directory","Directory.ReadWrite.All"
Write-Host "Connected."

# ==== Create Custom Role ====
$roleBody = @{
    displayName = "Group Lifecycle Manager"
    description = "Delegated role to manage groups within AU scope."
    isEnabled   = $true
    rolePermissions = @(
        @{
            allowedResourceActions = @(
                "microsoft.directory/groups/create",
                "microsoft.directory/groups/basic/update",
                "microsoft.directory/groups.members/update"
            )
        }
    )
}

$newRole = New-MgRoleManagementDirectoryRoleDefinition -BodyParameter $roleBody
Write-Host "Custom role created: $($newRole.Id)"

# ==== Assign Role (Modify with your IDs) ====
$roleId = $newRole.Id
$principalId = "<Delegated_Admin_User_ObjectID>"
$scopeId = "/administrativeUnits/<AU_ObjectID>"

New-MgRoleManagementDirectoryRoleAssignment -BodyParameter @{
    principalId      = $principalId
    roleDefinitionId = $roleId
    directoryScopeId = $scopeId
}

Write-Host "Role assigned successfully."
