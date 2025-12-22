# Lab 13 – Granular Access Control for HR Systems

## 🎯 Objective
Learn how to implement role-based and attribute-based access control in Microsoft Entra to restrict access to sensitive HR systems while allowing appropriate access to authorized users.

## 🧰 Azure Services Used
- Microsoft Entra ID
- Azure Portal
- Conditional Access
- Administrative Units
- PowerShell / Graph API
- Microsoft 365 (if applicable)

## 📁 Folder Structure
- **docs/** – walkthrough diagrams, policies, and reports  
- **scripts/** – PowerShell/Graph scripts for access assignments  
- **screenshots/** – proof of policy and access control verification  

## 📝 Prerequisites
- Azure account  
- Global Administrator or Privileged Role Administrator  
- Test users representing HR and non-HR staff  
- HR system or app registered in Microsoft Entra  

## 🧪 Lab Steps (Summary)
1. Create an Administrative Unit for HR  
2. Assign HR users to the administrative unit  
3. Create custom roles for HR system access  
4. Assign roles scoped to the administrative unit  
5. Apply Conditional Access policies for HR applications  
6. Test access for HR and non-HR users  

## ✅ Expected Outcome
- HR users can access HR systems according to their roles  
- Non-HR users are blocked from sensitive resources  
- Administrative Units and custom roles enforce granular access  
- Conditional Access policies enhance security  
- For this lab you want o have a HR app created, this will be created later in Az-204 portfolio

## 🚀 Automation (Optional)
Use `/scripts/hr-access-control.ps1` to create administrative units, assign users, and apply role assignments automatically.
