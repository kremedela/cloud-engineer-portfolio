# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All","DeviceManagementConfiguration.ReadWrite.All","Policy.ReadWrite.ConditionalAccess"

# Create Zero-Trust security group
$ztGroup = New-MgGroup -DisplayName "ZT-Compliant-Users" -MailEnabled $false -MailNickname "ZTCompliantUsers" -SecurityEnabled $true
Write-Host "Created group: $($ztGroup.DisplayName)"

# Assign test users to the group (replace with actual user IDs)
$users = @("user1@contoso.com","user2@contoso.com")
foreach ($user in $users) {
    Add-MgGroupMember -GroupId $ztGroup.Id -DirectoryObjectId $user
    Write-Host "Added $user to ZT-Compliant-Users"
}

Write-Host "Conditional Access policies and device compliance must be configured in portal."
