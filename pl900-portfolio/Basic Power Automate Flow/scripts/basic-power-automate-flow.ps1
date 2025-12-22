# Optional: Create SharePoint List for Flow Trigger
# Requires PnP.PowerShell module

Connect-PnPOnline -Url "https://yourtenant.sharepoint.com/sites/AutomationLab"

New-PnPList -Title "AutomationTriggerList" -Template GenericList

Add-PnPField -List "AutomationTriggerList" -DisplayName "Description" -InternalName "Description" -Type Text

Write-Host "SharePoint list created successfully."
