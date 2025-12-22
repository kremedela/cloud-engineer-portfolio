# Self-Service Password Reset (SSPR)

## 🎯 Objective
Learn how to configure, deploy, and manage self-service password reset in Microsoft Entra to empower users to securely reset their own passwords and reduce helpdesk load.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- PowerShell / Graph API
- Microsoft 365 (if applicable)
- Identity Governance

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Modern browser  
- Test users created in your tenant

## 🧪 Lab Steps (Summary)
1. Review SSPR default settings.  
2. Enable SSPR for users or groups.  
3. Configure authentication methods for password reset.  
4. Set registration and notification policies.  
5. Test SSPR using a test user account.  
6. Monitor SSPR usage and reset logs.

## ✅ Expected Outcome
- SSPR enabled and configured for targeted users or groups.  
- Users able to reset their passwords without administrator intervention.  
- Administrators can monitor and manage reset activities.

## 🚀 Optional Automation
PowerShell/Graph scripts can be used to:
- Enable SSPR for users/groups  
- Configure authentication methods  
- Monitor reset activity

See `scripts/Configure-SSPR.ps1` for sample automation.
