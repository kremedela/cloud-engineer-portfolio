# Optional Script: Create a Dataverse Table for Canvas App Demo
# Run in PowerShell 7 with Microsoft.PowerApps.Administration.PowerShell module

Add-PowerAppsAccount

New-AdminPowerAppEnvironment -DisplayName "CanvasAppLabEnv" -EnvironmentSku "Sandbox"

# Create Dataverse Table
$schema = @{
    DisplayName = "LabContacts"
    PluralName  = "Lab Contacts"
    Description = "Contacts table for Canvas App Lab"
    Name        = "mm_labcontacts"
}

New-AdminPowerAppsDataverseTable @schema
