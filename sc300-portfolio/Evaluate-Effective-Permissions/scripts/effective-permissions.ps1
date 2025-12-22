# Connect to Graph
Connect-MgGraph -Scopes "Directory.Read.All","RoleManagement.Read.Directory"
Write-Host "Connected to Microsoft Graph."

# Replace with your test user UPN or object ID
$userUpn = "<testuser@domain.com>"

Write-Host "`n=== Retrieving User Details ==="
$user = Get-MgUser -UserId $userUpn
$user | Format-List DisplayName,Id,UserPrincipalName

Write-Host "`n=== Listing Assigned Roles ==="
Get-MgUserAppRoleAssignment -UserId $user.Id

Write-Host "`n=== Listing Directory Role Assignments ==="
Get-MgRoleManagementDirectoryRoleAssignment | Where-Object {$_.PrincipalId -eq $user.Id} |
    Select-Object PrincipalId,RoleDefinitionId,DirectoryScopeId

Write-Host "`n=== Evaluating Group Membership ==="
Get-MgUserTransitiveMemberOf -UserId $user.Id |
    Select-Object Id,DisplayName,@{n="Type";e={$_.AdditionalProperties['@odata.type']}}

Write-Host "`n=== Script Complete ==="
