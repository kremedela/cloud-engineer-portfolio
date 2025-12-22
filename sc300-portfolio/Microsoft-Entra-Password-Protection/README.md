# Microsoft Entra Password Protection

## 🎯 Objective
Implement and manage Microsoft Entra Password Protection to reduce weak, compromised, and commonly used passwords across the tenant using banned password lists and smart lockout policies.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- PowerShell / Graph API
- Microsoft 365 (if applicable)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Security Administrator  
- Modern browser  
- Test user accounts created in your tenant

## 🧪 Lab Steps (Summary)
1. Review built-in password protection settings.  
2. Configure custom banned password lists.  
3. Enable and configure smart lockout.  
4. Test password changes with weak/blocked passwords.  
5. Monitor password protection audit logs.

## ✅ Expected Outcome
- Custom password protection rules applied.  
- Weak and banned passwords blocked across the tenant.  
- Smart lockout policy prevents password spray and brute-force attacks.  
- Admins able to track lockout events and password failures.

## 🚀 Optional Automation
PowerShell/Graph scripts can be used to:
- Configure banned password lists  
- Update lockout thresholds  
- Monitor password protection logs  

See `scripts/Configure-PasswordProtection.ps1` for sample automation.
