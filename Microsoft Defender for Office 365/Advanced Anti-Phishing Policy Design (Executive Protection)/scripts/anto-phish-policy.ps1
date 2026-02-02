Connect-ExchangeOnline

New-AntiPhishPolicy `
  -Name "Executive Anti-Phishing Policy" `
  -EnableTargetedUserProtection $true `
  -EnableOrganizationDomainsProtection $true `
  -EnableMailboxIntelligence $true

Write-Host "Executive anti-phishing policy created."
