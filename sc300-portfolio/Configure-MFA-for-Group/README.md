# Configure MFA for Group in Microsoft Entra ID

## 🎯 Objective
Learn how to create a dynamic security group and enforce Multi-Factor Authentication (MFA) for a department in Microsoft Entra ID, simulating enterprise security best practices.

## 🧰 Azure Services Used
- Microsoft Entra ID (Azure AD)
- Conditional Access
- Azure Portal
- PowerShell (optional)

## 📁 Folder Structure
- **docs/** – full detailed lab steps in plain text  
- **scripts/** – optional automation scripts  
- **screenshots/** – proof of completion  

## 📝 Prerequisites
- Azure subscription with Global Administrator access  
- Test user accounts in Azure AD with department attributes set  
- Modern web browser  

## 🧪 Lab Steps (Summary)
1. Sign in to Azure Portal  
2. Create a dynamic security group based on department  
3. Configure Conditional Access policy to enforce MFA  
4. Test MFA for group members  
5. Optional: automate group creation with PowerShell  

## ✅ Expected Outcome
- Dynamic group created for department members  
- MFA enforced for all users in the group  
- Users prompted to register and complete MFA  
- Optional automation with PowerShell  

## 🚀 Optional Automation
Use `/scripts/Create-DynamicGroup.ps1` to automatically create the dynamic security group and membership rule.
