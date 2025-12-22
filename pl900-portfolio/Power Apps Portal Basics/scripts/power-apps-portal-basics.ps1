# Install Power Platform CLI (if not installed)
# winget install Microsoft.PowerApps.CLI

# Authenticate to Power Platform
pac auth create --url https://YOUR-ENVIRONMENT.crm.dynamics.com

# List all Power Pages sites
pac paportal list

# Download portal source code (for ALM)
pac paportal download --path ./PortalSource --webSiteName "MM Training Portal"

Write-Host "Portal source code downloaded successfully."
