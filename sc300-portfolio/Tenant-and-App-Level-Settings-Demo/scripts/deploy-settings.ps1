# PowerShell script to deploy tenant and app-level settings
Connect-AzureAD
\ = '<Your-App-ObjectId>'
Set-AzureADApplication -ObjectId \ -UserAssignmentRequired \True
Set-AzureADApplication -ObjectId \ -ReplyUrls @('https://myapp.com/signin-oidc')
Write-Host 'Settings deployed successfully!'
