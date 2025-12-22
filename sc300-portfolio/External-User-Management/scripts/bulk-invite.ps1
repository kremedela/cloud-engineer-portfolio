# Bulk invite guest users from CSV
Connect-AzureAD

$csvPath = "C:\Path\To\GuestUsers.csv"

$guests = Import-Csv $csvPath

foreach ($guest in $guests) {
    New-AzureADMSInvitation -InvitedUserEmailAddress $guest.UserPrincipalName `
                            -DisplayName $guest.DisplayName `
                            -SendInvitationMessage $true
}
Write-Host "Guest user invitations sent successfully."
