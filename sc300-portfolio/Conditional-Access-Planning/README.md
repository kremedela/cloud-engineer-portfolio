# Implement Conditional Access Policy Assignments

## 🎯 Objective
Learn how to create and assign Conditional Access (CA) policies to specific users, groups, and cloud applications using Microsoft Entra ID. This lab teaches scoping, targeting, and enabling CA policies safely using report-only mode.

## 🧰 Azure Services Used
- Microsoft Entra ID  
- Conditional Access  
- Azure Portal  
- Identity Protection  
- PowerShell / Graph API  

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Azure account  
- Conditional Access Administrator or Global Administrator  
- Test users or test groups  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Create a new Conditional Access policy.  
2. Assign the policy to a user or group.  
3. Target selected cloud apps.  
4. Enable conditions (location, device, platform).  
5. Apply grant controls (such as MFA).  
6. Enable the policy in Report-only mode.  
7. Validate assignment using the What-If tool.

## ✅ Expected Outcome
- A fully configured Conditional Access policy.  
- Proper scoping to specific users/groups and cloud apps.  
- Policy validated safely using report-only mode.

## 🚀 Optional Automation
PowerShell scripts to create CA policies through Graph API are included in `/scripts`.
