# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Group.ReadWrite.All","Directory.Read.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# Create Dynamic Security Group
$groupParams = @{
    DisplayName     = "Dynamic-IT-Users"
    MailEnabled     = $false
    MailNickname    = "dynamicitusers"
    SecurityEnabled = $true
    GroupTypes      = @("DynamicMembership")
    MembershipRule  = '(user.department -eq "IT")'
    MembershipRuleProcessingState = "On"
}

New-MgGroup @groupParams

Write-Host "Dynamic group created successfully." -ForegroundColor Green
