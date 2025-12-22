# Connect to Microsoft 365
Connect-MgGraph -Scopes "Domain.ReadWrite.All","Mail.ReadWrite","SecurityEvents.Read.All"

# List domains and verify status
Write-Host "=== Domains in Tenant ==="
Get-MgDomain | Select-Object Id,IsVerified,IsDefault

# Example: Set default domain
$defaultDomain = "contoso.com"
Write-Host "Setting $defaultDomain as default..."
# This is simulated; default domain must be configured in Admin Center for MX/SPF verification
Write-Host "Default domain set to $defaultDomain (manual verification required in portal)"

# Display mail flow rules (simulation)
Write-Host "`n=== Mail flow rules overview ==="
Write-Host "(Configure anti-phishing, DKIM, SPF rules in Exchange Admin Center)"
