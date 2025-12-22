# Disable Accounts & Revoke User Sessions

## 🎯 Objective
Learn how to disable user accounts and revoke active sessions in Microsoft Entra to enforce security policies, prevent unauthorized access, and manage user lifecycle events.

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
- Test users created in your tenant  
- Modern browser

## 🧪 Lab Steps (Summary)
1. Identify users to disable or revoke sessions.  
2. Disable user accounts in the portal.  
3. Revoke active sessions for selected users.  
4. Monitor session revocation and account status.  
5. Test login attempts with disabled accounts.  

## ✅ Expected Outcome
- Targeted user accounts disabled successfully.  
- Active sessions revoked and users unable to log in.  
- Administrators can monitor account and session status.

## 🚀 Optional Automation
PowerShell/Graph scripts can be used to:
- Disable multiple accounts at once  
- Revoke all active sessions for users  
- Monitor account status and login attempts

See `scripts/Disable-RevokeUsers.ps1` for sample automation.
