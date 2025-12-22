<#
.SYNOPSIS
Automates Microsoft Entra tenant configuration:
- Retrieves tenant details
- Configures user settings and group settings
- Enforces device policies

.REQUIREMENTS
- Microsoft Graph PowerShell SDK
    Install-Module Microsoft.Graph -Scope AllUsers
- Global Administrator permissions
#>

Write-Host "=== Microsoft Entra Tenant Automation Script ===" -ForegroundColor Cyan

# Connect to Microsoft Graph
Write-Host "Connecting to Microsoft Graph..."
Connect-MgGraph -Scopes "Directory.ReadWrite.All","Policy.ReadWrite.DeviceConfiguration","User.ReadWrite.All" -NoWelcome

Write-Host "Connected successfully!" -ForegroundColor Green


# -----------------------------------------------------------
# 1) VIEW TENANT DETAILS
# -----------------------------------------------------------

Write-Host "`n=== Retrieving Tenant Details ==="

$tenant = Get-MgOrganization

Write-Host "Tenant Name: $($tenant.DisplayName)"
Write-Host "Tenant ID:   $($tenant.Id)"
Write-Host "Default Domain: $($tenant.VerifiedDomains[0].Name)"
Write-Host "Tenant Country/Region: $($tenant.CountryLetterCode)"


# -----------------------------------------------------------
# 2) CONFIGURE USER SETTINGS
# -----------------------------------------------------------

Write-Host "`n=== Configuring User Settings ==="

# Example: Enable User Self-Service Password Reset (SSPR)
# Setting the policy to allow SSPR for all users
$ssprBody = @{
    "isEnabled" = $true
}

try {
    Update-MgPolicyAuthenticationMethodPolicy -BodyParameter $ssprBody
    Write-Host "SSPR enabled successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to configure SSPR." -ForegroundColor Red
}

# Example: Allow all users to register applications
$appRegSettings = @{
    "usersCanRegisterApps" = $true
}

try {
    Update-MgPolicyAuthorizationPolicy -AuthorizationPolicyId "authorizationPolicy" -BodyParameter $appRegSettings
    Write-Host "User app registration settings updated." -ForegroundColor Green
}
catch {
    Write-Host "Failed to update app registration settings." -ForegroundColor Red
}


# -----------------------------------------------------------
# 3) CONFIGURE GROUP SETTINGS
# -----------------------------------------------------------

Write-Host "`n=== Configuring Group Settings ==="

# Example: Set naming policy prefix
$namingPolicySettings = @{
    "directorySettingValues" = @(
        @{
            "name"  = "PrefixSuffixNamingRequirement"
            "value" = "CORP-[GroupName]"
        }
    )
}

try {
    # Create new directory setting and apply
    $template = Get-MgDirectorySettingTemplate | Where-Object {$_.DisplayName -eq "Group.Unified"}
    New-MgDirectorySetting -TemplateId $template.Id -BodyParameter $namingPolicySettings
    Write-Host "Group naming policy applied." -ForegroundColor Green
}
catch {
    Write-Host "Failed to set group naming policy (may already exist)." -ForegroundColor Yellow
}


# -----------------------------------------------------------
# 4) CONFIGURE DEVICE POLICIES
# -----------------------------------------------------------

Write-Host "`n=== Applying Device Policies ==="

# Example device policy enforcement:
$deviceSettings = @{
    "deviceTrustType"                        = "AzureAD"
    "localAdministratorSettings"              = @{ "isPrivilegeEnabled" = $false }
    "maximumNumberOfDevicesPerUser"          = 5
    "requireMultiFactorAuthToJoin"           = $true
}

try {
    Update-MgPolicyDeviceRegistrationPolicy -BodyParameter $deviceSettings
    Write-Host "Device policies applied successfully." -ForegroundColor Green
}
catch {
    Write-Host "Failed to apply device policies." -ForegroundColor Red
}


# -----------------------------------------------------------
# DONE
# -----------------------------------------------------------

Write-Host "`n=== Completed Tenant Configuration ===" -ForegroundColor Cyan
Disconnect-MgGraph
