# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All","AuditLog.Read.All"

$users = Import-Csv ".\users.csv"

foreach ($user in $users) {
    $u = Get-MgUser -UserId $user.UserPrincipalName
    Write-Host "$($u.UserPrincipalName) | Dept: $($u.Department) | Title: $($u.JobTitle)"
}

Write-Host "`nVerification complete." -ForegroundColor Green
