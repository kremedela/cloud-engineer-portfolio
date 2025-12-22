# Configure and Manage Administrative Units (AUs)

## 🎯 Objective
Learn how to create, configure, and manage Microsoft Entra Administrative Units (AUs), assign admins with scoped roles, and understand when and why AUs should be used. This lab teaches RBAC scoping, delegated administration, and organizational segmentation.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Microsoft Graph PowerShell
- Identity Governance (optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – images validating completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Modern browser  

## 🧪 Lab Steps (Summary)
1. Review what Administrative Units are and when to use them  
2. Create a new Administrative Unit (AU)  
3. Add users and groups to the AU  
4. Assign a scoped administrator role inside the AU  
5. Validate AU-scoped permissions with a test user  
6. Compare global role vs AU-scoped role permissions  

## ✅ Expected Outcome
- Able to create and manage administrative units  
- Able to assign administrators with scoped privileges  
- Understand how AUs limit access and enforce least-privilege principles  
- Test user verifies scoped permissions behave differently from global roles  

## 🚀 Automation (Optional)
Use `/scripts/create-admin-unit.ps1` to automate:  
- Creating an Administrative Unit  
- Adding members  
- Assigning scoped admin roles  
