# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Application.ReadWrite.All","Directory.ReadWrite.All"

Write-Host "Connected to Microsoft Graph" -ForegroundColor Cyan

# Get Enterprise Application (Service Principal)
$appName = "Your-Enterprise-App-Name"
$sp = Get-MgServicePrincipal | Where-Object { $_.DisplayName -eq $appName }

if ($sp) {
    Write-Host "Application Found: $($sp.DisplayName)"

    Write-Host "`nApp Roles:"
    $sp.AppRoles | ForEach-Object {
        Write-Host " - $($_.DisplayName) (Enabled: $($_.IsEnabled))"
    }
} else {
    Write-Host "Enterprise application not found."
}

Write-Host "`nApp role management verification complete." -ForegroundColor Green
