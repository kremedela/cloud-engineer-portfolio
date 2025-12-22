# Manage External User Accounts in Microsoft Entra ID

## 🎯 Objective
Learn how to manage external (guest) user accounts after they have been invited into your Microsoft Entra ID tenant. This includes editing user properties, assigning roles, revoking access, resetting redemption status, and monitoring guest activity — all common tasks in real enterprise collaboration environments.

## 🧰 Azure Services Used
- Microsoft Entra ID (Azure AD)
- Azure Portal
- Microsoft Graph PowerShell

## 📁 Folder Structure
- **docs/** – full detailed lab steps in plain text  
- **scripts/** – optional automation script for auditing guest users  
- **screenshots/** – screenshot evidence of steps  

## 📝 Prerequisites
- Azure subscription with Global Administrator or User Administrator  
- At least one guest user already invited (from previous labs)  
- Modern web browser  

## 🧪 Lab Steps (Summary)
1. Review guest user properties  
2. Modify guest user settings (roles, group membership, permissions)  
3. Reset or resend invitation redemption  
4. Review sign-in logs and activity  
5. Remove or block guest accounts  
6. Optional: generate a full guest user audit report via PowerShell  

## ✅ Expected Outcome
- Ability to manage all core aspects of external user accounts  
- Understanding of guest lifecycle: invite → use → monitor → revoke  
- Activity and redemption status validated  
- Optional PowerShell automation produces a full audit report  

## 🚀 Optional Automation
Use `/scripts/guest-audit-report.ps1` to generate an audit of all external users, including last sign-in time, status, and group membership.
