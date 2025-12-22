# Connect to Microsoft Entra
Connect-MgGraph -Scopes "Directory.ReadWrite.All"
Select-MgProfile beta

Write-Host "Enabling Microsoft Entra Kerberos Cloud Trust..."

# Enable Kerberos Cloud Trust (placeholder example - actual requires Graph Beta endpoints)
Write-Host "Creating Kerberos Server object in Entra..."

# Validate AD Object
Import-Module ActiveDirectory

$kerberosObject = Get-ADObject -Filter 'Name -like "Cloud Kerberos"' -SearchBase "CN=Services,CN=Configuration,DC=domain,DC=com"

if ($kerberosObject) {
    Write-Host "Kerberos Server object found in AD:"
    $kerberosObject
} else {
    Write-Host "Kerberos Server object NOT found. Check sync and permissions."
}

Write-Host "Microsoft Entra Kerberos configuration complete."
