# ---------------------------------------
# SC-300 Tenant and App-Level Settings Demo Setup
# Creates folders, starter files, and placeholder images
# ---------------------------------------

# Project root
$projectRoot = "$PWD\Tenant-and-App-Level-Settings-Demo"

# Folder structure
$folders = @(
    "$projectRoot\docs\screenshots",
    "$projectRoot\configurations",
    "$projectRoot\scripts"
)

# Create folders
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "Created folder: $folder"
    }
}

# Files and content
$files = @{
    "$projectRoot\README.md" = @"
# Tenant and App-Level Settings Demo

## Objective
Demonstrate tenant-level and application-level settings in Azure AD including:
- User assignment
- Single Sign-On (SSO) modes
- Conditional Access policies
- Multi-tenant app registration

## Repo Structure
- `docs/` - Documentation and screenshots
- `configurations/` - JSON/YAML configuration files
- `scripts/` - Deployment scripts

## Skills Demonstrated
- Tenant vs App-level configuration
- Azure AD app settings
- Conditional Access implementation
- Multi-tenant app registration
"@

    "$projectRoot\LICENSE" = "MIT License"

    "$projectRoot\docs\architecture.md" = @"
# Tenant vs Application Level Settings

## Overview
Azure AD settings can be applied at:
- **Tenant Level:** Applies to all applications in the tenant.
- **Application Level:** Specific to a single application.

## Diagram
![Tenant vs App Settings](screenshots/tenant_vs_app_diagram.png)
"@

    "$projectRoot\docs\conditional_access.md" = @"
# Conditional Access Policies Demo

## Objective
Demonstrate a sample policy requiring MFA for external users.

## Example YAML
See `configurations/conditional-access-policy.yaml`

## Screenshot
![Conditional Access](screenshots/conditional_access.png)
"@

    "$projectRoot\configurations\tenant-level-settings.json" = @"
{
  ""TenantSettings"": {
    ""UserAssignmentRequired"": true,
    ""MultiTenant"": true,
    ""DefaultSSOMode"": ""SAML""
  }
}
"@

    "$projectRoot\configurations\app-level-settings.json" = @"
{
  ""AppSettings"": {
    ""UserAssignmentRequired"": false,
    ""SingleSignOnMode"": ""Password"",
    ""RedirectUris"": [""https://myapp.com/signin-oidc""]
  }
}
"@

    "$projectRoot\configurations\conditional-access-policy.yaml" = @"
Name: Require MFA for External Users
Conditions:
  Users:
    Include: AllExternalUsers
  SignInRisk: High
GrantControls:
  RequireMFA: true
State: Enabled
"@

    "$projectRoot\scripts\deploy-settings.ps1" = @"
# PowerShell script to deploy tenant and app-level settings
Connect-AzureAD
\$AppId = '<Your-App-ObjectId>'
Set-AzureADApplication -ObjectId \$AppId -UserAssignmentRequired \$true
Set-AzureADApplication -ObjectId \$AppId -ReplyUrls @('https://myapp.com/signin-oidc')
Write-Host 'Settings deployed successfully!'
"@
}

# Create files
foreach ($file in $files.Keys) {
    $content = $files[$file]
    Set-Content -Path $file -Value $content -Encoding UTF8
    Write-Host "Created file: $file"
}

# Placeholder images (simple PNGs with text)
$images = @{
    "$projectRoot\docs\screenshots\tenant_vs_app_diagram.png" = "Tenant vs App Settings Diagram"
    "$projectRoot\docs\screenshots\app_registration.png" = "App Registration Screenshot"
    "$projectRoot\docs\screenshots\tenant_settings.png" = "Tenant-Level Settings Screenshot"
    "$projectRoot\docs\screenshots\app_settings.png" = "App-Level Settings Screenshot"
    "$projectRoot\docs\screenshots\conditional_access.png" = "Conditional Access Screenshot"
}

# Create simple placeholder images using .NET System.Drawing
Add-Type -AssemblyName System.Drawing

foreach ($imgPath in $images.Keys) {
    $text = $images[$imgPath]

    $bitmap = New-Object System.Drawing.Bitmap 800,400
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.Clear([System.Drawing.Color]::LightGray)

    $font = New-Object System.Drawing.Font "Arial", 24
    $brush = [System.Drawing.Brushes]::Black
    $size = $graphics.MeasureString($text, $font)
    $x = (800 - $size.Width)/2
    $y = (400 - $size.Height)/2
    $graphics.DrawString($text, $font, $brush, $x, $y)

    $bitmap.Save($imgPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $graphics.Dispose()
    $bitmap.Dispose()

    Write-Host "Created placeholder image: $imgPath"
}

Write-Host "`n✅ SC-300 Project setup complete! Your repo is ready at $projectRoot"
