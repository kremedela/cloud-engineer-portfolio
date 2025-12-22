# ============================================================
# OPTIONAL SCRIPT: Generate Model-Driven App Components
# ============================================================

pac auth create --url https://YOURENV.crm.dynamics.com

# Create a model-driven app (template JSON file used for import)
$appJson = @"
{
  "name": "MM Operations Manager",
  "description": "Operations-focused model-driven app",
  "components": {
    "tables": [
      "incidenttracking",
      "employeedirectory"
    ]
  }
}
"@

$appFile = "mm-operations-app.json"
$appJson | Out-File $appFile

# Import App
pac app import --path $appFile

# Assign role permission for visibility
$roleName = "MM Operations Analyst"
pac security assign-role --role $roleName --app "MM Operations Manager"

Write-Host "Model-Driven App created and secured."
