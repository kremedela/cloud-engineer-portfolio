
---

## 🛠️ scripts/defender-report-export.ps1

```powershell
# Export Defender XDR Security Reports

Import-Module Microsoft.Graph.Security

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "SecurityAlert.Read.All"
Write-Host "Connected to Microsoft Graph." -ForegroundColor Green

# Get summary of alerts by category
$alerts = Get-MgSecurityAlert -All

$report = $alerts | Group-Object -Property Category | ForEach-Object {
    [PSCustomObject]@{
        Category      = $_.Name
        TotalAlerts   = $_.Count
        HighSeverity  = ($_.Group | Where-Object {$_.Severity -eq "high"}).Count
        MediumSeverity= ($_.Group | Where-Object {$_.Severity -eq "medium"}).Count
        LowSeverity   = ($_.Group | Where-Object {$_.Severity -eq "low"}).Count
    }
}

# Export CSV
$report | Export-Csv -Path "./DefenderXDR_Security_Report.csv" -NoTypeInformation
Write-Host "Defender XDR security report exported successfully." -ForegroundColor Yellow
