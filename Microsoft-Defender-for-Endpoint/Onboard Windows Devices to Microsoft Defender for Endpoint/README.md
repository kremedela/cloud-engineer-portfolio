# Onboard Windows Devices to Microsoft Defender for Endpoint

## 🎯 Objective
Learn how to onboard Windows devices to Microsoft Defender for Endpoint (MDE) using multiple onboarding methods. This lab simulates a real enterprise scenario where devices must be brought under management, validated for security compliance, and confirmed as active in the Defender portal.

## 🧰 Tools & Services Used
- Microsoft Defender for Endpoint
- Microsoft 365 Defender Portal
- Windows Security App
- PowerShell 7+
- Microsoft Monitoring Agent (if using legacy onboarding)
- Group Policy / Local Script / Manual Package

## 📁 Folder Structure
- **docs/** – full detailed lab steps  
- **scripts/** – onboarding verification & troubleshooting scripts  
- **screenshots/** – proof of onboarding  

## 📝 Prerequisites
- Windows 10/11 Enterprise test machine (physical or VM)
- Access to Microsoft 365 Defender Portal  
- Security Administrator or Global Administrator role  
- Internet access on device  

## 🧪 Lab Steps (Summary)
1. Download onboarding package from the Defender Portal  
2. Run onboarding script on the Windows test machine  
3. Validate onboarding status using PowerShell and Windows Security  
4. Confirm device check-in and sensor activation in the Defender Portal  
5. Trigger initial scans and cloud reporting  

## ✅ Expected Outcome
- Device appears in Microsoft 365 Defender → Devices inventory  
- Sensor status = *Active*  
- Device successfully uploads signals, alerts, and logs  
- Verification script confirms onboarding with no errors
