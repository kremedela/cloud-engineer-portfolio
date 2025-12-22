# Connect to Azure AD
Connect-AzureAD

# Create dynamic security group for MFA
New-AzureADMSGroup -DisplayName "Finance-MFA" `
    -Description "Finance department MFA enforced" `
    -GroupTypes "DynamicMembership" `
    -MailEnabled $false `
    -SecurityEnabled $true `
    -MembershipRule '(user.department -eq "Finance")' `
    -MembershipRuleProcessingState "On"

Write-Host "Dynamic MFA group created successfully."
