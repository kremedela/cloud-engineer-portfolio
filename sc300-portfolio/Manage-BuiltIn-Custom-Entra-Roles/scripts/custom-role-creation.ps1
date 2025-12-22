# Connect to Graph
Connect-MgGraph -Scopes "RoleManagement.ReadWrite.Directory","Directory.ReadWrite.All"

# Custom role definition
$customRole = @{
    displayName = "Helpdesk Password Reset Role"
    description = "Allows resetting user passwords only"
    isEnabled   = $true
    rolePermissions = @(
        @{
            allowedResourceActions = @(
                "microsoft.directory/users/password/update"
            )
        }
    )
}

# Create the custom role
New-MgRoleManagementDirectoryRoleDefinition -BodyParameter $customRole
Write-Host "Custom role created successfully."
