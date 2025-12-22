# Lab 12 – Troubleshooting Access Denied with Effective Permissions

## 🎯 Objective
Learn how to evaluate Microsoft Entra role assignments and effective permissions to troubleshoot “Access Denied” issues in a secure enterprise environment. This lab teaches real-world troubleshooting for role-based access control (RBAC) and Azure AD permissions.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- PowerShell / Graph API
- Conditional Access
- Microsoft 365 Admin Center

## 📁 Folder Structure
- **docs/** – troubleshooting guides and notes  
- **scripts/** – PowerShell/Graph scripts for permissions evaluation  
- **screenshots/** – proof of configuration and verification  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Test users with different roles and permissions  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Identify the user with access denied issues  
2. Review assigned roles in Microsoft Entra  
3. Evaluate effective permissions using portal and PowerShell  
4. Check for Conditional Access policies that may block access  
5. Resolve misconfigured permissions  
6. Test access after changes  

## ✅ Expected Outcome
- Misconfigured or missing permissions identified  
- Access Denied errors resolved for test users  
- Understanding of effective permissions in Entra ID  
- Ability to troubleshoot future access issues  

## 🚀 Automation (Optional)
Use `/scripts/effective-permissions.ps1` to generate reports of user permissions and role assignments.
