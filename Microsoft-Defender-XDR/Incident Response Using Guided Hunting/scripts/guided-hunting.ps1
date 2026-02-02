# Guided Hunting Incident Export Script
# Requires Microsoft.Graph.Security module

Import-Module Microsoft.Graph.Security

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "SecurityIncident.Read.All"
Write-Host "Connected to Microsoft Graph." -ForegroundColor Green

# Get all active incidents
$incidents = Get-MgSecurityIncident -Filter "status eq 'active'" -All

$report = foreach ($incident in $incidents) {
    [PSCustomObject]@{
        IncidentID      = $incident.Id
        Title           = $incident.Title
        Severity        = $incident.Severity
        Status          = $incident.Status
        CorrelatedAlerts= ($incident.RelatedAlertIds -join ", ")
        Entities        = ($incident.AffectedEntities | ForEach-Object { $_.Name }) -join ", "
        CreatedDate     = $incident.CreatedDateTime
        LastUpdated     = $incident.LastModifiedDateTime
    }
}

# Export to CSV
$report | Export-Csv -Path "./GuidedHunting_Incident_Report.csv" -NoTypeInformation

Write-Host "Incident report exported successfully." -ForegroundColor Yellow
