# Lab 02 – Manage Built-In and Custom Microsoft Entra Roles

## 🎯 Objective
Learn how to configure, assign, and validate built-in and custom Microsoft Entra roles. This lab teaches you role-based access control (RBAC), least-privilege design, and role-scoping best practices.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- PowerShell / Microsoft Graph API
- Identity Governance (PIM optional)

## 📁 Folder Structure
- **docs/** – detailed walkthroughs, diagrams  
- **scripts/** – PowerShell/Graph scripts  
- **screenshots/** – screenshots validating completion  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Modern web browser  

## 🧪 Lab Steps (Summary)
1. Review built-in Entra roles  
2. Identify role permissions using role details  
3. Assign a built-in role to a test user  
4. Create a custom role with limited permissions  
5. Assign custom role and scope it to a group or administrative unit  
6. Validate effective permissions using a test account  

## ✅ Expected Outcome
- You understand the permissions and use cases of built-in Entra roles  
- You can create and manage custom least-privilege roles  
- You can scope role assignments to users, groups, or administrative units  
- You can verify effective permissions for accuracy and troubleshooting  

## 🚀 Automation (Optional)
Use `/scripts/custom-role-creation.ps1` to automate:  
- Creating a custom least-privilege role  
- Assigning the role to users or groups  
- Viewing role definitions  
