# ================================================
# OPTIONAL SCRIPT: Export & Inspect Approval Flow
# ================================================

# Authenticate to Power Platform
pac auth create --url https://YOUR-ENVIRONMENT.crm.dynamics.com

# List all flows
pac flow list

# Export approval workflow
pac flow export --path ./approval-workflow.zip --flow-id YOUR_FLOW_ID

Write-Host "Approval flow exported successfully."
