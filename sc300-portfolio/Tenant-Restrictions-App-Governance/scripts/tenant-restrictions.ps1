# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Policy.ReadWrite.ApplicationConfiguration","Application.Read.All"
Write-Host "Connected."

# List all enterprise applications
Write-Host "`n=== Enterprise Applications ==="
Get-MgServicePrincipal | Select-Object DisplayName,AppId,PublisherName

# Example structure for TRv2 allowed apps payload
$allowedApps = @(
    @{ appId = "00000003-0000-0000-c000-000000000000"; justification = "Microsoft Services" },
    @{ appId = "YOUR-APP-ID-HERE"; justification = "Approved enterprise SaaS" }
)

# Display allowed apps (simulation)
Write-Host "`n=== Allowed Apps for TRv2 (Simulated Payload) ==="
$allowedApps | Format-Table appId,justification

Write-Host "`nAutomation complete. Configure TRv2 policies in portal for full enforcement."
