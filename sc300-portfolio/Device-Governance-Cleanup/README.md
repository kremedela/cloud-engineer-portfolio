# Lab 18 – Device Governance and Cleanup

## 🎯 Objective
Learn how to manage, govern, and clean up devices in Microsoft Entra ID to ensure security, compliance, and reduce unmanaged or stale devices.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Device Compliance Policies
- Conditional Access
- PowerShell / Graph API

## 📁 Folder Structure
- **docs/** – diagrams, policy notes, device inventory, cleanup plan  
- **scripts/** – PowerShell scripts to identify and remove stale devices  
- **screenshots/** – proof of device governance actions  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Intune Administrator  
- Test devices registered in Azure AD  

## 🧪 Lab Steps (Summary)
1. Review existing devices in the tenant  
2. Identify inactive, stale, or non-compliant devices  
3. Apply governance policies to restrict access  
4. Remove or retire devices as part of cleanup  
5. Monitor and validate device compliance  

## ✅ Expected Outcome
- Devices governed according to compliance and security policies  
- Stale or unmanaged devices removed from Azure AD  
- Conditional Access and device policies enforced  
- Documentation of device governance actions  

## 🚀 Automation (Optional)
Use `/scripts/device-cleanup.ps1` to identify inactive devices and automate removal or retirement.
