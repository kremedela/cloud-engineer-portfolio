# Export Microsoft Defender XDR Alerts using Microsoft Graph

Import-Module Microsoft.Graph.Security

$scopes = @(
    "SecurityAlert.Read.All"
)

Connect-MgGraph -Scopes $scopes
Write-Host "Connected to Microsoft Graph." -ForegroundColor Green

$alerts = Get-MgSecurityAlert -All

$report = foreach ($alert in $alerts) {
    [PSCustomObject]@{
        AlertID      = $alert.Id
        Title        = $alert.Title
        Severity     = $alert.Severity
        Status       = $alert.Status
        Category     = $alert.Category
        CreatedDate  = $alert.CreatedDateTime
        Service      = $alert.ServiceSource
    }
}

$report | Export-Csv -Path "./DefenderXDR_Alert_Report.csv" -NoTypeInformation

Write-Host "Defender XDR alert report exported successfully." -ForegroundColor Yellow
