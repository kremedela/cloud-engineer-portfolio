# Connect to Graph API
Connect-MgGraph -Scopes "Directory.ReadWrite.All"
Write-Host "Connected to Microsoft Graph."

# List existing domains
Write-Host "`n=== Existing Domains ==="
Get-MgDomain | Select-Object Id,IsDefault,IsVerified,SupportedServices

# Example: Check status of a specific domain
$domainName = "<your-custom-domain.com>"
$domain = Get-MgDomain -DomainId $domainName -ErrorAction SilentlyContinue

if ($domain) {
    Write-Host "`nStatus for $domainName:"
    $domain | Format-List Id,IsVerified,IsDefault
} else {
    Write-Host "`nDomain not found. Add it in Azure Portal first."
}

# Example: Update UPN for a user
$userUpn = "<testuser@old-domain.com>"
$newUpn  = "<testuser@your-custom-domain.com>"

Update-MgUser -UserId $userUpn -UserPrincipalName $newUpn
Write-Host "UPN updated to $newUpn"

Write-Host "`n=== Script Complete ==="
