# ============================================================
# OPTIONAL SCRIPT: List Connectors & Validate Authentication
# ============================================================

# Log into Power Platform
pac auth create --url https://YOUR-ENVIRONMENT.crm.dynamics.com

# List all connectors available to environment
pac connectors list

# List all connections for current user
pac connections list

# Validate connection status
pac connections list | Select-String "Connected"

Write-Host "Connector audit complete."

