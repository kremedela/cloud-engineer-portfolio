Write-Host "=== Microsoft Defender for Endpoint Onboarding Verification ===" -ForegroundColor Cyan

# Check Antivirus Status
Write-Host "`n[+] Checking Microsoft Defender AV Status..." -ForegroundColor Yellow
Get-MpComputerStatus | Select-Object AMRunningMode, AntivirusEnabled, RealTimeProtectionEnabled, NISSignatureLastUpdated

# Check Cloud Protection
Write-Host "`n[+] Checking Cloud Protection..." -ForegroundColor Yellow
(Get-MpPreference).MAPSReporting

# Check Signature Versions
Write-Host "`n[+] Updating signatures..." -ForegroundColor Yellow
Update-MpSignature

# Check Sense Service
Write-Host "`n[+] Checking MDE Sense Service..." -ForegroundColor Yellow
sc.exe query sense

# Check Onboarding State (Registry)
Write-Host "`n[+] Checking ATP Onboarding State..." -ForegroundColor Yellow
try {
    $reg = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows Advanced Threat Protection"
    $reg | Select-Object onboardingstate, orgid, sensecmstatus
} catch {
    Write-Host "[-] Onboarding registry key not found!" -ForegroundColor Red
}

# Trigger Quick Scan
Write-Host "`n[+] Triggering a quick scan..." -ForegroundColor Yellow
Start-MpScan -ScanType QuickScan

Write-Host "`n=== Verification Complete ===" -ForegroundColor Green
