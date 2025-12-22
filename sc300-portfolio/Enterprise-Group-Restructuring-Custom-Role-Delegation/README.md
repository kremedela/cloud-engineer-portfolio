# Lab 08 – Enterprise Group Restructuring with Custom Role Delegation

## 🎯 Objective
Learn how to restructure enterprise groups using a least-privilege governance model, create custom roles to delegate group management tasks, and assign those roles to specific business units without granting excessive permissions.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Microsoft Graph PowerShell
- Administrative Units (AUs)
- Identity Governance (optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs & diagrams  
- **scripts/** – custom RBAC role creation & assignment scripts  
- **screenshots/** – images verifying your actions  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Existing test users and groups  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Review existing enterprise group structure  
2. Build a new standardized group architecture (Security, M365, Dynamic, Departmental)  
3. Create an Administrative Unit for delegated management  
4. Create a custom “Group Lifecycle Manager” role  
5. Assign the role scoped to the AU  
6. Validate permissions using a delegated admin account  

## ✅ Expected Outcome
- A redesigned, clean group structure  
- Custom least-privilege role created and scoped to an AU  
- Delegated admin able to manage only approved groups  
- Demonstrated understanding of enterprise RBAC delegation  

## 🚀 Automation (Optional)
Use `/scripts/create-custom-delegated-role.ps1` to automate custom role creation and assignment.
