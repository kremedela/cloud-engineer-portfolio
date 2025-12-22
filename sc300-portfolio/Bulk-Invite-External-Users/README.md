# Bulk Invitation of External Users in Microsoft Entra ID

## 🎯 Objective
Learn how to invite external (guest) users to your Microsoft Entra tenant in bulk using CSV files and PowerShell automation. This simulates real-world enterprise onboarding of partner organizations, contractors, and vendors.

## 🧰 Azure Services Used
- Microsoft Entra ID (Azure AD)
- Azure Portal
- Microsoft Graph PowerShell
- CSV-based bulk operations

## 📁 Folder Structure
- **docs/** – full detailed lab steps in plain text  
- **scripts/** – bulk invitation automation script  
- **screenshots/** – screenshot evidence of steps  

## 📝 Prerequisites
- Azure subscription with Global Administrator or User Administrator  
- CSV file with test external email addresses  
- PowerShell 7+ and Microsoft Graph module installed  
- At least one test mailbox capable of receiving invitations  

## 🧪 Lab Steps (Summary)
1. Prepare a CSV with external guest user email addresses  
2. Upload and process a bulk invitation in Microsoft Entra  
3. Validate the guest accounts in the directory  
4. Confirm invitations were received  
5. Optional: fully automate bulk invitations with PowerShell  

## ✅ Expected Outcome
- A set of external users successfully invited in bulk  
- Guest accounts visible in “Users → Guest Users”  
- Verification that invitations were delivered  
- Automation capable of inviting any number of users programmatically  

## 🚀 Optional Automation
Use `/scripts/bulk-invite.ps1` to automate inviting guests using a CSV input file.
