# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Device.ReadWrite.All"

# List all devices
$allDevices = Get-MgDevice -All
Write-Host "Total devices found: $($allDevices.Count)"

# Identify inactive devices (last logon > 90 days)
$staleDevices = $allDevices | Where-Object { $_.ApproximateLastSignInDateTime -lt (Get-Date).AddDays(-90) }
Write-Host "Stale devices found: $($staleDevices.Count)"

# Optional: Remove stale devices (uncomment to execute)
# foreach ($device in $staleDevices) {
#     Remove-MgDevice -DeviceId $device.Id
#     Write-Host "Removed device: $($device.DisplayName)"
# }

Write-Host "Device cleanup script executed. Manual verification recommended in portal."
