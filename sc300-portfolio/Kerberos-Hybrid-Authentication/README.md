# Enable Microsoft Entra Kerberos Authentication for Hybrid Identities

## 🎯 Objective
Learn how to enable and configure Microsoft Entra Kerberos for hybrid identities to support passwordless authentication, Windows Hello for Business, and seamless SSO in hybrid environments.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Active Directory Domain Services (on-prem)
- Azure AD Connect / Cloud Sync
- PowerShell / Graph API
- Windows Hello for Business (optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Hybrid environment (Entra + on-prem AD)  
- Azure AD Connect or Cloud Sync configured  
- Domain-joined Windows 10/11 test device  
- Global Administrator + Domain Admin rights  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Verify hybrid identity sync configuration.  
2. Enable Microsoft Entra Kerberos in the Azure Portal.  
3. Configure on-prem AD for cloud Kerberos trust.  
4. Validate Kerberos server objects in Active Directory.  
5. Test passwordless authentication on a domain-joined device.  
6. Validate authentication using sign-in logs.

## ✅ Expected Outcome
- Entra Kerberos cloud trust enabled.  
- On-prem AD configured with cloud Kerberos trust objects.  
- Domain-joined device able to authenticate without passwords.  
- Sign-ins visible using Kerberos Cloud Trust.

## 🚀 Optional Automation
PowerShell can automate:
- Verification of Kerberos server objects  
- Creation of required AD objects  
- Validation of hybrid identit
