# Windows Hello for Business Deployment

## 🎯 Objective
Plan, implement, and manage Windows Hello for Business (WHfB) to provide secure, passwordless authentication for users in your Microsoft Entra tenant.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Intune / Endpoint Manager
- PowerShell / Graph API
- Conditional Access

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Intune Administrator  
- Test devices enrolled in Intune  
- Test users created in your tenant

## 🧪 Lab Steps (Summary)
1. Review Windows Hello for Business requirements.  
2. Configure WHfB authentication methods.  
3. Deploy WHfB policies via Intune.  
4. Assign WHfB policies to users or groups.  
5. Test WHfB login on a device.  
6. Monitor deployment status and troubleshoot issues.

## ✅ Expected Outcome
- WHfB configured for passwordless authentication.  
- Policies deployed successfully to test users/devices.  
- Users able to authenticate using WHfB.  

## 🚀 Optional Automation
PowerShell/Graph scripts can be used to:
- Configure WHfB policies  
- Assign policies to groups  
- Monitor deployment status

See `scripts/Deploy-WHFb.ps1` for sample automation.
