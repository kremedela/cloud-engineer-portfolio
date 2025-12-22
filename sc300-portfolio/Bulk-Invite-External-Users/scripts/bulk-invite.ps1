# Bulk Guest Invitation Script using Microsoft Graph
# Ensure Microsoft.Graph module is installed:
# Install-Module Microsoft.Graph -Scope CurrentUser

Connect-MgGraph -Scopes "User.ReadWrite.All"
Write-Host "Connected to Microsoft Graph." -ForegroundColor Green

# Path to CSV file containing 'email' column
$csvPath = ".\guests.csv"

$guests = Import-Csv -Path $csvPath

foreach ($guest in $guests) {
    try {
        Write-Host "Inviting: $($guest.email)" -ForegroundColor Cyan
        
        New-MgInvitation `
            -InvitedUserEmailAddress $guest.email `
            -InviteRedirectUrl "https://portal.azure.com" `
            -SendInvitationMessage:$true

        Write-Host "Invitation sent to $($guest.email)" -ForegroundColor Green
    }
    catch {
        Write-Host "Error inviting $($guest.email): $_" -ForegroundColor Red
    }
}

Write-Host "`nBulk invitation process complete." -ForegroundColor Yellow
