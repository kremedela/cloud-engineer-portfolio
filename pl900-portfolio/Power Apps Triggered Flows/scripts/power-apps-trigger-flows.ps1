# Install Power Platform PowerShell modules
Install-Module -Name Microsoft.PowerApps.Administration.PowerShell -Force
Install-Module -Name Microsoft.PowerApps.PowerShell -Force

# List flows in an environment
Get-AdminFlow -EnvironmentName "Default-Environment-GUID"

# Export a flow for ALM
Export-Flow -EnvironmentName "Default-Environment-GUID" `
            -FlowName "PA Trigger — Send Notification" `
            -FilePath "C:\PowerPlatform\Flows\PATriggerFlow.zip"

Write-Host "Power Apps triggered flow exported successfully."
