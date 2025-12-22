# External User Management in Microsoft Entra ID

## 🎯 Objective
Learn how to invite external users, manage guest accounts, and configure access in Microsoft Entra ID, simulating real enterprise scenarios where partners or vendors need temporary or controlled access.

## 🧰 Azure Services Used
- Microsoft Entra ID (Azure AD)
- Azure Portal
- PowerShell (optional)
- Microsoft 365 Groups

## 📁 Folder Structure
- **docs/** – full detailed lab steps in plain text  
- **scripts/** – optional automation scripts  
- **screenshots/** – proof of completion  

## 📝 Prerequisites
- Azure subscription with Global Administrator or User Administrator role  
- Test user accounts for invitations  
- Modern web browser  

## 🧪 Lab Steps (Summary)
1. Invite a single external user  
2. Invite external users in bulk via CSV  
3. Assign roles and groups to external users  
4. Validate invitations and access  
5. Optional: automate bulk invitations using PowerShell  

## ✅ Expected Outcome
- Guest users are invited and visible in Azure AD  
- Users are assigned appropriate groups and access roles  
- Invitations are verified  
- Bulk invitation process is automated  

## 🚀 Optional Automation
Use `/scripts/bulk-invite.ps1` to automatically invite multiple guest users using a CSV file.
