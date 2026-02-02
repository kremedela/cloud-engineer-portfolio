Connect-ExchangeOnline

New-SafeLinksPolicy `
  -Name "Global Safe Links Policy" `
  -EnableSafeLinksForEmail $true `
  -EnableSafeLinksForOffice $true `
  -EnableSafeLinksForTeams $true

Write-Host "Safe Links policy created."
