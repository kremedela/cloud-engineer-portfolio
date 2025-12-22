# Tenant-Wide MFA Settings

## 🎯 Objective
Plan, implement, and manage tenant-wide multi-factor authentication (MFA) settings to enforce secure sign-ins for users and groups in Microsoft Entra.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- PowerShell / Graph API
- Microsoft 365 (if applicable)
- Identity Governance
- Conditional Access

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
1. Review existing MFA settings.  
2. Configure default MFA registration policies.  
3. Enforce MFA for all users or selected groups.  
4. Configure trusted IPs and conditional access policies if needed.  
5. Test MFA for test users.  
6. Monitor MFA status in reports.

## ✅ Expected Outcome
- Tenant-wide MFA settings configured.  
- Test users required to complete MFA registration.  
- Administrators able to monitor MFA registration and enforcement.

## 🚀 Optional Automation
PowerShell/Graph scripts can be used to:
- Enable MFA for all users  
- Set default MFA registration settings  
- Monitor user MFA status

See `scripts/Configure-TenantMFA.ps1` for sample automation.
