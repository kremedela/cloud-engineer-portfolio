# Connect to Microsoft Graph
Connect-MgGraph -Scopes "RoleManagement.ReadWrite.Directory","User.ReadWrite.All","AdministrativeUnit.ReadWrite.All"

# Create HR Administrative Unit
$au = New-MgAdministrativeUnit -DisplayName "HR-AU" -Description "Administrative Unit for HR employees"
Write-Host "Created Administrative Unit: $($au.DisplayName)"

# Add HR users to AU (replace with actual user IDs)
$hrUsers = @("hruser1@contoso.com","hruser2@contoso.com")
foreach ($user in $hrUsers) {
    Add-MgAdministrativeUnitMember -AdministrativeUnitId $au.Id -Id $user
    Write-Host "Added $user to HR-AU"
}

# Create custom role (simulation, portal required for permissions)
Write-Host "Custom role HR-System-Access should be created in portal and assigned to AU members"
