# =============================================
# OPTIONAL: Automate Dataverse RBAC Setup
# =============================================

# Login to Power Platform
pac auth create --url https://YOURENV.crm.dynamics.com

# Create Business Unit
$buName = "MM-Operations"
pac admin create-bu --name $buName

# Create New Security Role Template File
$roleFile = "MM-Operations-Analyst-role.json"

@"
{
  "name": "MM Operations Analyst",
  "description": "Role for Operations Analysts with BU-scoped access",
  "privileges": {
    "incidenttracking": {
      "read": "businessunit",
      "write": "businessunit",
      "append": "businessunit",
      "appendTo": "businessunit"
    }
  }
}
"@ | Out-File $roleFile

# Import role
pac security create-role --file $roleFile

# Assign role to a user
$UserEmail = "operations.user@domain.com"
pac security assign-role --user $UserEmail --role "MM Operations Analyst"

# Output confirmation
Write-Host "RBAC setup complete for Dataverse!"
