# Guest User Audit Script using Microsoft Graph

Import-Module Microsoft.Graph.Users
Import-Module Microsoft.Graph.Reports

Connect-MgGraph -Scopes "User.Read.All","Directory.Read.All"
Write-Host "Connected to Microsoft Graph." -ForegroundColor Green

$guestUsers = Get-MgUser -Filter "userType eq 'Guest'" -All

$report = foreach ($user in $guestUsers) {
    $signIn = Get-MgUserSignInActivity -UserId $user.Id -ErrorAction SilentlyContinue

    [PSCustomObject]@{
        DisplayName     = $user.DisplayName
        Email           = $user.Mail
        UserType        = $user.UserType
        LastSignIn      = $signIn.LastSignInDateTime
        Groups          = (Get-MgUserMemberOf -UserId $user.Id -All | Select-Object -ExpandProperty DisplayName) -join ", "
    }
}

$report | Export-Csv -Path "./GuestUserAuditReport.csv" -NoTypeInformation

Write-Host "`nGuest user audit report generated successfully." -ForegroundColor Yellow
