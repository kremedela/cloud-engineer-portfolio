# Lab 04 – Evaluate Effective Permissions for Microsoft Entra Roles

## 🎯 Objective
Learn how to evaluate effective permissions for built-in and custom Microsoft Entra roles, understand how role assignments interact with scope and group membership, and troubleshoot permission inconsistencies (e.g., "access denied" scenarios).

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Microsoft Graph PowerShell
- Identity Governance (PIM optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images proving completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Modern browser  
- A test user (created in Lab 1 or Lab 2)

## 🧪 Lab Steps (Summary)
1. Inspect built-in role permissions  
2. Compare assigned roles for a user  
3. Evaluate effective permissions using the portal  
4. Test role behavior using a restricted-scoped admin  
5. Use Graph or PowerShell to list all effective permissions  
6. Validate and troubleshoot an "Access Denied" scenario  

## ✅ Expected Outcome
- You understand how to determine what permissions a user *actually* has  
- You know how role scopes influence effective access  
- You can verify role inheritance through group assignment  
- You can troubleshoot access problems by checking effective permissions  

## 🚀 Automation (Optional)
Use `/scripts/effective-permissions.ps1` to automate:  
- Listing a user's assigned roles  
- Retrieving role definitions  
- Evaluating scoped vs global permissions
