# Connect to Graph
Connect-MgGraph -Scopes "Organization.ReadWrite.All"
Write-Host "Connected to Microsoft Graph."

# Define branding asset paths
$bannerLogo  = "C:\Branding\banner-logo.png"
$background  = "C:\Branding\background.png"
$squareLogo  = "C:\Branding\square-logo.png"

# Create branding object
$brandingParams = @{
    BackgroundColor = "#1a1a1a"
    SignInPageText  = "Welcome to the Contoso Identity Portal."
    SquareLogo      = [System.IO.File]::ReadAllBytes($squareLogo)
    BannerLogo      = [System.IO.File]::ReadAllBytes($bannerLogo)
    BackgroundImage = [System.IO.File]::ReadAllBytes($background)
}

# Apply branding
Update-MgOrganizationBrandingLocalization `
    -OrganizationId "<tenant-id>" `
    -BodyParameter $brandingParams

Write-Host "Branding applied successfully."
