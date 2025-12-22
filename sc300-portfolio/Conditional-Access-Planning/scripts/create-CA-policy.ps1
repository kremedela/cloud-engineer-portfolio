Connect-MgGraph -Scopes "Policy.ReadWrite.ConditionalAccess","Directory.Read.All"
Select-MgProfile beta

$policy = @{
    displayName = "Require MFA for Cloud App Access (Lab Demo)"
    state       = "enabledForReportingButNotEnforced"
    conditions  = @{
        users = @{
            includeUsers = @("user@domain.com")     # Replace with your test user
        }
        applications = @{
            includeApplications = @("Office365")     # Example app
        }
    }
    grantControls = @{
        operator = "AND"
        builtInControls = @("mfa")
    }
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $policy

Write-Host "Conditional Access Lab Policy Created Successfully."
