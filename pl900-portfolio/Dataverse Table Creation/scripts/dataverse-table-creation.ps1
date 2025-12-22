# Optional: Create Dataverse table via Power Platform CLI

# Log in to Power Platform
pac auth create --cloud Production --tenant "<tenant-id>" --applicationId "<app-id>" --clientSecret "<secret>"

# Create Dataverse Table Definition JSON
$table = @{
  SchemaName     = "mm_ProjectTask"
  DisplayName    = "Project Tasks"
  PluralName     = "Project Tasks"
  Description    = "Tasks related to project items"
  PrimaryField   = @{
      DisplayName = "Task Name"
      Description = "Name of the task"
  }
} | ConvertTo-Json -Depth 10

Set-Content -Path projecttask-table.json -Value $table

# Create table
pac dataverse create-table --json projecttask-table.json

Write-Host "Dataverse table 'Project Tasks' created successfully."
